class AddSexColumnToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :sex, :string, :default => 'M'
  end
end
