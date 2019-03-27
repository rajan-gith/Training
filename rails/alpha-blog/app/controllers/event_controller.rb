class EventController < ApplicationController
  def index
    @events = Event.all
  end

  def show
  end

  def delete
    @event = Event.find(params[:e_id])
    @event.destroy
    redirect_to :action => "index"
  end

  def edit
    @event = Event.find(params[:e_id])
  end

  def update
    @event = Event.find(params[:e_id])
    if @event.update(event_params)
      redirect_to event_index_path
    else
      render 'edit'
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save()
      redirect_to event_index_path
    else
      render 'new'
    end

  end
  private
  def event_params
    params.require(:event).permit(:title)
  end
end
