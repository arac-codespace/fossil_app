jQuery ->
	$('#fossil_phylum_id').parent().hide()
	phylums = $('#fossil_phylum_id').html()
	$('#fossil_kingdom_id').change ->
		kingdom = $('#fossil_kingdom_id :selected').text()
		escaped_kingdom = kingdom.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
		options = $(phylums).filter("optgroup[label='#{escaped_kingdom}']").html()
		if options
			$('#fossil_phylum_id').html(options)
			$('#fossil_phylum_id').parent().show()
		else
			$('#fossil_phylum_id').empty()
			$('#fossil_phylum_id').parent().hide()