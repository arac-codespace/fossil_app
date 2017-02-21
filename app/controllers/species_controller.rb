class SpeciesController < ApplicationController
  
  def show
  
  add_breadcrumb "Home", :root_path 
  add_breadcrumb "Main Directory", :directory_index_path
  add_breadcrumb "Details" 
  
  @fossil = Fossil.find(params[:id])

  rescue ActiveRecord::RecordNotFound
    redirect_to directory_index_path, :flash => { :error => "Record not found." }

  end
  
  
  def index
    
  add_breadcrumb "Home", :root_path 
  add_breadcrumb "Main Directory", :directory_index_path    
  add_breadcrumb "All Species" 
    
    @q = Fossil.ransack(params[:q])
    @fossils = @q.result.includes(:kingdom)    
    # @fossils = Fossil.all
  end

end
