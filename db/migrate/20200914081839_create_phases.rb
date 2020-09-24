class CreatePhases < ActiveRecord::Migration[6.0]
  def change
    create_table :phases do |t|

      t.timestamps
    end
  end
end
