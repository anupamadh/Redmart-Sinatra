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

  post '/users' do
      puts params
      puts params[:user]
      #create user name, do it this way so you can check if user can be saved
      @new_user = User.new(params[:user])
      if @new_user.save
        redirect('/users')
      else
      end
    end
end
