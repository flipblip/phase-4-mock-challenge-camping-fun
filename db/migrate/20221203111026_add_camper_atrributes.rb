class AddCamperAtrributes < ActiveRecord::Migration[6.1]
  def change
    add_column :campers, :name, :string
    add_column :campers, :age, :integer
  end
end
