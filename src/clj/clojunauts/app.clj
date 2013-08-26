(ns clojunauts.app
  (:require
   [clojunauts.core :as system]
   [environ.core :refer [env]])
  (:gen-class))

(defn boot [opts]
  (let [app (system/app opts)]
    (system/start app)))

(defn -main [& args]
  (let [host (env :host)
        port (env :port)
        opts {:host (or host "localhost")
              :port (if port (Integer/parseInt port) 8080)
              :join? false}]
    (boot opts)))
