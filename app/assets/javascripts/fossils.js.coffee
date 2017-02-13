$(document).on "turbolinks:load", ->
	
	# Hide forms when page loaded
	$('#fossil_phylum_id').parent().hide()
	$('#fossil_fossil_class_id').parent().hide()
	
	# Assign item values to vars 
	phylums = $('#fossil_phylum_id').html()
	fossil_class = $('#fossil_fossil_class_id').html()
	
	# Default option select
	blank = '<option selected="selected"></option>'
	
	# When kingdom select field is changed...
	$('#fossil_kingdom_id').change ->
		# Get value of selected kingdom
		selected_kingdom = $('#fossil_kingdom_id :selected').text()
		# Escape value
		escaped_kingdom = selected_kingdom.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
		# Filter phylum list by its kingdom label (from grouped_collection_select)
		options = $(phylums).filter("optgroup[label='#{escaped_kingdom}']").html()
		# If the filtering succeeds...
		if options
			# Assign options array to phylum_id
			$('#fossil_phylum_id').html(options).prepend(blank)
			# Show phylum list
			$('#fossil_phylum_id').parent().show()
			# Hide any previously opened child fields and empty its contents
			$('#fossil_fossil_class_id').parent().hide()				
			$('#fossil_fossil_class_id').empty()
			
		# If no matching labels->phylums from options is selected...
		else
			# Delete and hide all child forms
			$('#fossil_phylum_id').empty()
			$('#fossil_phylum_id').parent().hide()
			$('#fossil_fossil_class_id').empty()
			$('#fossil_fossil_class_id').parent().hide()						
			

			
			

	$('#fossil_phylum_id').change ->
		selected_phylum = $('#fossil_phylum_id :selected').text()
		escaped_phylum = selected_phylum.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
		options = $(fossil_class).filter("optgroup[label='#{escaped_phylum}']").html()
		if options
			$('#fossil_fossil_class_id').html(options).prepend(blank)
			$('#fossil_fossil_class_id').parent().show()
		else
			$('#fossil_fossil_class_id').empty()
			$('#fossil_fossil_class_id').parent().hide()			