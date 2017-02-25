class CarSpecs
  def initialize (make, year)
    @make = make
    @year = year
    @speed = 0
    @lights = "off"
  end

  #to be called in the view
  # def make_model
  #   @make + " " + @year
  # end

  #necessary for YAML
  def make #= new_make
    @make #= new_make
  end

  def year #= new_year
    @year #= new_year
  end

  def speed
    @speed
  end

  def accelerate
    @speed = @speed + 10
    if @speed > 88
      @speed = 88
    end
  end

  def brake
    @speed = @speed - 7
    if @speed < 0
      @speed =0
    end
  end

  def lights
    if @lights == "off"
      @lights = "on"
    elsif @lights == "on"
      @lights = "off"
    end
  end
end
