class RemoveColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column(:users, :address)
    add_column(:services, :servicer, :string)
    create_table(:index) do |i|
      i.column(:address, :string)

      i.timestamp()
    end
  end
end
