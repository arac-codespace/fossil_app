class Fossil < ActiveRecord::Base
  belongs_to :kingdom
  belongs_to :phylum
  belongs_to :fossil_class
  belongs_to :order
end