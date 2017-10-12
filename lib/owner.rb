require 'pry'

class Owner
  attr_accessor :name
  attr_reader :pets

  @@all = []

  def self.all
    @@all
  end

  def self.count
   @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def initialize(pets)
    @species = species
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a #{self.species}."
  end

  def name=(name)
    @name = name
  end

  def pets
    @pets
  end

  def self.buy_fish(fish)
  self.pets[:fishes].select do |fish|
    is_fish?(fish)
  end
end 
  fish = self.new
  fish.name = "Bubbles"
  fish
  end


#
#   def buy_cat
#   end
#
#   def buy_dog
#   end
#
end
