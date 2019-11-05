class CreatePhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :phrases do |t|
      t.string :english_text
      t.string :language_text
      t.integer :language_id
      t.integer :user_id

      t.timestamps
    end
  end
end
