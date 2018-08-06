class CreateFormfors < ActiveRecord::Migration
  def change
    create_table :formfors do |t|
      
      t.string :title
      t.text :content
      

      t.timestamps null: false
    end
  end
end
