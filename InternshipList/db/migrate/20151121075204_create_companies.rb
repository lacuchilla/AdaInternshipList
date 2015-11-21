class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.string :description
      t.string :website

      t.timestamps null: false
    end
  end
end
