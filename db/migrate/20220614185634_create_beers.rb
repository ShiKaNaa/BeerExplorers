class CreateBeers < ActiveRecord::Migration[6.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.float :abv
      t.integer :ibu
      t.string :style
      t.string :photo
      t.string :country
      t.string :hops

      t.timestamps
    end
  end
end
