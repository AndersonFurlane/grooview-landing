class CreateMails < ActiveRecord::Migration
  def change
    create_table :mails do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
