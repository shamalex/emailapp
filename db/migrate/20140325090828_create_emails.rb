class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :emailtext

      t.timestamps
    end
  end
end
