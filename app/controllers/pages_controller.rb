class PagesController < ApplicationController
  def home
  end
  
  def index
    @genus = Genera.all
    @fossils = Fossil.all
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
