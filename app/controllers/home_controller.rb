class HomeController < ApplicationController
  URL = "http://localhost:3000"

  def index
  end



  def sender


    params.permit(:method, options: {})
    data = params.as_json
      begin
        @data = JSON.parse(RestClient.get "#{URL}#{data['url']}", {:content_type => :json, :accept => :json, :params => data})
      rescue => error
        @data = {:error=> error, :messages => error.response}
      end
      # @data = API::API.cities(data)
      # @data = API::API.warehouses(data)
      # @data = API::API.rate(data)
      # @data = API::API.create_en(data)
      # @data = API::API.print_markings(data)
      # send_file(@data, :type => "application/pdf", :disposition => "inline")
      # @data = API::API.print_ttn(data)
      # send_file(@data, :type => "application/pdf", :disposition => "inline")
      # @data = API::API.delete_en(data)
      # @data = API::API.streets(data)
    respond_to do |format|
      format.json { render json: @data }
    end
  end

end



