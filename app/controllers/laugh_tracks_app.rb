class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.where(params)
    erb :index
  end

  get '/comedians/new' do
    erb :new
  end

  post '/comedians' do
    Comedian.create(name: params[:comedian][:name],
                    age: params[:comedian][:age],
                    hometown: params[:comedian][:hometown])
    redirect '/comedians'
  end

end
