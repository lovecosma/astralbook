class CreateSubintentions < ActiveRecord::Migration[6.1]
  def change
    create_table :subintentions do |t|
      t.string :name
      t.belongs_to :intention
      t.timestamps
    end
  end
end
