class FossilsController < ApplicationController
  def new
      @fossil = Fossil.new
  end
  
  def index
    @fossils = Fossil.all
  end
  
  def show
    @fossil = Fossil.find(params[:id])
  end
  
  def create
    @fossil = Fossil.new(fossil_params)
    if @fossil.save
        flash[:success] = "Profile Updated"
        redirect_to root_path
    else
        render action: :new
    end    
  end
  
  
  
  private
  
  def fossil_params
      paras_allow = :kingdom_id, :phylum_id, :fossil_class_id, :order_id, :family_id, :genera_id, :summary, :remarks, :species_name, :env_int, :author, :age_range, :avatar
      params.require(:fossil).permit(paras_allow)
  end  
  
end
