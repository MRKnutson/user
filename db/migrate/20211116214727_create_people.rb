class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :full_name
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
