class RemoveStatusFromItems < ActiveRecord::Migration[5.1]
  def change
  	remove_column :items, :status
  end
end
