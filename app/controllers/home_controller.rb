class HomeController < ApplicationController
  URL = "http://localhost:3000/api"

  def index
  end



  def sender


    params.permit(:method, options: {})
    data = params.as_json
    case data['method']
      when 'getAreass'
        begin
          @data = JSON.parse(RestClient.get "#{URL}/areas", {:content_type => :json, :accept => :json, :params => data})
        rescue => error
          @a = error
        end
      when 'getCities'
        @data = API::API.cities(data)
      when 'getWarehouses'
        @data = API::API.warehouses(data)
      when 'getRate'
        @data = API::API.rate(data)
      when 'setEBill'
        @data = API::API.create_en(data)
      when 'getMarkings'
        @data = API::API.print_markings(data)
        send_file(@data, :type => "application/pdf", :disposition => "inline")
        return
      when 'getTtn'
        @data = API::API.print_ttn(data)
        send_file(@data, :type => "application/pdf", :disposition => "inline")
        return
      when 'deleteEBill'
        @data = API::API.delete_en(data)
      when 'getStreets'
        @data = API::API.streets(data)
      else
        @error = 'Undefined method'
    end
    respond_to do |format|
      format.json { render json: @data }
    end
  end

end



