class CarsController < ApplicationController
  def sim
    @make = params[:make] unless params[:make].nil?
    @year = params[:year] unless params[:year].nil?

    if  @make.nil? || !params.has_key?(:make) || params[:make].strip.empty?
        flash.now[:alert] = "make missing"
        render "sim.html.erb"
    elsif @year.nil? || !params.has_key?(:year) || params[:year].strip.empty?
        flash.now[:notice] = "year missing"
        render "sim.html.erb"
    elsif
      # save name in a cookie, so it can be accessed in the game
      session[:make] = params[:make]
      session[:year] = params[:year]
      # redirect to the game play page
      redirect_to "/status"
    end
  end
end
