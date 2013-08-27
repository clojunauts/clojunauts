(ns lobos.migrations
  (:refer-clojure :exclude (alter drop time boolean float char bigint double))
  (:require
   [lobos.migration :refer (defmigration)]
   [lobos.core :refer :all]
   [lobos.schema :refer :all]))

(defmigration create-users
  (up [] (create (table :users
                        (integer :id :primary-key)
                        (varchar :email 256 :unique))))
  (down [] (drop (table :users))))
