class AddAttachmentAvatarToFossils < ActiveRecord::Migration
  def self.up
    change_table :fossils do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :fossils, :avatar
  end
end
