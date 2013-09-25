(ns clojunauts.database
  (:require [environ.core :refer [env]]
            [korma.db :refer [defdb]]))


(defn postgis
  "Create a database specification for a PostGIS enabled
database. Opts should include keys for :db, :user, and :password. You
can also optionally set host and port."  [{:keys [host port db
make-pool?]
    :or {host "localhost", port 5432, db "", make-pool? true}
    :as opts}]
  (merge {:classname "org.postgis.DriverWrapper" ; must be in classpath
          :subprotocol "postgresql"
          :subname (str "//" host ":" port "/" db)
          :make-pool? make-pool?}
         opts))

(defdb default
  (postgis {:db (:clojunauts-db-name env "clojunauts")
            :user (:clojunauts-db-user env "clojunauts")
            :password (:clojunauts-db-password env "")
            ;; optional keys
            :host (:clojunauts-db-host env "localhost")
            :port (:clojunauts-db-port env 5432)
            :make-pool? (= (:clojunauts-db-pool env "true") "true")}))
