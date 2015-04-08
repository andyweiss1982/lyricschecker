class DateCreater
  BillboardDate.create(day: '2015-04-04')
  1560.times do
    d = BillboardDate.last
    a = (d.day.to_date - 7.days).to_s
    n = BillboardDate.create(day: a)
  end
end