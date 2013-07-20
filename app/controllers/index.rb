get '/' do
  @events = Event.order("date")
  erb :index
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show
end

get '/events/new' do
  erb :create_event
end

post '/events/create' do
  @event = Event.new(params[:event])
  @events = Event.all
  if @event.save
    erb :event_show
  else
    @params = params
    @individual_messages = @event.errors.messages
    erb :errors
  end
end
