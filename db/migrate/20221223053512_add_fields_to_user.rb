class AddFieldsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :phone, :string
    add_column :users, :description, :string
    add_column :users, :cpf, :string
    add_column :users, :picture, :string
  end
end
