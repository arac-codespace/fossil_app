class PagesController < ApplicationController
  def home
  end
  
  def index
    @phylum = Phylum.all
    @animalia = Kingdom.find_by kingdom_name: 'Animalia'
    @protozoa = Kingdom.find_by kingdom_name: 'Protozoa'
  end
  
  def mollusca
  end
  
  def brachiopoda
  end
  
  def echinodermata
  end
  
  def arthropod
  end
  
  def foraminifera
  end
end
