class DropId < ActiveRecord::Migration[5.1]
  def change
    remove_column(:communities, :information_id)
  end
end
