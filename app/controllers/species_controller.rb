class SpeciesController < ApplicationController
  
  def show
    @fossil = Fossil.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to directory_index_path, :flash => { :error => "Record not found." }

  end
  
  
  def index
    @fossils = Fossil.all
  end

end
