class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.all
    erb :'/comedian/index'
  end
end
