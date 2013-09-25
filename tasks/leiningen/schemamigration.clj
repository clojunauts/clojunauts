(ns leiningen.schemamigration
  (:require
   [clojure.java.io :refer [writer]]
   [migratus.database :refer [find-migration-dir]]
   [leiningen.core.eval :refer [eval-in-project]]))


(defn schemamigration
  "Create a schemamigration after name."
  [project name]
  (let [dir (with-out-str
              (eval-in-project
               project
               `(print
                 (str (find-migration-dir
                       ~(-> project :migratus :migration-dir))))
               '(use 'migratus.database)))
        prefix (str
                dir "/"
                (.format
                 (java.text.SimpleDateFormat. "yyyyMMddHHmmss")
                 (java.util.Date.))
                "-" name ".")
        up (str prefix "up.sql")
        down (str prefix "down.sql")]
    (with-open [f (writer up)]
      (.write f ""))
    (with-open [f (writer down)]
      (.write f ""))
    (println "Created:")
    (println "  +" up)
    (println "  +" down)
    (flush)))
