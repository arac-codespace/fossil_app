# README

Simple fossil database app.

For reference...

This piece of code limits the options with kingdom_id as a condition.

    <div class = "form-group">
        <%= f.label :phylum_id %>
        <%= f.collection_select(:phylum_id, Phylum.where(kingdom_id: 1).to_a, :id, :phylum_name) %>    
    </div>     