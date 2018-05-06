class Show < ActiveRecord::Base

  def self.highest_rating
    maximum :rating
  end

  def self.most_popular_show
    find_by rating: highest_rating
  end

  def self.lowest_rating
    minimum :rating
  end

  def self.least_popular_show
    find_by rating: lowest_rating
  end

end
