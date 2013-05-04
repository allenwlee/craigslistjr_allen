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

get '/create/post' do

  erb :create_post
end

post '/post' do
  @post = Post.create(title: params[:title], description: params[:description], email: params[:email], price: params[:price], category_id: Category.find_by_text(params[:category]).id)
  erb :post
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
