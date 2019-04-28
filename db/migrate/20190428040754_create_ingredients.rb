class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.references :project, foreign_key: true
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end