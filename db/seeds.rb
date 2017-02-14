# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# # Kingdom table
Kingdom.create(kingdom_name: 'Animalia')
Kingdom.create(kingdom_name: 'Protozoa')

# # Phylum table

phylum_list = [
{phylum_name:'Mollusca', kingdom_id: 1}, 
{phylum_name:'Brachiopoda', kingdom_id: 1},
{phylum_name:'Echinodermata', kingdom_id: 1},
{phylum_name:'Foraminifera', kingdom_id: 2},
{phylum_name:'Sarcomastigophora', kingdom_id: 2},
{phylum_name:'Arthropoda', kingdom_id: 1}
]

phylum_list.each do |x|
  Phylum.create x
end

# Class table
class_list = [
  {class_name: 'Bivalvia', kingdom_id: 1, phylum_id: 1}, 
  {class_name: 'Rhynchonellata', kingdom_id: 1, phylum_id: 2},
  {class_name: 'Cephalopoda', kingdom_id: 1, phylum_id: 1},
  {class_name: 'Echinoidea', kingdom_id: 1, phylum_id: 3},
  {class_name: 'Crinoidea', kingdom_id: 1, phylum_id: 3},
  {class_name: 'Foraminifera', kingdom_id: 2, phylum_id: 4},
  {class_name: 'Rhizopoda', kingdom_id: 2, phylum_id: 5},
  {class_name: 'Granuloreticulosea', kingdom_id: 2, phylum_id: 4},
  {class_name: 'Gastropoda', kingdom_id: 1, phylum_id: 1},
  {class_name: 'Trilobita', kingdom_id: 1, phylum_id: 6}
]

class_list.each do |x|
  FossilClass.create x
end


