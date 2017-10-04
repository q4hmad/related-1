class AddTable < ActiveRecord::Migration[5.1]
  def change
    create_table :informations do |i|
      i.column(:more, :string)

      i.timestamp()
    end
  end
end
