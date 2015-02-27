class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :email
      t.string :name
      t.string :phone
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
