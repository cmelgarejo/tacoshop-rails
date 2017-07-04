class CreateTacos < ActiveRecord::Migration[5.1]
  def change
    create_table :tacos do |t|
      t.string :meat
      t.string :rice
      t.string :salsa
      t.string :fries
      t.string :notes

      t.timestamps
    end
  end
end
