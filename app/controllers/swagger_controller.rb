class SwaggerController < ApplicationController
  skip_before_action :verify_authenticity_token

  def sessions
    render json: {
        token: 'aio3m873lxlenck3o27'
    }
  end

  def demo
    response = {
        params: params,
        data: []
    }

    rand(1..3).times do
      response[:data] << {
          name: Faker::Name.name,
          email: Faker::Internet.email,
          city: Faker::Address.city,
          street: Faker::Address.street_name,
          address: Faker::Address.street_address,
          house_number: Faker::Address.building_number,
          zip: Faker::Address.zip_code,
          tz: Faker::Address.time_zone,
          country: Faker::Address.country
      }
    end

    if params[:datafile].is_a?(ActionDispatch::Http::UploadedFile)
      render json: {
          filename: params[:datafile].original_filename,
          filesize: params[:datafile].size
      }
    else
      render json: response.count == 1 ? response.first : response
    end
  end
end
