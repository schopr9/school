class HomeController < ApplicationController
  def home
    @events = Event.all
    @notice = Notice.all
  end
end
