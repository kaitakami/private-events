class AddForeignKeys < ActiveRecord::Migration[7.0]
  def change
    change_table :events do |t|
      t.rename :finished, :date
      t.string :location
      t.integer :user_id
    end

    change_table :users do |t|
      t.string :username
    end
  end
end
