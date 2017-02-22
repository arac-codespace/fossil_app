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

animalia = Kingdom.find_by kingdom_name: 'Animalia'
protozoa = Kingdom.find_by kingdom_name: 'Protozoa'


# # Phylum table
phylum_list = [
{phylum_name:'Mollusca', kingdom_id: animalia.id}, 
{phylum_name:'Brachiopoda', kingdom_id: animalia.id},
{phylum_name:'Echinodermata', kingdom_id: animalia.id},
{phylum_name:'Foraminifera', kingdom_id: protozoa.id},
{phylum_name:'Arthropoda', kingdom_id: animalia.id}
]

phylum_list.each do |x|
  Phylum.create x
end

mollusca = Phylum.find_by phylum_name: 'Mollusca'
brachiopoda = Phylum.find_by phylum_name: 'Brachiopoda'
echinodermata = Phylum.find_by phylum_name: 'Echinodermata'
foraminifera = Phylum.find_by phylum_name: 'Foraminifera'
arthropoda = Phylum.find_by phylum_name: 'Arthropoda'


# Class table


class_list = [
  {class_name: 'Bivalvia', kingdom_id: animalia.id, phylum_id: mollusca.id}, 
  {class_name: 'Rhynchonellata', kingdom_id: animalia.id, phylum_id: brachiopoda.id},
  {class_name: 'Cephalopoda', kingdom_id: animalia.id, phylum_id: mollusca.id},
  {class_name: 'Echinoidea', kingdom_id: animalia.id, phylum_id: echinodermata.id},
  {class_name: 'Crinoidea', kingdom_id: animalia.id, phylum_id: echinodermata.id},
  # Old classification?
  # {class_name: 'Foraminifera', kingdom_id: protozoa.id, phylum_id: foraminifera.id},
  
  {class_name: 'Globothalamea', kingdom_id: protozoa.id, phylum_id: foraminifera.id},
  {class_name: 'Tubothalamea', kingdom_id: protozoa.id, phylum_id: foraminifera.id},
  {class_name: 'Gastropoda', kingdom_id: animalia.id, phylum_id: mollusca.id},
  {class_name: 'Trilobita', kingdom_id: animalia.id, phylum_id: arthropoda.id}
]

class_list.each do |x|
  FossilClass.create x
end

bivalvia = FossilClass.find_by class_name: 'Bivalvia'
rhynchonellata = FossilClass.find_by class_name: 'Rhynchonellata'
cephalopoda = FossilClass.find_by class_name: 'Cephalopoda'
echinoidea = FossilClass.find_by class_name: 'Echinoidea'
crinoidea = FossilClass.find_by class_name: 'Crinoidea'
globothalamea = FossilClass.find_by class_name: 'Globothalamea'
tubothalamea = FossilClass.find_by class_name: 'Tubothalamea'
gastropoda = FossilClass.find_by class_name: 'Gastropoda'
trilobita = FossilClass.find_by class_name: 'Trilobita'





# Orders table

order_list = [
  # Bivalves
{order_name: "Myida", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id},
{order_name: "Veneroidea", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id},
{order_name: "Hippuritoida", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id},
{order_name: "Pterioida", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id},
{order_name: "Veneroida", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id},
{order_name: "Pectinida", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id},

# Brachiopodas
{order_name: "Athyridida", kingdom_id: animalia.id, phylum_id: brachiopoda.id, fossil_class_id: rhynchonellata.id},
{order_name: "Atrypida", kingdom_id: animalia.id, phylum_id: brachiopoda.id, fossil_class_id: rhynchonellata.id},
{order_name: "Rhynchonellida", kingdom_id: animalia.id, phylum_id: brachiopoda.id, fossil_class_id: rhynchonellata.id},

# Cephalopods
{order_name: "Belemnitida", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: cephalopoda.id},
{order_name: "Nautilida", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: cephalopoda.id},
{order_name: "Ammonoidea", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: cephalopoda.id},

# Echinodermata
{order_name: "Clypeasteroida", kingdom_id: animalia.id, phylum_id: echinoidea.id, fossil_class_id: echinoidea.id},
{order_name: "Holasteroida", kingdom_id: animalia.id, phylum_id: echinoidea.id, fossil_class_id: echinoidea.id},
{order_name: "Spatangoida", kingdom_id: animalia.id, phylum_id: echinoidea.id, fossil_class_id: echinoidea.id},
{order_name: "Monobathrida", kingdom_id: animalia.id, phylum_id: echinoidea.id, fossil_class_id: crinoidea.id},
{order_name: "Hemicidaroida", kingdom_id: animalia.id, phylum_id: echinoidea.id, fossil_class_id: echinoidea.id},
{order_name: "Cladida", kingdom_id: animalia.id, phylum_id: echinoidea.id, fossil_class_id: crinoidea.id},
{order_name: "Phymosomatoida", kingdom_id: animalia.id, phylum_id: echinoidea.id, fossil_class_id: echinoidea.id},

# Forams
{order_name: "Rotaliida", kingdom_id: protozoa.id, phylum_id: foraminifera.id, fossil_class_id: globothalamea.id},
{order_name: "Miliolida", kingdom_id: protozoa.id, phylum_id: foraminifera.id, fossil_class_id: tubothalamea.id},

# Gastropoda
{order_name: "Stylommatophora", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: gastropoda.id},
{order_name: "Sorbeoconcha", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: gastropoda.id},
{order_name: "Neotaenioglossa", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: gastropoda.id},
{order_name: "Neogastropoda", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: gastropoda.id},
{order_name: "Neritopsina", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: gastropoda.id},

# Arthropoda
{order_name: "Ptychopariida", kingdom_id: animalia.id, phylum_id: arthropoda.id, fossil_class_id: trilobita.id},
{order_name: "Phacopida", kingdom_id: animalia.id, phylum_id: arthropoda.id, fossil_class_id: trilobita.id},
{order_name: "Proetida", kingdom_id: animalia.id, phylum_id: arthropoda.id, fossil_class_id: trilobita.id}

]

