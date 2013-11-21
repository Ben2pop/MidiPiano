class AddAttachmentImageToMidis < ActiveRecord::Migration
  def self.up
    change_table :midis do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :midis, :image
  end
end
