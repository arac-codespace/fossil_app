class Kingdom < ActiveRecord::Base
  has_many :fossils
  has_many :phylums
  has_many :fossil_classes
  has_many :orders
  has_many :families
  has_many :generas
  
  # In order for active admin to recognize the display name/label...
  def display_name
    kingdom_name
  end  

end