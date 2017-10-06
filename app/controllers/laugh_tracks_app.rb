class LaughTracksApp < Sinatra::Base
  
  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
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
