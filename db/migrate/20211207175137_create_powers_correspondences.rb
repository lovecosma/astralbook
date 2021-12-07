class CreatePowersCorrespondences < ActiveRecord::Migration[6.1]
  def change
    create_table :correspondences_powers do |t|
      t.belongs_to :power
      t.belongs_to :correspondence
      t.timestamps
    end
  end
end
