require "test_helper"

class PersonTest < ActiveSupport::TestCase
  test "validates name" do
    person = Person.new
    refute person.save

    person.name = "Person"
    assert person.save
  end
end
