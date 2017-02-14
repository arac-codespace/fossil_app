class Order < ActiveRecord::Base
  belongs_to :kingdom
  belongs_to :phylum  
  belongs_to :fossil_class       
  has_many :families
  has_many :fossils

end