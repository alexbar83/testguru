class AddAuthorToTests < ActiveRecord::Migration[6.1]
  def change
    add_reference :tests, :author, type: :integer, foreign_key: { to_table: :users}
  end
end
