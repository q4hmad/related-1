class AddInfo < ActiveRecord::Migration[5.1]
  def change
    add_column(:users, :address, :string)
    add_column(:users, :information, :string)
  end
end
