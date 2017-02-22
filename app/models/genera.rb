class Genera < ActiveRecord::Base
  belongs_to :kingdom
  belongs_to :phylum  
  belongs_to :fossil_class
  belongs_to :order
  belongs_to :family
  has_many :fossils
  
  
  # In order for active admin to recognize the display name/label...
  def display_name
    genus_name
  end    

end