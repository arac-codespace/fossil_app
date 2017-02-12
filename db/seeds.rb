# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Kingdom table
Kingdom.create(kingdom_name: 'Animalia')
Kingdom.create(kingdom_name: 'Protozoa')

# Phylum table
Phylum.create(phylum_name: 'Mollusca', kingdom_id: 1)
Phylum.create(phylum_name: 'Foraminifera', kingdom_id: 2)
Phylum.create(phylum_name: 'Sarcomastigophora', kingdom_id: 2)
Phylum.create(phylum_name: 'brachiopoda', kingdom_id: 1)