order_list.each do |x|
  Order.create x
end

myida = Order.find_by order_name: 'Myida'
hippuritoida = Order.find_by order_name: 'Hippuritoida'
pterioida = Order.find_by order_name: 'Pterioida'
veneroida = Order.find_by order_name: 'Veneroida'
pectinida = Order.find_by order_name: 'Pectinida'
athyridida = Order.find_by order_name: 'Athyridida'
atrypida = Order.find_by order_name: 'Atrypida'
rhynchonellida = Order.find_by order_name: 'Rhynchonellida'
belemnitida = Order.find_by order_name: 'Belemnitida'
nautilida = Order.find_by order_name: 'Nautilida'
ammonoidea = Order.find_by order_name: 'Ammonoidea'
clypeasteroida = Order.find_by order_name: 'Clypeasteroida'
holasteroida = Order.find_by order_name: 'Holasteroida'
spatangoida = Order.find_by order_name: 'Spatangoida'
monobathrida = Order.find_by order_name: 'Monobathrida'
hemicidaroida = Order.find_by order_name: 'Hemicidaroida'
cladida = Order.find_by order_name: 'Cladida'
phymosomatoida = Order.find_by order_name: 'Phymosomatoida'
rotaliida = Order.find_by order_name: 'Rotaliida'
miliolida = Order.find_by order_name: 'Miliolida'
stylommatophora = Order.find_by order_name: 'Stylommatophora'
sorbeoconcha = Order.find_by order_name: 'Sorbeoconcha'
neotaenioglossa = Order.find_by order_name: 'Neotaenioglossa'
neogastropoda = Order.find_by order_name: 'Neogastropoda'
neritopsina = Order.find_by order_name: 'Neritopsina'
ptychopariida = Order.find_by order_name: 'Ptychopariida'
phacopida = Order.find_by order_name: 'Phacopida'
proetida = Order.find_by order_name: 'Proetida'


# Family table

