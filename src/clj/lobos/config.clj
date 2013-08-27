(ns lobos.config
  (:require
   [environ.core :refer (env)]))

(defonce db
  {:classname "org.postgis.DriverWrapper"
   :subprotocol "postgresql"
   :user (or (env :clojunauts-database-db-user) "test")
   :password (or (env :clojunauts-database-db-password) "test")
   :subname (str (when-let [protocol (env :clojunauts-database-db-protocol)]
                   (str protocol ":"))
                 "//"
                 (or (env :clojunauts-database-db-host)
                     "localhost")
                 ":" (or (env :clojunauts-database-db-port)
                         5432)
                 "/" (or (env :clojunauts-database-db-name)
                         "clojunauts_test"))})
