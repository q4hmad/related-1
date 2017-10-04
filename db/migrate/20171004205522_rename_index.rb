class RenameIndex < ActiveRecord::Migration[5.1]
  def change
    rename_table(:index, :indexes)
  end
end
