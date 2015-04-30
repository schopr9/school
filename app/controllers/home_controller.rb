class HomeController < ApplicationController
  def home
    @events = Event.all
    @notice = Notice.all
    @class_name = Timetable.all
    
  end

  def teacher
  	@teachers =Teacher.all
  end
end
