class Prophecies < ActiveRecord::Migration
  def change
    create_table(:prophecies) do |t|

      t.string :keyone, null: false, default: ""
      t.string :keytwo, null: false, default: ""
      t.string :keythree, null: false, default: ""
      t.string :keyfour, null: false, default: ""
      t.string :keyfive, null: false, default: ""
      t.datetime :dateone
      t.datetime :datetwo
      t.integer  :tscore, default: 0, null: false

      t.timestamps
    end
  end
  end
