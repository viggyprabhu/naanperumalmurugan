class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.integer :author_id
      t.string :content
      t.integer :chapter
      t.integer :linenumber
      t.integer :tweet_id, :limit => 8
      t.boolean :active, default: true
      t.boolean :perfect, default: false
      
      t.timestamps null: false
    end
  end
end
