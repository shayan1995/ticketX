class EventsController < ApplicationController
  def index
    @events = Event.all
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
  end

  def edit
    @event = Event.find(params[:id])
  end

  def buy
    @event = Event.find(params[:id])
  end

  def update
  end

  def destroy
  end


  private

    def event_params
      params.require(:event).permit(:name, :location, :perform, :price)
    end

end
