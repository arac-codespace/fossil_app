class FossilClass < ActiveRecord::Base
  belongs_to :kingdom       
  has_many :fossils
  belongs_to :phylum

end