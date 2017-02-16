class SpeciesController < ApplicationController
  
  def show
    @fossil = Fossil.find(params[:id])
  end
  
  def index
    @fossils = Fossil.all
  end

end
