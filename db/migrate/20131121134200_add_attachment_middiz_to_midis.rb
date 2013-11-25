class AddAttachmentMiddizToMidis < ActiveRecord::Migration
  def self.up
    change_table :midis do |t|
      t.attachment :middiz
    end
  end

  def self.down
    drop_attached_file :midis, :middiz
  end
end
