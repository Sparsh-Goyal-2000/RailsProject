class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users, primary_key: :code do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
