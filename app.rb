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

  get '/users/:id' do
    @user_id = User.find(params[:id])
    erb:'users/show'
  end

end
