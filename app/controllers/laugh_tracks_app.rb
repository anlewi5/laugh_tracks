class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.find_by(params[:age])
    else
      @comedians = Comedian.all
    end
    @specials = Special.all
    erb :index
  end

  get '/comedians?age={age}' do
    erb :show
  end
end
