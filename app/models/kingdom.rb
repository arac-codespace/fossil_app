class Kingdom < ActiveRecord::Base
  has_many :fossils
  has_many :phylums
  has_many :fossil_classes
  has_many :orders

end