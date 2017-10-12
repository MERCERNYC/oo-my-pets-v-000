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

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)#name
    @pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    @pets[:dogs] each do {|dog| Dog.mood = "Happy"}
  end 

  def play_with_cats
  end

  def feed_fish
  end

  def sell_pets
  end

  def list_pets

  end
end
