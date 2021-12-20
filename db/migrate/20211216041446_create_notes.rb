class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :content
      t.belongs_to :correspondence
      t.belongs_to :intention
      t.timestamps
    end
  end
end
