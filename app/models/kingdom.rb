class Kingdom < ActiveRecord::Base
  has_many :fossils
  has_many :phylums

end