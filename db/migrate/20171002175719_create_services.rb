class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table(:services) do |s|
      s.column(:location, :string)
      s.column(:detail, :string)

      s.timestamp()
    end
  end
end
