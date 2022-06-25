class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.string :title
      t.text :body
      t.references :portfolio, null: false, foreign_key: true
      t.timestamps
    end
  end
end
