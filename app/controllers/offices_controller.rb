class OfficesController < ApplicationController
  def index
    @offices = Office.all
    @office = Office.new
  end
end
