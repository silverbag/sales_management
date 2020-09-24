class CreateLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :leads do |t|
      t.string :customer_name,        null: false
      t.string :company,              null: false
      t.string :position,             null: false
      t.string :category_id,          foreign_key: true
      t.references :user,          foreign_key: true
      t.timestamps
    end
  end
end
