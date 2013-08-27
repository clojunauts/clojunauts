(ns clojunauts.database
  (:require [environ.core :refer [env]]))

(def db
  {:classname "org.postgis.DriverWrapper"
   :subprotocol "postgresql"
   :user (env :clojunauts-database-db-user)
   :password (env :clojunauts-database-db-password)
   :subname (str (when-let [protocol (env :clojunauts-database-db-protocol)]
                   (str protocol ":"))
                 "//"
                 (env :clojunauts-database-db-host)
                 ":" (env :clojunauts-database-db-port)
                 "/" (env :clojunauts-database-db-name))})
