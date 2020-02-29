class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.text :name, null: false
      t.text :tel, null: false
      t.text :mail, null: false
      t.text :content
      t.timestamps
    end
  end
end
