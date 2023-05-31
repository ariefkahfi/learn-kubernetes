class HellosController < ApplicationController
  def index
    ActiveRecord::Base.establish_connection # Establishes connection
    ActiveRecord::Base.connection # Calls connection object
    current_hostname = `hostname`
    render plain: "from: #{current_hostname}, CONNECTED!" if ActiveRecord::Base.connected?
    render plain: 'NOT CONNECTED!' unless ActiveRecord::Base.connected?
  rescue StandardError
    render plain: 'NOT CONNECTED!'
  end
end
