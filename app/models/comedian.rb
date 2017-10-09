class Comedian < ActiveRecord::Base
  has_many :specials

  def self.avereage_comedian_age
    Comedian.average(:age).round
  end
end
