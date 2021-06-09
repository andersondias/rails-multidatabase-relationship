require "test_helper"

class DogTest < ActiveSupport::TestCase
  test "validates name" do
    dog = Dog.new
    refute dog.save

    dog.name = "Dog"
    assert dog.save
  end
end
