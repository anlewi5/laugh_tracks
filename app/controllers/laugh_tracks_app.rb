class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    erb :'/comedian/index'
  end
end
