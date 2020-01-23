class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.text :name
      t.text :tel
      t.text :mail
      t.text :content
      t.timestamps
    end
  end
end
