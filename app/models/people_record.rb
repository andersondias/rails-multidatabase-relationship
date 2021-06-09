class PeopleRecord < ApplicationRecord
  self.abstract_class = true

  connects_to database: { writing: :people }
end
