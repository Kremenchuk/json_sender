class HomeController < ApplicationController
  URL = "http://localhost:3000"

  def index
  end



  def sender
    params.permit(:method, options: {})
    data = params.as_json
      begin
        @data = RestClient.get "#{URL}#{data['url']}", {:content_type => :json, :accept => :json, :params => data}
      rescue => error
        @data = {:error=> error, :messages => error}
      end
    uploaded_io = @data.body
    save_file(uploaded_io, Time.now.strftime('%S%L'))

    respond_to do |format|
      format.json { render json: @data }
    end
  end


  def sender_post
    params.permit(:method, options: {})
    data = params.as_json
    begin
      @data = JSON.parse(RestClient.post "#{URL}#{data['url']}", params,
                                         {:content_type => :json, :accept => :json, :params => data})
    rescue => error
      @data = {:error=> error, :messages => error.response}
    end
    respond_to do |format|
      format.json { render json: @data }
    end
  end


  def save_file(body, file_name)
    FileUtils.mkdir_p Rails.root.join('files')
    File.open(Rails.root.join('files', "#{file_name}"), 'ab') do |io|
      io.write(body)
    end
  end

end



