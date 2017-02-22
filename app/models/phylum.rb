class Phylum < ActiveRecord::Base
  belongs_to :kingdom       
  has_many :fossils
  has_many :fossil_classes
  has_many :orders
  has_many :families
  has_many :generas
  
    # In order for active admin to recognize the display name/label...
  def display_name
    phylum_name
  end  
end