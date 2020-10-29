class Birthday


  def initialize(day, month)
    @day = day
    @month = month
  end

  def today?
    t = Time.new

    if t.day.to_s == @day && t.strftime("%B").downcase == @month.downcase
      return true
    else
      return false
    end

  end
end
