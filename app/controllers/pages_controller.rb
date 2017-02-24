class PagesController < ApplicationController
  
  def home
    add_breadcrumb "Home", :root_path
  end
  
  def about
    add_breadcrumb "Home", :root_path
    add_breadcrumb "About"
  end
  
  def general_information
  add_breadcrumb "Home", :root_path
  add_breadcrumb "General Information"
  end
  
  def taxonomy_overview
  add_breadcrumb "Home", :root_path
  add_breadcrumb "Taxonomy Overview"  
  end
  
  
end
