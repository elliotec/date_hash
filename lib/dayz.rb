require 'date'

class DayOfWeek

  def datez(year,month,day)
    date = Date.new(year,month,day).wday
    datehash = { 0 => 'Su', 1 => 'Mo', 2 => 'Tu', 3 => 'We', 4 => 'Th', 5 => 'Fr', 6 => 'Sa' }
    return datehash[date]
  end

end

