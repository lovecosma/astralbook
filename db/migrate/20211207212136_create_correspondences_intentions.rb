class CreateCorrespondencesIntentions < ActiveRecord::Migration[6.1]
  def change
    create_table :correspondences_intentions do |t|
      t.belongs_to :correspondence
      t.belongs_to :intention
      t.timestamps
    end
  end
end
