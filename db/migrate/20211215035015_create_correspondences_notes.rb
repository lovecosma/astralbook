class CreateCorrespondencesNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :correspondences_notes do |t|
      t.belongs_to :correspondence
      t.belongs_to :note
      t.timestamps
    end
  end
end
