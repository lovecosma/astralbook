class CreateCorrespondences < ActiveRecord::Migration[6.1]
  def change
    create_table :correspondences do |t|
      t.string :name

      t.timestamps
    end
  end
end
