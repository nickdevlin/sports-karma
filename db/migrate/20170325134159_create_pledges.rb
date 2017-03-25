class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.string :player_id, null: false
      t.string :stat_category, null: false
      t.float :donation_amount, null: false
      t.string :charity
      t.integer :stat_total, default: 0
      t.date :start_date, default: Date.today
      t.date :end_date
      t.integer :user_id
    end
  end
end
