namespace :utils do
  desc "Popular Banco de dados"
  task seed: :environment do



10.times do |i|

Kind.create!(

description:"adsdasdsa"




)
end



10.times do |i|

Contact.create!(

        name: Faker::Name.name,
        email: Faker::Internet.email,
        kind: Kind.all.sample,
        rmk: Faker::Lorem.paragraph([1,2])





    )
    puts ("Contatos :#{i}")

end

byebug

Contact.all.each do |contact|

Address.create!(
  street: Faker::Address.street_address,
  city:Faker::Address.city,
  state:Faker:: Address.state_abbr,
  contact: contact
)

end


Contact.all.each do |contact|

      Random.rand(1..5).times do |i|
      Phone.create!(
      phone: Faker::PhoneNumber.phone_number,
      contact: contact
      )
      end

  end





  end

end
