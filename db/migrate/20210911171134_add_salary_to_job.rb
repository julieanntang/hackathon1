class AddSalaryToJob < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :salary, :integer
  end
end
