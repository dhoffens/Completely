class AddAddressToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :address, :string
  end
end
