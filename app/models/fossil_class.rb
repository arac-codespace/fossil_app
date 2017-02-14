class FossilClass < ActiveRecord::Base
  belongs_to :kingdom       
  belongs_to :phylum
  has_many :fossils
  has_many :orders
end