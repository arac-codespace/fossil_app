# README

Marine Species Fossil Database

The purpose of this website is to serve as a sort of introductory paleontology 
booklet, where a person can obtain information about some of the major groups 
of marine phyla as well as a visual reference for a number of species.


Coding 
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
All things considered, I'd say I've benefitted greatly from undertaking this 
project and I'm satisfied with how the site turned out.  Of course, I don't 
discard changing the website dramatically in the future once I learn new 
method/techniques.