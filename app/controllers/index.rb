get '/' do
  @posts = Post.all
  erb :index
end

get '/categories' do
  @categories = Category.all
  erb :categories
end

get '/post/:id' do
  @post = Post.find(params[:id])
  erb :post
end

get '/post/:id' do
  erb :post
end

get '/post/create' do
end


get '/post/:id/edit' do
end

get '/category/:id' do
  @category = Category.find(params[:id])
  erb :category
end

post '/category/:id' do
  @category = Category.find(params[:id])
  erb :category
end


get '_nav' do
  erb :_nav
end
