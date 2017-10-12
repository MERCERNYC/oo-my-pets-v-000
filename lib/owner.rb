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

  def pets=(pet)
    @pet = pet
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
    @pets[:dogs].each { |dog|dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each { |cat|cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |fish|fish.mood = "happy" }
  end

  def sell_pets
    @pets.each {|type, name|}
      name.each {|pet| pet.mood = "nervous"}
    end
      # @pets.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
