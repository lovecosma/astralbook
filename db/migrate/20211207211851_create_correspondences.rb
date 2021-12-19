class CreateCorrespondences < ActiveRecord::Migration[6.1]
  def change
    create_table :correspondences do |t|
      t.string :name
      t.belongs_to :category
      t.string :category_title
      t.timestamps
    end
  end
end
