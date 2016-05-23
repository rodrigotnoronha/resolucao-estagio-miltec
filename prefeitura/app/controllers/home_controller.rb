class HomeController < ApplicationController
  respond_to :html, :xml, :pdf

  def choose
    @colaborators = Colaborator.choose(params[:verba])
    respond_with @colaborators
  end
  
end
