#!/usr/bin/env ruby

require 'rspec'
require 'favorite_things'
describe("Favorite_things") do
  before() do
    Favorite_things.clear()
  end

  describe(".all") do
    it("is empty at first") do
      expect(Favorite_things.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("saves an item to the list of items") do
      item = Favorite_things.new("tacos")
      item.save()
      expect(Favorite_things.all()).to(eq([item]))
    end
  end
  describe("#clear") do
    it("clears all items from the list") do
      item = Favorite_things.new("tacos")
      item.save()
      Favorite_things.clear()
      expect(Favorite_things.all()).to(eq([]))
    end
  end
end
