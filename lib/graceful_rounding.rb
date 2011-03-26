module GracefulRounding
    
    
    # takes a Time object and rounds the minutes within a grace period (+/- 7 min of the quarter hour)
    def graceful_rounding
      raise ArgumentError, 'Argument is not Time' unless self.is_a? Time 
      
      @time = self
      mins = @time.min

      if mins == 00
        return
      elsif (1..7).cover?(mins)
        return @time -= (mins*60)
      elsif (8..14).cover?(mins)
        return @time += (15 - mins)*60
      elsif mins == 15
        return
      elsif (16..22).cover?(mins)
        return @time -= (mins - 15)*60
      elsif (23..29).cover?(mins)
        return @time += (30 - mins)*60
      elsif mins == 30
        return
      elsif (31..37).cover?(mins)
        return @time -= (mins - 30)*60
      elsif (38..44).cover?(mins)
        return @time += (45 - mins)*60
      elsif mins == 45
        return
      elsif (46..52).cover?(mins)
        return @time -= (mins - 45)*60
      elsif (53..59).cover?(mins)
        return @time += (60 - mins)*60
      else
        raise 'value of Time.min is not between 00..59'
      end
      
    end

end

class Time
  include GracefulRounding
end