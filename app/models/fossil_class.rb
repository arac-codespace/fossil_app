class FossilClass < ActiveRecord::Base
  belongs_to :kingdom       
  belongs_to :phylum
  has_many :fossils
  has_many :orders
  has_many :families
  has_many :generas
  
    # In order for active admin to recognize the display name/label...
  def display_name
    class_name
  end  
end