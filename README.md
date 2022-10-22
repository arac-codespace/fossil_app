# README

Marine Species Fossil Database

The purpose of this website is to serve as a sort of introductory paleontology 
booklet, where a person can obtain information about some of the major groups 
of marine phyla as well as a visual reference for a number of species.


# Update
(2022-10-21) - Migrated this app to Rails 7 and changed some settings in the host site.  There were a bunch of deprecated gems which I had to replace, hopefully I won't have to do this again in the near future...  I was unable to solve the font awesome sprockets issue, still the page should work...


# Coding 

The hierarchical structure of the taxonomic rank as well as my access to pertaning 
information made this project ideal for learning and experimenting with relational 
databases.

In this project, the taxonomic models are setup in a way that it allows for the 
(relatively) easy removal or addition of new taxonomic ranks without messing up 
the ids.  The models are related to each other, so it's possible to access the 
attributes of a taxonomic model with any other model as long as it's a child of 
the target model.  This relationship enables some interesting relational operations, 
most of which I'm of ignorant of due to inexperience.  Dynamic select forms 
(refer to Railcasts #88) is an example of what I was able to experiment with thanks 
to the model relations.  

Other than database experimentation, I've also gotten a better understanding of 
routing and a better sense as to the capabilities of JS/jQuery. I've also created 
a much less bloated view and controller scaffold compared to my previous project 
making this project much easier to manage. 

If there's something I'd do different on the coding side of this project, it'd be 
the naming convention that I used for the model attributes and perhaps the routing.
Another thing that I might consider doing in the near future is to add some form of
environment id tag in order to allow the database to be sortable and searchable by
environment type.

If the 'database' part of the site had more entries, I'd also consider individualizing
the taxonomic ranks, perhaps dedicating an entire route to display the children
of a single rank and corresponding species (similar to how PaleoDB/WoRMS is setup).  
Due to the limited numbers of entries at present (around 40 species) though,
doing so would result in barely populated pages. 


All things considered, I'd say I've benefitted greatly from undertaking this 
project and I'm satisfied with how the site turned out for the most part.  
Of course, I'll most likely be changing or perhaps even recreating the website in 
the future once I learn a sufficient number of new technologies/techniques.


As for near future projects, I intend on experimenting with jQuery and interactive 
images next and continue working under the Rails framework for the foreseeable future.
This project also made it clear that I should at the very least gain some proficiency 
in a SQL GUI asap.  I did 'learn' how to access my production db dump with pgAdmin, but
I must admit that the whole thing wasn't too pretty.  
