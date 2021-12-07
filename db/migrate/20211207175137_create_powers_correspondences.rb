class CreatePowersCorrespondences < ActiveRecord::Migration[6.1]
  def change
    create_table :powers_correspondences do |t|
      t.belongs_to :power
      t.belongs_to :correspondence
      t.timestamps
    end
  end
end
