class CreateGists < ActiveRecord::Migration[6.1]
  def change
    create_table :gists do |t|
      t.references :question, foreign_key: true
      t.string :url
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
