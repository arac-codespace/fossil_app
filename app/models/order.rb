class Order < ActiveRecord::Base
  belongs_to :kingdom
  belongs_to :phylum  
  belongs_to :fossil_class       
  has_many :families
  has_many :fossils
  has_many :generas
  
  # In order for active admin to recognize the display name/label...
  def display_name
    order_name
  end    

end