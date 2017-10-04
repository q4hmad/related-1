class AddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column(:communities, :index_id, :integer)
  end
end
