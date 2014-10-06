class Movie < ActiveRecord::Base
  attr_accessible :title, :rating, :description, :release_date
   #def self.movies(filters,sort_field)
       # self.where({:rating => filters}).sort_by(sort_field)
   #end
   def self.list_ratings
     self.uniq.pluck(:rating)
   end
end
