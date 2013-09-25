(ns users.models
  (:require [clojunauts.database :refer [default]]
            [korma.core :refer :all]))


(defentity user
  (table :users_user :user)
  (database default)
  (entity-fields
   :email
   :first-name
   :last-name
   :bio
   :photo
   :newsletter
   :latitude
   :longitude
   :city
   :province
   :country))
