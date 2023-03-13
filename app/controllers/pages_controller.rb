class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :about
  require 'faraday'
  def home
  end

  def about
  end

  def profile
    # Create a connection object
    conn = Faraday.new(url: 'https://api.dicebear.com')

    # Make a GET request to the API endpoint and pass parameters in the URL
    response = conn.get '/5.x/initials/svg', {
      width: 200,
      height: 200,
      backgroundColor: '#f0f0f0',
      color: '#333',
      fontSize: 100,
      bold: true,
      initials: 'JD'
    }
    if response.status == 200
      svg_content = response.body
      # Do something with the SVG content
    else
      # Handle error
    end
    @profile_image_api = "https://api.dicebear.com/5.x/initials/svg?seed=<%= current_user.username %>&backgroundType=gradientLinear&backgroundColor=b2d22b,7e9c2e&backgroundRotation=120&fontFamily=Georgia"
  end
end
