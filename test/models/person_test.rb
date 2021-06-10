require "test_helper"

class PersonTest < ActiveSupport::TestCase
  test "validates name" do
    person = Person.new
    refute person.save

    person.name = "Person"
    assert person.save
  end

  test "associates with animals" do
    person = Person.create!(name: "Anderson")
    dog = Dog.create!(name: "Dog")
    animal = Animal.create!(person: person, dog: dog)

    assert_equal 1, person.animals.size
    assert_equal animal, person.animals.first
    assert_equal 1, person.dogs.size
    assert_equal dog, person.dogs.first
  end
end
