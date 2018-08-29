require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/display_puppy' do
    pup = Puppy.new(params[:name], params[:age], params[:breed])
    @name = pup.name
    @age = pup.age
    @breed = pup.breed
    erb :display_puppy
  end

  get '/display_puppy' do
    erb :display_puppy
  end

end