family_list = [

# Bivalves
{family_name: "Pholadidae", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id, order_id: myida.id},
{family_name: "Veneridae", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id, order_id: veneroida.id},
{family_name: "Radiolitidae", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id, order_id: hippuritoida.id},
{family_name: "Gryphaeidae", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id, order_id: pterioida.id},
{family_name: "Teredinidae", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id, order_id: myida.id},
{family_name: "Ostreidae", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id, order_id: pterioida.id},
{family_name: "Spondylidae", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id, order_id: pectinida.id},

# Brachiopods
{family_name: "Athyrididae", kingdom_id: animalia.id, phylum_id: brachiopoda.id, fossil_class_id: rhynchonellata.id, order_id: athyridida.id},
{family_name: "Atrypidae", kingdom_id: animalia.id, phylum_id: brachiopoda.id, fossil_class_id: rhynchonellata.id, order_id: atrypida.id},
{family_name: "Camarotoechiidae", kingdom_id: animalia.id, phylum_id: brachiopoda.id, fossil_class_id: rhynchonellata.id, order_id: rhynchonellida.id},
{family_name: "Spiriferidae", kingdom_id: animalia.id, phylum_id: brachiopoda.id, fossil_class_id: rhynchonellata.id, order_id: rhynchonellida.id},

# Cephalopods
{family_name: "Belemnitidae", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: cephalopoda.id, order_id: belemnitida.id},
{family_name: "Eutrephoceratidae", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: cephalopoda.id, order_id: nautilida.id},
{family_name: "Kosmoceratidae", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: cephalopoda.id, order_id: ammonoidea.id},
{family_name: "Nautilidae", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: cephalopoda.id, order_id: nautilida.id},

# Echinodermata
{family_name: "Clypeasteridae", kingdom_id: animalia.id, phylum_id: echinodermata.id, fossil_class_id: echinoidea.id, order_id: clypeasteroida.id },
{family_name: "Holasteridae", kingdom_id: animalia.id, phylum_id: echinodermata.id, fossil_class_id: echinoidea.id, order_id: holasteroida.id },
{family_name: "Brissidae", kingdom_id: animalia.id, phylum_id: echinodermata.id, fossil_class_id: echinoidea.id, order_id: spatangoida.id },
{family_name: "Eucalyptocrinitidae", kingdom_id: animalia.id, phylum_id: echinodermata.id, fossil_class_id: crinoidea.id, order_id: monobathrida.id},
{family_name: "Hemicidaridae", kingdom_id: animalia.id, phylum_id: echinodermata.id, fossil_class_id: echinoidea.id, order_id: hemicidaroida.id },
{family_name: "Micrasteridae", kingdom_id: animalia.id, phylum_id: echinodermata.id, fossil_class_id: echinoidea.id, order_id: spatangoida.id},
{family_name: "Phanocrinidae", kingdom_id: animalia.id, phylum_id: echinodermata.id, fossil_class_id: crinoidea.id, order_id: cladida.id},
{family_name: "Phymosomatidae", kingdom_id: animalia.id, phylum_id: echinodermata.id, fossil_class_id: echinoidea.id, order_id: phymosomatoida.id},
{family_name: "Platycrinitidae", kingdom_id: animalia.id, phylum_id: echinodermata.id, fossil_class_id: crinoidea.id, order_id: monobathrida.id},

# Forams
{family_name: "Globigerinidae", kingdom_id: protozoa.id, phylum_id: foraminifera.id, fossil_class_id: globothalamea.id, order_id: rotaliida.id},
{family_name: "Lepidocyclinidae", kingdom_id: protozoa.id, phylum_id: foraminifera.id, fossil_class_id: globothalamea.id, order_id: rotaliida.id},
{family_name: "Miliolidae", kingdom_id: protozoa.id, phylum_id: foraminifera.id, fossil_class_id: tubothalamea.id, order_id: miliolida.id},

# Gastropods
{family_name: "Camaenidae", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: gastropoda.id, order_id: stylommatophora.id},
{family_name: "Cerithiidae", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: gastropoda.id, order_id: sorbeoconcha.id},
{family_name: "Fasciolariidae", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: gastropoda.id, order_id: neotaenioglossa.id},
{family_name: "Muricidae", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: gastropoda.id, order_id: neogastropoda.id},
{family_name: "Neritidae", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: gastropoda.id, order_id: neritopsina.id},
{family_name: "Volutidae", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: gastropoda.id, order_id: neogastropoda.id},

# Arthropods
{family_name: "Alokistocaridae", kingdom_id: animalia.id, phylum_id: arthropoda.id, fossil_class_id: trilobita.id, order_id: ptychopariida.id },
{family_name: "Calymenidae", kingdom_id: animalia.id, phylum_id: arthropoda.id, fossil_class_id: trilobita.id, order_id: phacopida.id },
{family_name: "Aulacopleuridae", kingdom_id: animalia.id, phylum_id: arthropoda.id, fossil_class_id: trilobita.id, order_id: proetida.id },
{family_name: "Phacopidae", kingdom_id: animalia.id, phylum_id: arthropoda.id, fossil_class_id: trilobita.id, order_id: phacopida.id },
{family_name: "Olenidae", kingdom_id: animalia.id, phylum_id: arthropoda.id, fossil_class_id: trilobita.id, order_id: ptychopariida.id }
]

family_list.each do |x|
  Family.create x
end



