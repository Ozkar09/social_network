class CreateFriendships < ActiveRecord::Migration[5.2]
  def change

    create_table :friendships do |t|
      t.references :sender
      t.references :receiver
      t.boolean :request

      t.timestamps
    end

  end
end
