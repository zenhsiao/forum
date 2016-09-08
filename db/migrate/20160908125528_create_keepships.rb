class CreateKeepships < ActiveRecord::Migration[5.0]
  def change
    create_table :keepships do |t|
    	t.integer :topic_id
    	t.integer :user_id
      t.timestamps
    end
    add_index :keepships, :topic_id
    add_index :keepships, :user_id
  end
end
