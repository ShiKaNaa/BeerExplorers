class AddBeerReferencesToChatrooms < ActiveRecord::Migration[6.1]
  def change
    add_reference :chatrooms, :beer, foreign_key: true
  end
end
