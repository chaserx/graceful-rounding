module GracefulRounding
  class Time
    def self.graceful_rounding
      time = self.min

      if time == 00
        return
      elsif (1..7).cover?(time)
        return self -= (time*60)
      elsif (8..14).cover?(time)
        return self += (15 - time)*60
      elsif time == 15
        return
      elsif (16..22).cover?(time)
        return self -= (time -15)*60
      elsif (23..29).cover?(time)
        return self += (30 - time)*60
      elsif time == 30
        return
      elsif (31..37).cover?(time)
        return self -= (time - 30)*60
      elsif (38..44).cover?(time)
        return self += (45 - time)*60
      elsif time == 45
        return
      elsif (46..52).cover?(time)
        return self -= (time - 45)*60
      elsif (53..59).cover?(time)
        return self += (60 - time)*60
      else
        raise 'value of time.min not between 00..59'
      end
      
    end
  end
end
