ActiveAdmin.register Fossil do

permit_params :kingdom_id, :phylum_id, :fossil_class_id, :order_id, :family_id, :genera_id, :summary, :remarks, :species_name, :env_int, :author, :age_range, :avatar




  form do |f|
    f.inputs "Project Details" do
      
      div class: 'form-tax-select' do 
        f.collection_select(:kingdom_id, Kingdom.order(:kingdom_name), :id, :kingdom_name, include_blank: 'Kingdom')  
        
        f.grouped_collection_select(:phylum_id, Kingdom.order(:kingdom_name), :phylums, :kingdom_name, :id, :phylum_name)
        
        f.grouped_collection_select(:fossil_class_id, Phylum.order(:phylum_name), :fossil_classes, :phylum_name, :id, :class_name)
  
        f.grouped_collection_select(:order_id, FossilClass.order(:class_name), :orders, :class_name, :id, :order_name)
  
        f.grouped_collection_select(:family_id, Order.order(:order_name), :families, :order_name, :id, :family_name)
  
        f.grouped_collection_select(:genera_id, Family.order(:family_name), :generas, :family_name, :id, :genus_name)
      end
      
      f.input :species_name
      f.input :summary
      f.input :age_range
      f.input :author
      f.input :remarks
      f.input :env_int, :label => "Environmental Interpretation"
      f.input :avatar, :required => false, :as => :file
        # Will preview the image when the object is edited
    end
    f.actions
  end


end
