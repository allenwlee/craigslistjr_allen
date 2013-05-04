10.times do 
  Post.create(email: Faker::Internet.email, title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, phone: Faker::PhoneNumber.phone_number, price: rand(2000)+1)  
end

categories = %w(Drugs Sex Whores Cars Bikes )
categories.each do |category|
  Category.create :text => category
end

Post.all.each do |p|
  Post.update(p.id, category_id: rand(5) + 1)
end