class Fossil < ActiveRecord::Base
  belongs_to :kingdom
  belongs_to :phylum
end