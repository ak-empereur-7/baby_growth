class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :name, :string, null: false, default: ''
  end

  def def down 
    
  end
end
