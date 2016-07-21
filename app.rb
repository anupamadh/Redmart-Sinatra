class RedMartSinatraApp < Sinatra::Base
  get '/' do
  erb  "Hello World"
  end

  get '/about' do
  erb  "About me"
  end

  get '/users' do
    @users = User.all
    erb:'users'
  end

  # get '/books/:id' do
  #   erb:'each_book'
  # end

end
