namespace :utils do

  #task criado para preencher o banco, melhor utilizar ela para testarmos os gets em apis


  desc "Popular Banco de dados"
  task seed: :environment do





#cria 10 tipos de contatos

10.times do |i|

Kind.create!(

description:"adsdasdsa"




)
end


#cria 10 contatos com um exemplo aleatorio de tipo
10.times do |i|

Contact.create!(

        name: Faker::Name.name,
        email: Faker::Internet.email,
        kind: Kind.all.sample,
        rmk: Faker::Lorem.paragraph([1,2])





    )
    puts ("Contatos :#{i}")

end




#para cada contato existente é criado um endereco

Contact.all.each do |contact|

Address.create!(
  street: Faker::Address.street_address,
  city:Faker::Address.city,
  state:Faker:: Address.state_abbr,
  contact: contact
)

end



#para cada contato existente é criado uma quatidade aleatorio de numero de telefone dentro do intervalo de 1 a 5 

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
