class DropIndexes < ActiveRecord::Migration[5.1]
  def change
    drop_table(:indexes)
  end
end
