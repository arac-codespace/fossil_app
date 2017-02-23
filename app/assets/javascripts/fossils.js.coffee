# $(document).on "turbolinks:load", ->
	
# 	# Hide forms when page loaded
# 	$('#fossil_phylum_id').parent().hide()
# 	$('#fossil_fossil_class_id').parent().hide()
# 	$('#fossil_order_id').parent().hide()
# 	$('#fossil_family_id').parent().hide()
# 	$('#fossil_genera_id').parent().hide()
	
		
# 	# Assign item values to vars 
# 	phylums = $('#fossil_phylum_id').html()
# 	fossil_class = $('#fossil_fossil_class_id').html()
# 	orders = $('#fossil_order_id').html()
# 	families = $('#fossil_family_id').html()
# 	genus = $('#fossil_genera_id').html()

# 	# Default option select
# 	blank = '<option selected="selected"></option>'
	
# 	# When kingdom select field is changed... show phylum options
# 	$('#fossil_kingdom_id').change ->
# 		# Get value of selected kingdom
# 		selected_kingdom = $('#fossil_kingdom_id :selected').text()
# 		# Escape value
# 		escaped_kingdom = selected_kingdom.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
# 		# Filter phylum list by its kingdom label (from grouped_collection_select)
# 		options = $(phylums).filter("optgroup[label='#{escaped_kingdom}']").html()
# 		# If the filtering succeeds...
# 		if options
# 			# Assign options array to phylum_id
# 			$('#fossil_phylum_id').html(options).prepend(blank)
# 			# Show phylum list
# 			$('#fossil_phylum_id').parent().show()
# 			# Hide any previously opened child fields and empty its contents
# 			$('#fossil_fossil_class_id').parent().hide()				
# 			$('#fossil_fossil_class_id').empty()
# 			$('#fossil_order_id').parent().hide()				
# 			$('#fossil_order_id').empty()
# 			$('#fossil_family_id').parent().hide()				
# 			$('#fossil_family_id').empty()	
# 			$('#fossil_genera_id').parent().hide()				
# 			$('#fossil_genera_id').empty()				
			
# 		# If no matching labels->phylums from options is selected...
# 		else
# 			# Delete and hide all child forms
# 			$('#fossil_phylum_id').empty()
# 			$('#fossil_phylum_id').parent().hide()
# 			$('#fossil_fossil_class_id').empty()
# 			$('#fossil_fossil_class_id').parent().hide()	
# 			$('#fossil_order_id').parent().hide()				
# 			$('#fossil_order_id').empty()		
# 			$('#fossil_family_id').parent().hide()				
# 			$('#fossil_family_id').empty()				
# 			$('#fossil_genera_id').parent().hide()				
# 			$('#fossil_genera_id').empty()			

			
			
# 	# When phylum select field is changed... show class options
# 	$('#fossil_phylum_id').change ->
# 		selected_phylum = $('#fossil_phylum_id :selected').text()
# 		escaped_phylum = selected_phylum.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
# 		options = $(fossil_class).filter("optgroup[label='#{escaped_phylum}']").html()
# 		if options
# 			$('#fossil_fossil_class_id').html(options).prepend(blank)
# 			$('#fossil_fossil_class_id').parent().show()
# 			$('#fossil_order_id').parent().hide()				
# 			$('#fossil_order_id').empty()	
# 			$('#fossil_family_id').parent().hide()				
# 			$('#fossil_family_id').empty()
# 			$('#fossil_genera_id').parent().hide()				
# 			$('#fossil_genera_id').empty()			
# 		else
# 			$('#fossil_fossil_class_id').empty()
# 			$('#fossil_fossil_class_id').parent().hide()
# 			$('#fossil_order_id').parent().hide()				
# 			$('#fossil_order_id').empty()	
# 			$('#fossil_family_id').parent().hide()				
# 			$('#fossil_family_id').empty()
# 			$('#fossil_genera_id').parent().hide()				
# 			$('#fossil_genera_id').empty()			
			
			
# 	# When class select field is changed... show order options
# 	$('#fossil_fossil_class_id').change ->
# 		selected_class = $('#fossil_fossil_class_id :selected').text()
# 		escaped_class = selected_class.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
# 		options = $(orders).filter("optgroup[label='#{escaped_class}']").html()
# 		if options
# 			$('#fossil_order_id').html(options).prepend(blank)
# 			$('#fossil_order_id').parent().show()
# 			$('#fossil_family_id').parent().hide()				
# 			$('#fossil_family_id').empty()
# 			$('#fossil_genera_id').parent().hide()				
# 			$('#fossil_genera_id').empty()			
# 		else
# 			$('#fossil_order_id').empty()
# 			$('#fossil_order_id').parent().hide()		
# 			$('#fossil_family_id').parent().hide()				
# 			$('#fossil_family_id').empty()	
# 			$('#fossil_genera_id').parent().hide()				
# 			$('#fossil_genera_id').empty()			
			
# 	# When order select field is changed... show family options
# 	$('#fossil_order_id').change ->
# 		selected_order = $('#fossil_order_id :selected').text()
# 		escaped_order = selected_order.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
# 		options = $(families).filter("optgroup[label='#{escaped_order}']").html()
# 		if options
# 			$('#fossil_family_id').html(options).prepend(blank)
# 			$('#fossil_family_id').parent().show()
# 			$('#fossil_genera_id').parent().hide()				
# 			$('#fossil_genera_id').empty()			
# 		else
# 			$('#fossil_family_id').empty()
# 			$('#fossil_family_id').parent().hide()
# 			$('#fossil_genera_id').parent().hide()				
# 			$('#fossil_genera_id').empty()			
			
			
# 	# When family select field is changed... show genus options
# 	$('#fossil_family_id').change ->
# 		selected_family = $('#fossil_family_id :selected').text()
# 		escaped_family = selected_family.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
# 		options = $(genus).filter("optgroup[label='#{escaped_family}']").html()
# 		if options
# 			$('#fossil_genera_id').html(options).prepend(blank)
# 			$('#fossil_genera_id').parent().show()
# 		else
# 			$('#fossil_genera_id').empty()
# 			$('#fossil_genera_id').parent().hide()				