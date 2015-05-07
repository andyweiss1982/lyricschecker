class YearMaker
  def run
    [1985..2015].each do |y|
      YearObj.create!(num: y)
    end
  end
end