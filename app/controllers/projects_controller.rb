class ProjectsController < ApplicationController
  require 'faraday'
  require 'net/http'
  require 'json'

  def index
    @projects = current_user.department.projects
    # @project = Project.joins(:department).where(user: current_user)
  end

  def show
    #this is net/http
    @project = current_user.department.projects.first

    url = URI.parse('https://deforestation-2f7jkaqqnq-ew.a.run.app/')
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true

    request = Net::HTTP::Get.new(url.request_uri)

    response = http.request(request)

    if response.code == '200'
      @data = JSON.parse(response.body)
    else
      # handle the error
      puts "no connection"
    end
# ----------
    #this is faraday
    # conn = Faraday.new(url: 'https://deforestation-2f7jkaqqnq-ew.a.run.app/')
    # response = conn.get('/api/data')
    # parsed_response = JSON.parse(response.body)
    # puts parsed_response['data']
    # ------------

    # @project = Project.find(params[:id])
  end
end
