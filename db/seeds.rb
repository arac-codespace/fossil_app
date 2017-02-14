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
# Old classification?
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
  # Old classification?
  {class_name: 'Foraminifera', kingdom_id: 2, phylum_id: 4},
  
  {class_name: 'Globothalamea', kingdom_id: 2, phylum_id: 5},
  {class_name: 'Tubothalamea', kingdom_id: 2, phylum_id: 4},
  {class_name: 'Gastropoda', kingdom_id: 1, phylum_id: 1},
  {class_name: 'Trilobita', kingdom_id: 1, phylum_id: 6}
]

class_list.each do |x|
  FossilClass.create x
end


# Orders table

order_list = [
  # Bivalves
{order_name: "Myida", kingdom_id: 1, phylum_id: 1, fossil_class_id: 1},
{order_name: "Veneroidea", kingdom_id: 1, phylum_id: 1, fossil_class_id: 1},
{order_name: "Hippuritoida", kingdom_id: 1, phylum_id: 1, fossil_class_id: 1},
{order_name: "Pterioida", kingdom_id: 1, phylum_id: 1, fossil_class_id: 1},
{order_name: "Veneroida", kingdom_id: 1, phylum_id: 1, fossil_class_id: 1},
{order_name: "Pectinida", kingdom_id: 1, phylum_id: 1, fossil_class_id: 1},

# Brachiopodas
{order_name: "Athyridida", kingdom_id: 1, phylum_id: 2, fossil_class_id: 2},
{order_name: "Atrypida", kingdom_id: 1, phylum_id: 2, fossil_class_id: 2},
{order_name: "Rhynchonellida", kingdom_id: 1, phylum_id: 2, fossil_class_id: 2},

# Cephalopods
{order_name: "Belemnitida", kingdom_id: 1, phylum_id: 1, fossil_class_id: 3},
{order_name: "Nautilida", kingdom_id: 1, phylum_id: 1, fossil_class_id: 3},
{order_name: "Ammonoidea", kingdom_id: 1, phylum_id: 3, fossil_class_id: 3},

# Echinodermata
{order_name: "Clypeasteroida", kingdom_id: 1, phylum_id: 3, fossil_class_id: 4},
{order_name: "Holasteroida", kingdom_id: 1, phylum_id: 3, fossil_class_id: 4},
{order_name: "Spatangoida", kingdom_id: 1, phylum_id: 3, fossil_class_id: 4},
{order_name: "Monobathrida", kingdom_id: 1, phylum_id: 3, fossil_class_id: 5},
{order_name: "Hemicidaroida", kingdom_id: 1, phylum_id: 3, fossil_class_id: 4},
{order_name: "Cladida", kingdom_id: 1, phylum_id: 3, fossil_class_id: 5},
{order_name: "Phymosomatoida", kingdom_id: 1, phylum_id: 3, fossil_class_id: 4},

# Forams
{order_name: "Rotalida", kingdom_id: 2, phylum_id: 4, fossil_class_id: 7},
{order_name: "Miliolida", kingdom_id: 2, phylum_id: 4, fossil_class_id: 8},

# Gastropoda
{order_name: "Stylommatophora", kingdom_id: 1, phylum_id: 1, fossil_class_id: 9},
{order_name: "Sorbeoconcha", kingdom_id: 1, phylum_id: 1, fossil_class_id: 9},
{order_name: "Neotaenioglossa", kingdom_id: 1, phylum_id: 1, fossil_class_id: 9},
{order_name: "Neogastropoda", kingdom_id: 1, phylum_id: 1, fossil_class_id: 9},
{order_name: "Neritopsina", kingdom_id: 1, phylum_id: 1, fossil_class_id: 9},

# Arthropoda
{order_name: "Ptychopariida", kingdom_id: 1, phylum_id: 6, fossil_class_id: 10},
{order_name: "Phacopida", kingdom_id: 1, phylum_id: 6, fossil_class_id: 10},
{order_name: "Proetida", kingdom_id: 1, phylum_id: 6, fossil_class_id: 10}

]

order_list.each do |x|
  Order.create x
end

# Family table

