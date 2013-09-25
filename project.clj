(defproject clojunauts/clojunauts "0.1.0-SNAPSHOT"
  :description "Nothing yet."

  :url "http://www.clojunauts.com/"

  :min-lein-version "2.0.0"

  :dependencies [[org.clojure/clojure "1.5.1"]
                 [ring/ring-core "1.1.8"]
                 [ring/ring-jetty-adapter "1.1.8"]
                 [korma "0.3.0-RC5"]
                 [clojunauts/postgresql "9.2-1003.jdbc4"]
                 [clojunauts/postgis-jdbc "2.1.0SVN"]
                 [migratus "0.6.0"]
                 [environ "0.4.0"]]

  :plugins [[migratus-lein "0.1.0"]]

  :profiles {:dev {:dependencies [[org.clojure/tools.namespace "0.2.4"]
                                  [clj-http "0.7.6"]]
                   :source-paths ["dev"]}}

  :migratus {:store :database
             :migration-dir "migrations"
             :db {:classname "org.postgis.DriverWrapper"
                  :subprotocol "postgresql"
                  :subname
                  ~(str
                    "//"
                    (get (System/getenv) "CLOJUNAUTS_DB_HOST" "localhost")
                    ":"
                    (get (System/getenv) "CLOJUNAUTS_DB_PORT" "5432")
                    "/"
                    (get (System/getenv) "CLOJUNAUTS_DB_NAME" "clojunauts"))
                  :user (get (System/getenv) "CLOJUNAUTS_DB_USER" "clojunauts")
                  :password (get (System/getenv) "CLOJUNAUTS_DB_PASSWORD" "")}}

  :source-paths ["src/clj"]

  :uberjar-name "clojunauts-standalone.jar"
  :main clojunauts.app

  :aot :all)
