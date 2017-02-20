class SpeciesController < ApplicationController
  
  def show
    @fossil = Fossil.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to directory_index_path, :flash => { :error => "Record not found." }

  end
  
  
  def index
    
    @q = Fossil.ransack(params[:q])
    @fossils = @q.result.includes(:kingdom)    
    # @fossils = Fossil.all
  end

end
