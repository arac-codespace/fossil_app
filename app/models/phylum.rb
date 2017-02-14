class Phylum < ActiveRecord::Base
  belongs_to :kingdom       
  has_many :fossils
  has_many :fossil_classes
  has_many :orders
end