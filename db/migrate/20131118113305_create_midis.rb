class CreateMidis < ActiveRecord::Migration
  def change
    create_table :midis do |t|
      t.string :title
      t.string :author

      t.timestamps
    end
  end
end
