class CreateCommunities < ActiveRecord::Migration[5.1]
  def change
    create_table(:communities) do |c|
      c.column(:user_id, :integer)
      c.column(:group_id, :integer)
      c.column(:service_id, :integer)

      c.timestamp()
    end
  end
end
