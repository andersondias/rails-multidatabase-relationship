class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.references :dog, null: false, foreign_key: false
      t.references :person, null: false, foreign_key: false

      t.timestamps
    end
  end
end
