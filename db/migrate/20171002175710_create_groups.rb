class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table(:groups) do |g|
      g.column(:interest, :string)
      g.column(:description, :string)


      g.timestamp()
    end
  end
end
