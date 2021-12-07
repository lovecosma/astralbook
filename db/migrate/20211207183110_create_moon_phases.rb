class CreateMoonPhases < ActiveRecord::Migration[6.1]
  def change
    create_table :moon_phases do |t|

      t.timestamps
    end
  end
end
