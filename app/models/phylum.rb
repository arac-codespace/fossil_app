class Phylum < ActiveRecord::Base
  belongs_to :kingdom       
  has_many :fossils

end