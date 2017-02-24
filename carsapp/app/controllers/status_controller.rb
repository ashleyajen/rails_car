class StatusController < CarsController
  def actions
    @make = params[:make]
    @year = params[:year]
    @ashley_car = YAML.load(session[:ashley_car])
    @ashley_car.accelerate
    session[:ashley_car] = @ashley_car.to_yaml
  end
end