pholadidae = Family.find_by family_name: 'Pholadidae'
veneridae = Family.find_by family_name: 'Veneridae'
radiolitidae = Family.find_by family_name: 'Radiolitidae'
gryphaeidae = Family.find_by family_name: 'Gryphaeidae'
teredinidae = Family.find_by family_name: 'Teredinidae'
ostreidae = Family.find_by family_name: 'Ostreidae'
spondylidae = Family.find_by family_name: 'Spondylidae'
athyrididae = Family.find_by family_name: 'Athyrididae'
atrypidae = Family.find_by family_name: 'Atrypidae'
camarotoechiidae = Family.find_by family_name: 'Camarotoechiidae'
spiriferidae = Family.find_by family_name: 'Spiriferidae'
belemnitidae = Family.find_by family_name: 'Belemnitidae'
eutrephoceratidae = Family.find_by family_name: 'Eutrephoceratidae'
kosmoceratidae = Family.find_by family_name: 'Kosmoceratidae'
nautilidae = Family.find_by family_name: 'Nautilidae'
clypeasteridae = Family.find_by family_name: 'Clypeasteridae'
holasteridae = Family.find_by family_name: 'Holasteridae'
brissidae = Family.find_by family_name: 'Brissidae'
eucalyptocrinitidae = Family.find_by family_name: 'Eucalyptocrinitidae'
hemicidaridae = Family.find_by family_name: 'Hemicidaridae'
micrasteridae = Family.find_by family_name: 'Micrasteridae'
phanocrinidae = Family.find_by family_name: 'Phanocrinidae'
phymosomatidae = Family.find_by family_name: 'Phymosomatidae'
platycrinitidae = Family.find_by family_name: 'Platycrinitidae'
globigerinidae = Family.find_by family_name: 'Globigerinidae'
lepidocyclinidae = Family.find_by family_name: 'Lepidocyclinidae'
miliolidae = Family.find_by family_name: 'Miliolidae'
camaenidae = Family.find_by family_name: 'Camaenidae'
cerithiidae = Family.find_by family_name: 'Cerithiidae'
fasciolariidae = Family.find_by family_name: 'Fasciolariidae'
muricidae = Family.find_by family_name: 'Muricidae'
neritidae = Family.find_by family_name: 'Neritidae'
volutidae = Family.find_by family_name: 'Volutidae'
alokistocaridae = Family.find_by family_name: 'Alokistocaridae'
calymenidae = Family.find_by family_name: 'Calymenidae'
aulacopleuridae = Family.find_by family_name: 'Aulacopleuridae'
phacopidae = Family.find_by family_name: 'Phacopidae'
olenidae = Family.find_by family_name: 'Olenidae'


# Genus table

