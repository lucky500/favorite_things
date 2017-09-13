class Favorite_things
  @@favorite_things_list = []

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all()
    @@favorite_things_list
  end

  def save()
    @@favorite_things_list.push(self)
  end

  def self.clear()
    @@favorite_things_list = []
  end
end

# favorite_thing1 = Favorite_things.new("tacos")
# favorite_thing1.save()
# puts favorite_thing1
