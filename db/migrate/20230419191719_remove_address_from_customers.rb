class RemoveAddressFromCustomers < ActiveRecord::Migration[7.0]
  def change
    remove_column :customers, :address
  end
end
