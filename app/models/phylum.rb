class Phylum < ActiveRecord::Base
  belongs_to :kingdom       
  has_many :fossils
  has_many :fossil_classes
  has_many :orders
  has_many :families
  has_many :generas
end