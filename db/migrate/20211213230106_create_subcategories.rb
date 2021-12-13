class CreateSubcategories < ActiveRecord::Migration[6.1]
  def change
    create_table :subcategories do |t|
      t.string :title
      t.belongs_to :intention
      t.timestamps
    end
  end
end
