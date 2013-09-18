class CreateDumps < ActiveRecord::Migration
  def change
    create_table :dumps do |t|
      t.decimal :duration
      t.string :kind
      t.decimal :weight
      t.string :color
      t.references :user

      t.timestamps
    end
  end
end
