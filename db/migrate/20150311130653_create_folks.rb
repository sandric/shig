class CreateFolks < ActiveRecord::Migration
  def change
    create_table :folks do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
