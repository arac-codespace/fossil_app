# README

Simple fossil database app.

For reference...

This piece of code limits the options with kingdom_id as a condition.

    <!--<div class = "form-group">-->
    <!--    <%= f.label :phylum_id %>-->
    <!--    <%= f.collection_select(:phylum_id, Phylum.where(kingdom_id: 1).to_a, :id, :phylum_name) %>    -->
    <!--</div>     -->
    
This code filters the lower field in accord with its relationship with the first field.
https://www.youtube.com/watch?v=j1zZ4Lgzf9s
http://api.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html
    
    <!--<div class = "form-group">-->
    <!--    <%= f.label :kingdom_id %>-->
    <!--    <%= f.collection_select(:kingdom_id, Kingdom.order(:kingdom_name), :id, :kingdom_name) %>    -->
    <!--</div> -->
    
    <!--<div class = "form-group">-->
    <!--    <%= f.label :phylum_id %>-->
    <!--    <%= f.grouped_collection_select(:phylum_id, Kingdom.order(:kingdom_name), :phylums, :kingdom_name, :id, :phylum_name) %>    -->
    <!--</div>   -->