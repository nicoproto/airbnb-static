require 'open-uri'

class FlatsController < ApplicationController
  FLATS_URL = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
  before_action :set_flats

  def index
  end

  def show
    flat_id = params[:id]
    @flat = @flats.find { |flat| flat_id.to_i == flat["id"] }
  end

  private

  def set_flats

    @flats = JSON.parse(open(FLATS_URL).read)
  end
end
