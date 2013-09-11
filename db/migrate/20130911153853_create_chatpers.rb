class CreateChatpers < ActiveRecord::Migration
  def change
    create_table :chatpers do |t|
      t.string :title
      t.string :img
      t.string :content
      t.integer :course_id

      t.timestamps
    end
  end
end
