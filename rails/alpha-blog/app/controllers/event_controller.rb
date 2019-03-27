class EventController < ApplicationController
  def index
    @events = Event.all
  end

  def new_event_for_user

  end

  def show_for_user
    @user = User.find(params[:u_id])
    @events = @user.events
    render('show')
  end

  def add_event_ids_to_user
    # debugger
    @user = User.find(params[:u_id])
    @user.update(event_ids_params)
    redirect_to event_show_path(:u_id => @user.id)
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
  def event_ids_params
    params.require(:user).permit(event_ids: [])
  end
end
