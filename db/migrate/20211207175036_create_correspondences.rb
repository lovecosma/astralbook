class CreateCorrespondences < ActiveRecord::Migration[6.1]
  def change
    create_table :correspondences do |t|
      t.string :type
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end
