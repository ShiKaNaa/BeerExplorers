class CreateBars < ActiveRecord::Migration[6.1]
  def change
    create_table :bars do |t|
      t.string :address
      t.string :name

      t.timestamps
    end
  end
end
