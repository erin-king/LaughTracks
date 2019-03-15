class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.where(params)
    erb :index
  end

end
