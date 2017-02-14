class Fossil < ActiveRecord::Base
  belongs_to :kingdom
  belongs_to :phylum
  belongs_to :fossil_class
  belongs_to :order
  belongs_to :family
  belongs_to :genera
  
  
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/  
  
  
  
end