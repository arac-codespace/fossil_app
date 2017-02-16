class DirectoryController < ApplicationController


  def index
    @phylums = Phylum.all
    @classes = FossilClass.all
    @animalia = Kingdom.find_by kingdom_name: 'Animalia'
    @protozoa = Kingdom.find_by kingdom_name: 'Protozoa'
  end
  
  def show
    @p_id = params[:id]
    @name_find = Phylum.find_by id: @p_id
    @name = @name_find
    @fossils = Fossil.where phylum_id: @p_id
    
  end
  
  
end