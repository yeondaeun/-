class CreateComment2s < ActiveRecord::Migration
  def change
    create_table :comment2s do |t|
       t.text :content
      t.integer :formfor_id

      t.timestamps null: false
    end
  end
end
