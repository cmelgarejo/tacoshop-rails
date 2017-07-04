class CreateTacos < ActiveRecord::Migration[5.1]
  def change
    create_table :tacos do |t|
      t.string :meat
      t.boolean :rice
      t.boolean :salsa
      t.boolean :fries
      t.string :notes

      t.timestamps
    end
  end
end
