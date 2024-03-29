class EventsController < ApplicationController
  before_action :authenticate_user!, except: :index
 
  def index
    @events = Event.all
    @all_attendance_records = AttendanceRecord.all
    @new_attendance_record = AttendanceRecord.new
  end

  def show
    @event = Event.find(params[:id])
 
  end
  
  def new
    @event = Event.new 
  end

  def create
    @event = Event.new(event_params)
    @event.creator_id = current_user.id
    if @event.save
      redirect_to @event
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit 
    @event = Event.find(params[:id])
  end

  def update 
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to @event
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    
    redirect_to root_path, status: :see_other
  end

  private
  def event_params
    params.require(:event).permit(:title, :description, :location, :time)
  end

end