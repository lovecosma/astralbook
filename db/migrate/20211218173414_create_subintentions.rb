class CreateSubintentions < ActiveRecord::Migration[6.1]
  def change
    create_table :subintentions do |t|
      t.string :name

      t.timestamps
    end
  end
end
