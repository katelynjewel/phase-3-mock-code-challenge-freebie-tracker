puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
dunder_mifflin = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
meseeks = Dev.create(name: "Mr. Meseeks")
pop = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
Freebie.create(item_name: "T-shirt", value: 20, company_id: google.id, dev_id: rick.id )
Freebie.create(item_name: "Mug", value: 16, company_id: facebook.id, dev_id: morty.id)
Freebie.create(item_name: "Sticker", value: 5, company_id: dunder_mifflin.id, dev_id: meseeks.id)
Freebie.create(item_name: "Blanket", value: 24, company_id: enron.id, dev_id: pop.id)
20.times do
    Freebie.create(
        item_name: Faker::ElectricalComponents.active, 
        value: rand(1-20), 
        company_id: Company.all.sample.id, 
        dev_id: Dev.all.sample.id
    )
end

puts "Seeding done!"
