class ChangeColumn < ActiveRecord::Migration[5.1]
  def change
      remove_column(:communities, :index_id)
      add_column(:communities, :information_id, :integer)
  end
end
