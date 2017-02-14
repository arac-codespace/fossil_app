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
    
NOTE!  Just running db:seed will NOT run the ruby code in the seeds file and create the records.

db:create creates the database for the current env
db:create:all creates the databases for all envs
db:drop drops the database for the current env
db:drop:all drops the databases for all envs
db:migrate runs migrations for the current env that have not run yet
db:migrate:up runs one specific migration
db:migrate:down rolls back one specific migration
db:migrate:status shows current migration status
db:rollback rolls back the last migration
db:forward advances the current schema version to the next one
db:seed (only) runs the db/seed.rb file
db:schema:load loads the schema into the current env's database
db:schema:dump dumps the current env's schema (and seems to create the db as well)
db:setup runs db:schema:load, db:seed
db:reset runs db:drop db:setup
db:migrate:redo runs (db:migrate:down db:migrate:up) or (db:rollback db:migrate) depending on the specified migration
db:migrate:reset runs db:drop db:create db:migrate