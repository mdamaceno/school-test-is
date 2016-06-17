module ApplicationHelper
  def dmy(date)
    l date, format: '%d/%m/%Y'
  end

  def hm(date)
    l date, format: '%H:%M'
  end

  def dmyhm(date)
    l date, format: '%d/%m/%Y às %H:%M'
  end
end