genus_list = [

# Bivalves
{genus_name: "Barnea", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id, order_id: myida.id, family_id: pholadidae.id},
{genus_name: "Chione", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id, order_id: veneroida.id, family_id: veneridae.id},
{genus_name: "Eoradiolites", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id, order_id: hippuritoida.id, family_id: radiolitidae.id},
{genus_name: "Gryphaea", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id, order_id: pterioida.id, family_id: gryphaeidae.id},
{genus_name: "Kuphus", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id, order_id: myida.id, family_id: teredinidae.id},
{genus_name: "Mercenaria", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id, order_id: veneroida.id, family_id: veneridae.id},
{genus_name: "Ostrea", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id, order_id: pterioida.id, family_id: ostreidae.id},
{genus_name: "Pitar", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id, order_id: veneroida.id, family_id: veneridae.id},
{genus_name: "Spondylus", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: bivalvia.id, order_id: pectinida.id, family_id: spondylidae.id},

# Brachiopods
{genus_name: "Anathyris", kingdom_id: animalia.id, phylum_id: brachiopoda.id, fossil_class_id: rhynchonellata.id, order_id: athyridida.id, family_id: athyrididae.id},
{genus_name: "Atrypa", kingdom_id: animalia.id, phylum_id: brachiopoda.id, fossil_class_id: rhynchonellata.id, order_id: atrypida.id, family_id: atrypidae.id},
{genus_name: "Camarotoachia", kingdom_id: animalia.id, phylum_id: brachiopoda.id, fossil_class_id: rhynchonellata.id, order_id: rhynchonellida.id, family_id: camarotoechiidae.id},
{genus_name: "Spirifer", kingdom_id: animalia.id, phylum_id: brachiopoda.id, fossil_class_id: rhynchonellata.id, order_id: rhynchonellida.id, family_id: spiriferidae.id}, 
# fix spirifer to order spiriferida !

# Cephalopods
{genus_name: "Belemnites", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: cephalopoda.id, order_id: belemnitida.id, family_id: belemnitidae.id},
{genus_name: "Eutrephoceras", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: cephalopoda.id, order_id: nautilida.id, family_id: eutrephoceratidae.id},
{genus_name: "Kosmoceras", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: cephalopoda.id, order_id: ammonoidea.id, family_id: kosmoceratidae.id},
{genus_name: "Nautilus", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: cephalopoda.id, order_id: nautilida.id, family_id: nautilidae.id},

# Echinodermata
{genus_name: "Clypeaster", kingdom_id: animalia.id, phylum_id: echinodermata.id, fossil_class_id: echinoidea.id, order_id: clypeasteroida.id , family_id: clypeasteridae.id},
{genus_name: "Echinocorys", kingdom_id: animalia.id, phylum_id: echinodermata.id, fossil_class_id: echinoidea.id, order_id: holasteroida.id , family_id: holasteridae.id},
{genus_name: "Eupatagus", kingdom_id: animalia.id, phylum_id: echinodermata.id, fossil_class_id: echinoidea.id, order_id: spatangoida.id , family_id: brissidae.id},
{genus_name: "Eucalyptocrinites", kingdom_id: animalia.id, phylum_id: echinodermata.id, fossil_class_id: crinoidea.id, order_id: monobathrida.id, family_id: eucalyptocrinitidae.id},
{genus_name: "Hemicidaris", kingdom_id: animalia.id, phylum_id: echinodermata.id, fossil_class_id: echinoidea.id, order_id: hemicidaroida.id , family_id: hemicidaridae.id},
{genus_name: "Micraster", kingdom_id: animalia.id, phylum_id: echinodermata.id, fossil_class_id: echinoidea.id, order_id: spatangoida.id, family_id: micrasteridae.id},
{genus_name: "Phanocrinus", kingdom_id: animalia.id, phylum_id: echinodermata.id, fossil_class_id: crinoidea.id, order_id: cladida.id, family_id: phanocrinidae.id},
{genus_name: "Phymosoma", kingdom_id: animalia.id, phylum_id: echinodermata.id, fossil_class_id: echinoidea.id, order_id: phymosomatoida.id, family_id: phymosomatidae.id},
{genus_name: "Platycrinites", kingdom_id: animalia.id, phylum_id: echinodermata.id, fossil_class_id: crinoidea.id, order_id: monobathrida.id, family_id: platycrinitidae.id},

# Forams
{genus_name: "Globigerina", kingdom_id: protozoa.id, phylum_id: foraminifera.id, fossil_class_id: globothalamea.id, order_id: rotaliida.id, family_id: globigerinidae.id},
{genus_name: "Lepidocyclina", kingdom_id: protozoa.id, phylum_id: foraminifera.id, fossil_class_id: globothalamea.id, order_id: rotaliida.id, family_id: lepidocyclinidae.id},
{genus_name: "Quinqueloculina", kingdom_id: protozoa.id, phylum_id: foraminifera.id, fossil_class_id: tubothalamea.id, order_id: miliolida.id, family_id: miliolidae.id},

# Gastropods
{genus_name: "Caracolus", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: gastropoda.id, order_id: stylommatophora.id, family_id: camaenidae.id},
{genus_name: "Cerithium", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: gastropoda.id, order_id: sorbeoconcha.id, family_id: cerithiidae.id},
{genus_name: "Fasciolaria", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: gastropoda.id, order_id: neotaenioglossa.id, family_id: fasciolariidae.id},
{genus_name: "Fusinus", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: gastropoda.id, order_id: neotaenioglossa.id, family_id: fasciolariidae.id},
{genus_name: "Murex", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: gastropoda.id, order_id: neogastropoda.id, family_id: muricidae.id},
{genus_name: "Nerita", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: gastropoda.id, order_id: neritopsina.id, family_id: neritidae.id},
{genus_name: "Voluta", kingdom_id: animalia.id, phylum_id: mollusca.id, fossil_class_id: gastropoda.id, order_id: neogastropoda.id, family_id: volutidae.id},

# Arthropods
{genus_name: "Elrathia", kingdom_id: animalia.id, phylum_id: arthropoda.id, fossil_class_id: trilobita.id, order_id: ptychopariida.id, family_id: alokistocaridae.id},
{genus_name: "Flexicalymene", kingdom_id: animalia.id, phylum_id: arthropoda.id, fossil_class_id: trilobita.id, order_id: phacopida.id , family_id: calymenidae.id},
{genus_name: "Otarion", kingdom_id: animalia.id, phylum_id: arthropoda.id, fossil_class_id: trilobita.id, order_id: proetida.id , family_id: aulacopleuridae.id},
{genus_name: "Phacops", kingdom_id: animalia.id, phylum_id: arthropoda.id, fossil_class_id: trilobita.id, order_id: phacopida.id , family_id: phacopidae.id},
{genus_name: "Triarthrus", kingdom_id: animalia.id, phylum_id: arthropoda.id, fossil_class_id: trilobita.id, order_id: ptychopariida.id, family_id: olenidae.id }
]

genus_list.each do |x|
  Genera.create x
end


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')