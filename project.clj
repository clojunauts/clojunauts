(defproject clojunauts/clojunauts "0.1.0-SNAPSHOT"
  :description "Nothing yet."

  :url "http://www.clojunauts.com/"

  :min-lein-version "2.0.0"

  :dependencies [[org.clojure/clojure "1.5.1"]
                 [ring/ring-core "1.1.8"]
                 [ring/ring-jetty-adapter "1.1.8"]]

  :profiles {:dev {:dependencies [[org.clojure/tools.namespace "0.2.4"]
                                  [clj-http "0.7.6"]]
                   :source-paths ["dev"]}}

  :source-paths ["src/clj"]

  :uberjar-name "clojunauts-standalone.jar"
  :main clojurians.app

  :aot :all)
