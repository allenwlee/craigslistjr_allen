get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/categories' do
  @categories = Category.all
  erb :categories
end

get '/posts' do
end

get '/posts' do
end

get '/post/:id' do
end

get '/post/create' do
end


get '/post/:id/edit' do
end


get '/category/:id' do
end

get '_nav' do
  erb :_nav
end
