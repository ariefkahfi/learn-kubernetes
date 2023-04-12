class HellosController < ApplicationController
  def index
    ActiveRecord::Base.establish_connection # Establishes connection
    ActiveRecord::Base.connection # Calls connection object
    render plain: 'CONNECTED!' if ActiveRecord::Base.connected?
    render plain: 'NOT CONNECTED!' unless ActiveRecord::Base.connected?
  rescue StandardError
    render plain: 'NOT CONNECTED!'
  end
end
