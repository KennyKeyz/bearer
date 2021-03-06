class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :status, :integer, default: 0
      t.string :tracking_number
      t.string :code

      t.timestamps
    end
  end
end
