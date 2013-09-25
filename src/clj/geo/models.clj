(ns geo.models
  (:require
   [korma.db :refer :all]
   [korma.core :refer :all]
   [clojunauts.database :refer [default]]))


(defentity country
  (pk :gid)
  (table :ne_10m_admin_0_countries :country)
  (database default)
  (entity-fields :gid
                 :name_long ; :name
                 :admin ; :country
                 :postal ; :short
                 :geom))

(defentity province
  (pk :gid)
  (table :ne_10m_admin_1_states_provinces_shp :province)
  (database default)
  (entity-fields :gid
                 :name
                 :type
                 :admin ; :country
                 :postal ; :short
                 :geom))

(defentity city
  (pk :gid)
  (table :ne_10m_populated_places :city)
  (database default)
  (entity-fields :gid
                 :name
                 :adm0name ; :country
                 :adm0_a3 ; :country-short
                 :adm1name ; :province
                 :latitude
                 :longitude))
