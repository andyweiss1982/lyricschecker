class DateCreater
  Date.create(2014,4,4)
  1560.times do
    d = BillboardDate.last
    a = (d.day.to_date - 7.days).to_s
    n = BillboardDate.create(day: a)
  end
end