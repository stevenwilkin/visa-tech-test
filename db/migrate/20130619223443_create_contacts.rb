class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :mobile, null: false
      t.string :landline
      t.string :twitter
      t.string :photo

      t.timestamps
    end
  end
end
