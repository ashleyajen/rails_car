class CarsController < ApplicationController
  def sim
    @make = params[:make] unless params[:make].nil?
    @year = params[:year] unless params[:year].nil?


    if params.has_key?(:make) && !params[:make].strip.empty? &&
       params.has_key?(:year) && !params[:year].strip.empty?

      @ashley_car = CarSpecs.new(params[:make], params[:year])
      # save name in a cookie, so it can be accessed in the game
      session[:ashley_car] = @ashley_car.to_yaml
      # redirect to the game play page
      redirect_to "/status"
    end
  end

  def status
    CarSpecs
    @ashley_car = YAML.load(session[:ashley_car])
  end

  def accelerate
    CarSpecs
    @make = params[:make]
    @year = params[:year]
    @ashley_car = YAML.load(session[:ashley_car])
    @ashley_car.accelerate
    session[:ashley_car] = @ashley_car.to_yaml
    render "status.html.erb"
  end

  def brake
    CarSpecs
    @make = params[:make]
    @year = params[:year]
    @ashley_car = YAML.load(session[:ashley_car])
    @ashley_car.brake
    session[:ashley_car] = @ashley_car.to_yaml
    render "status.html.erb"
  end
end
