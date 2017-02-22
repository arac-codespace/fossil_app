class Family < ActiveRecord::Base
  belongs_to :kingdom
  belongs_to :phylum  
  belongs_to :fossil_class
  belongs_to :order
  has_many :generas
  has_many :fossils
  
  # In order for active admin to recognize the display name/label...
  def display_name
    family_name
  end    

end