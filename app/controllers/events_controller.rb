class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  def my
    @host_events = current_user.hostevents
    @orderevents = current_user.events
  end

  def new
  end

  def create
    if current_user.type = "Host"
      new_event = Event.create(event_params)
      new_event.user = current_user
      if new_event.save
        #redirect_to user_path(current_user)
        redirect_to root_path
      else
        flash[:error] = new_event.errors.full_messages.to_sentence
        redirect_to create_path
      end
    else
      #flash some error?
      redirect_to root_path
    end
  end

  def show
    @event = Event.find(params[:id])
    @o = Order.find_by user: current_user, event: @event
  end

  def edit
    @event = Event.find(params[:id])
    @event_name = @event.name
    @event_location = @event.location
    @event_perform = @event.performer
    @event_price = @event.price
    @event_max_ticket = @event.max_ticket
    @event_descrip = @event.descrip
  end

  def buy
    @event = Event.find(params[:id])

  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)

      redirect_to root_path
    else
      flash[:error] = @event.errors.full_messages.to_sentence
      redirect_to edit_path
    end
  end

  def destroy

    @event = Event.find(params[:id])

  end


  private

    def event_params
      params.permit(:name, :location, :performer, :price, :descrip, :max_ticket)
    end

end
