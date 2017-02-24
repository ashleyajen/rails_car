class CarSpecs
  def initialize (make, year)
    @make = make
    @year = year
    @speed = 0
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
    @speed + 10
  end
end
