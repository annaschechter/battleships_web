require 'sinatra/base'

class BattleShips < Sinatra::Base
	set :views, Proc.new { File.join(root, '..', "views") }

  get '/' do
    erb :index
  end

  get '/name' do
  	erb :name
  end

  post '/name' do

  	@name = params[:name]
  	if @name == ""
  		redirect '/name'
  	else
  	    erb :message
    end
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
