class Boat < ActiveRecord::Base
  belongs_to  :captain
  has_many    :boat_classifications
  has_many    :classifications, through: :boat_classifications

  def self.first_five
    first(5)
  end

  def self.dinghy
    where("length < 20")
  end

  def self.ship
    where("length >= 20")
  end

  def self.last_three_alphabetically
    order(name: :desc).first(3)
  end

  def self.without_a_captain
    where(captain.none)
  end

  def self.sailboats
    #self.first(5)
  end

  def with_three_classifications
    #self.first(5)
  end


end
