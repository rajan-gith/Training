class EventController < ApplicationController
  def index
    @events = Event.all
  end

  def show
  end

  def delete
  end

  def edit
    
  end

  def update
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save()
      redirect_to event_index_path
    else
      render new
    end

  end
  private
  def event_params
    params.require(:event).permit(:title)
  end
end
