class Movie < ActiveRecord::Base
  attr_accessible :title, :rating, :description, :release_date
   def self.list_ratings
     self.uniq.pluck(:rating)
   end
end
