class RedMartSinatraApp < Sinatra::Base
  get '/' do
  erb  "Hello World"
  end

  get '/about' do
  erb  "About me"
  end

  get '/users' do
    @users = User.all
    erb:'users/index'
  end

  get '/users/new' do

    erb:'users/new'
  end

  get '/users/:id' do
    @user_id = User.find(params[:id])
    erb:'users/show'
  end

  get "/users/:id/edit" do
    @user = User.find(params[:id])
    erb:'/users/edit'
  end

  post '/users' do
      puts params[:user]
      #create user name, do it this way so you can check if user can be saved
      @new_user = User.new(params[:user])
      if @new_user.save
        redirect('/users')
      else
      end
    end

    put '/users/:id' do
      @updated_user = User.find(params[:id])
      if @updated_user.update_attributes(params[:user])
      redirect('/users')
      end
    end

    delete '/users/:id' do

    @deleted_user = User.find(params[:id])

    if @deleted_user.destroy
      redirect('/users')
    else
      erb :"users/#{ @deleted_user.id }"
    end
  end

  get '/products' do
    @products = Product.all

    erb:'products/index'
  end

  get '/products/new' do

    erb:'products/new'
  end

  get '/products/:id' do
    @product_id = Product.find(params[:id])
    erb:'products/show'
  end

  get "/products/:id/edit" do
    @product = Product.find(params[:id])
    erb:'/products/edit'
  end

  post '/products' do
      puts params[:product]
      #create user name, do it this way so you can check if user can be saved
      @new_product = Product.new(params[:product])
      if @new_product.save
        redirect('/products')
      else
      end
    end

    put '/products/:id' do
      @updated_product = Product.find(params[:id])
      if @updated_product.update_attributes(params[:product])
      redirect('/products')
      end
    end

    delete '/products/:id' do

    @deleted_product = Product.find(params[:id])

    if @deleted_product.destroy
      redirect('/products')
    else
      erb :"products/#{ @deleted_product.id }"
    end
  end

end
