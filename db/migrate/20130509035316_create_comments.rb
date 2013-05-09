class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :fname
      t.string :good
      t.string :bad
      t.string :notes

      t.timestamps
    end
  end
end
