class ServiceController < ApplicationController
  include ApplicationHelper

  def index
    render :json => { 
      'Service instantiation' => uuid,
      'Shoulder spaces' => [],
    }
  end
end
