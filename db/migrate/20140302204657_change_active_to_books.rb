class ChangeActiveToBooks < ActiveRecord::Migration
  def change
    change_column :books, :active, :boolean, :default => false
  end
end
