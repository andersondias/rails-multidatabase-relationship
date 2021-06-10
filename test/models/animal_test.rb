require "test_helper"

class AnimalTest < ActiveSupport::TestCase
  test "associations" do
    dog = Dog.create!(name: 'Dogo')
    person = Person.create!(name: "Person")

    animal = Animal.create!(dog: dog, person: person)
    assert_equal dog, animal.dog
    assert_equal person, animal.person
  end
end
