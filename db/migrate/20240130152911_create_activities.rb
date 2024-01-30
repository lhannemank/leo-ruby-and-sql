class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.string "type"
      t.datetime "date_time"
      t.string "notes"
      t.integer "salesperson_id"
      t.integer "contact_id"
      t.integer "company_id"
      t.timestamps
    end
  end
end
