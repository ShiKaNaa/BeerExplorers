class AddingDefaultValueToBeerquestsWithRightValue < ActiveRecord::Migration[6.1]
  def change
    change_column :beerquests, :bar_id, :integer, default: 1
  end
end
