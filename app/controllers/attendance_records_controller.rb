class AttendanceRecordsController < ApplicationController
  def new
    @attendance_record = AttendanceRecord.new
  end
 
  def create
    @attendance_record = AttendanceRecord.new(attendance_record_params)
    @attendance_record.user_id = current_user.id.to_i
    @attendance_record.event_id = attendance_record_params[:attended_event_id]
    if @attendance_record.save
      redirect_to events_path
    else
      render :new, status: :unprocessable_entity
    end 
 end
 
 def destroy
  @attendance_record = AttendanceRecord.find(params[:id])
  @attendance_record.destroy
    
  redirect_to request.referrer, status: :see_other
 end

 private
 def attendance_record_params
  params.require(:attendance_record).permit(:attendee_id, :attended_event_id) 
end
end