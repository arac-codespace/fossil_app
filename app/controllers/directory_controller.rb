class DirectoryController < ApplicationController


  def index
    @phylums = Phylum.all
    @classes = FossilClass.all
    # In case the id of the Kingdom changes on a future db update, I loop for the
    # appropiate kingdom by name and invoke the id in the view file.
    @animalia = Kingdom.find_by kingdom_name: 'Animalia'
    @protozoa = Kingdom.find_by kingdom_name: 'Protozoa'
  end
  
  def show
    
    @q = Fossil.ransack(params[:q])
    @fossil_s = @q.result.includes(:kingdom)
    
    # Phylum param assigned from the index file to url route.  Phylum.id
    @phylum_id = params[:id]
    # Finds the phylum record that matches the id param forwarded from the index. 
    @phylum_find = Phylum.find_by id: @phylum_id
    # These are all the fossils that share the phylum_id with the index parameter.
    @fossils = @fossil_s.where phylum_id: @phylum_id
    # Redirects if the expected Phylum.id param is not found in the db...
    redirect_to directory_index_path if @phylum_find.nil?
    
    # IF there is a class_var query string...
    if params[:class_var]
      # Query string instance var...
      @class_var = params[:class_var]
      # Find the class record whose name matches the query string
      @class = FossilClass.find_by class_name: @class_var 
      # Of the expected FossilClass.class_name query string is not found in the db...
      redirect_to directory_index_path if @class.nil?
    end
    
    
  end
  
  
end
  
