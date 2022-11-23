class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.boolean :public_event
      t.datetime :finished

      t.timestamps
    end
  end
end
