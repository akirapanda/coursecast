class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :title
      t.string :body
      t.string :body_html
      t.integer :course_id

      t.timestamps
    end
  end
end