family_list = [

{family_name: "Pholadidae", kingdom_id: 1, phylum_id: 1, fossil_class_id: 1, order_id: 1},
{family_name: "Veneridae", kingdom_id: 1, phylum_id: 1, fossil_class_id: 1, order_id: 2},
{family_name: "Radiolitidae", kingdom_id: 1, phylum_id: 1, fossil_class_id: 1, order_id: 3},
{family_name: "Gryphaeidae", kingdom_id: 1, phylum_id: 1, fossil_class_id: 1, order_id: 4},
{family_name: "Teredinidae", kingdom_id: 1, phylum_id: 1, fossil_class_id: 1, order_id: 1},
{family_name: "Veneridae", kingdom_id: 1, phylum_id: 1, fossil_class_id: 1, order_id: 5},
{family_name: "Ostreidae", kingdom_id: 1, phylum_id: 1, fossil_class_id: 1, order_id: 4},
{family_name: "Spondylidae", kingdom_id: 1, phylum_id: 1, fossil_class_id: 1, order_id: 6},

{family_name: "Athyrididae", kingdom_id: 1, phylum_id: 2, fossil_class_id: 2, order_id: 7},
{family_name: "Atrypidae", kingdom_id: 1, phylum_id: 2, fossil_class_id: 2, order_id: 2},
{family_name: "Camarotoechiidae", kingdom_id: 1, phylum_id: 2, fossil_class_id: 2, order_id: 9},
{family_name: "Spiriferidae", kingdom_id: 1, phylum_id: 2, fossil_class_id: 2, order_id: 9},

{family_name: "Belemnitidae", kingdom_id: 1, phylum_id: 1, fossil_class_id: 3, order_id: 10},
{family_name: "Eutrephoceratidae", kingdom_id: 1, phylum_id: 1, fossil_class_id: 3, order_id: 11},
{family_name: "Kosmoceratidae", kingdom_id: 1, phylum_id: 1, fossil_class_id: 3, order_id: 12},
{family_name: "Nautilidae", kingdom_id: 1, phylum_id: 1, fossil_class_id: 3, order_id: 11},

{family_name: "Clypeasteridae", kingdom_id: 1, phylum_id: 3, fossil_class_id: 4, order_id: 12 },
{family_name: "Holasteridae", kingdom_id: 1, phylum_id: 3, fossil_class_id: 4, order_id: 14 },
{family_name: "Brissidae", kingdom_id: 1, phylum_id: 3, fossil_class_id: 4, order_id: 15 },
{family_name: "Eucalyptocrinitidae", kingdom_id: 1, phylum_id: 3, fossil_class_id: 5, order_id: 16},
{family_name: "Hemicidaridae", kingdom_id: 1, phylum_id: 3, fossil_class_id: 4, order_id: 17 },
{family_name: "Micrasteridae", kingdom_id: 1, phylum_id: 3, fossil_class_id: 4, order_id: 15},
{family_name: "Phanocrinidae", kingdom_id: 1, phylum_id: 3, fossil_class_id: 5, order_id: 18},
{family_name: "Phymosomatidae", kingdom_id: 1, phylum_id: 3, fossil_class_id: 4, order_id: 19},
{family_name: "Platycrinitidae", kingdom_id: 1, phylum_id: 3, fossil_class_id: 5, order_id: 16},

{family_name: "Globigerinidae", kingdom_id: 2, phylum_id: 4, fossil_class_id: 7, order_id: 20},
{family_name: "Lepidocyclinidae", kingdom_id: 2, phylum_id: 4, fossil_class_id: 7, order_id: 20},
{family_name: "Miliolidae", kingdom_id: 2, phylum_id: 4, fossil_class_id: 8, order_id: 21},

{family_name: "Camaenidae", kingdom_id: 1, phylum_id: 1, fossil_class_id: 9, order_id: 21},
{family_name: "Cerithiidae", kingdom_id: 1, phylum_id: 1, fossil_class_id: 9, order_id: 23},
{family_name: "Fasciolariidae", kingdom_id: 1, phylum_id: 1, fossil_class_id: 9, order_id: 24},
{family_name: "Muricidae", kingdom_id: 1, phylum_id: 1, fossil_class_id: 9, order_id: 25},
{family_name: "Nertitidae", kingdom_id: 1, phylum_id: 1, fossil_class_id: 9, order_id: 26},
{family_name: "Volutidae", kingdom_id: 1, phylum_id: 1, fossil_class_id: 9, order_id: 25},

{family_name: "Alokistocaridae", kingdom_id: 1, phylum_id: 6, fossil_class_id: 10, order_id:27 },
{family_name: "Calymenidae", kingdom_id: 1, phylum_id: 6, fossil_class_id: 10, order_id:28 },
{family_name: "Aulacopleuridae", kingdom_id: 1, phylum_id: 6, fossil_class_id: 10, order_id:29 },
{family_name: "Phacopidae", kingdom_id: 1, phylum_id: 6, fossil_class_id: 10, order_id:28 },
{family_name: "Olenidae", kingdom_id: 1, phylum_id: 6, fossil_class_id: 10, order_id:27 }
]

family_list.each do |x|
  Family.create x
end