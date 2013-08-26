(ns clojunauts.core
  (:require
   [ring.adapter.jetty :as jetty]))

(defn app [& {:keys [host port join?]
              :or {host "localhost" port 8080 join? false}}]
  "Returns an instance of a Clojunauts app."
  {:server-opts {:host host :port port :join? join?}})

(defn start [{:keys [handlers server-opts] :as app}]
  "Starts an instance of a Clojunauts app."
  (-> app
      (assoc :server (jetty/run-jetty app server-opts))))

(defn stop [{:keys [server] :as app}]
  "Stops an instance of a Clojunauts app."
  (when app
    (.stop server)
    app))
