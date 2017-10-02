class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table(:users) do |user|
      user.column(:name, :string)
      user.column(:address, :string)
      user.column(:email, :string)

      user.timestamp()
    end
  end
end
