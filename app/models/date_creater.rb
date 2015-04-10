class DateCreater
    def run
    BillboardDate.create(day: '2015-04-04')
    1559.times do
      d = BillboardDate.last
      a = (d.day.to_date - 7.days).to_s
      n = BillboardDate.create(day: a)
    end
  end
end