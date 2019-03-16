class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.where(params)
    erb :index
  end

  get '/comedians/new' do
    erb :new
  end

end

# post '/tasks' do
#   task = Task.new(params[:task])
#   task.save
#   redirect '/tasks'
# end
