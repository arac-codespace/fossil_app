class Fossil < ActiveRecord::Base
  belongs_to :kingdom
  belongs_to :phylum
  belongs_to :fossil_class
  belongs_to :order
  belongs_to :family
  belongs_to :genera
  
  
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "fossil-default.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/  
  
    # In order for active admin to recognize the display name/label...
  def display_name
    species_name
  end  
  
  
  
  validates :species_name, presence: true
  validates :kingdom_id, :phylum_id, :fossil_class_id, :order_id, :family_id, :genera_id, presence: { message: "must be given please" }
  
  
end