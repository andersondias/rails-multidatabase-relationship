class Person < PeopleRecord
  validates :name, presence: true
  has_many :animals
  has_many :dogs, through: :animals
end
