class HelloWorldController < ApplicationController

  def index
    @total_clients = Client.count
    
    respond_to do |format|
      format.html {}
    end
  end

end
