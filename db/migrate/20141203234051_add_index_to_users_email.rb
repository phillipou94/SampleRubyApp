class AddIndexToUsersEmail < ActiveRecord::Migration
   def change
      add_index :users, :email, unique: true #ensures each email has a unique index associated  with it
   end
end
