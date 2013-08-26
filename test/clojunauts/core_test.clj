(ns clojunauts.core-test
  (:require [clojure.test :refer :all]
            [clojunauts.core :as system]
            [clj-http.client :as client]))

(deftest server-is-up
  (let [app (system/start
             (system/app {}))
        opts (:server-opts app)
        url (str "http://" (:host opts) ":" (:port opts))]
    (is (client/get url {:throw-exceptions false}))
    (system/stop app)))
