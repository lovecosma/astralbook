class CreateCorrespondencesSubintentions < ActiveRecord::Migration[6.1]
  def change
    create_table :correspondences_subintentions do |t|
      t.belongs_to :correspondence
      t.belongs_to :subintention
      t.timestamps
    end
  end
end
