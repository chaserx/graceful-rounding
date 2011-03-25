module GracefulRounding
  class mins
    def graceful_rounding
      mins = self.min

      if mins == 00
        return
      elsif (1..7).cover?(mins)
        return self -= (mins*60)
      elsif (8..14).cover?(mins)
        return self += (15 - mins)*60
      elsif mins == 15
        return
      elsif (16..22).cover?(mins)
        return self -= (mins -15)*60
      elsif (23..29).cover?(mins)
        return self += (30 - mins)*60
      elsif mins == 30
        return
      elsif (31..37).cover?(mins)
        return self -= (mins - 30)*60
      elsif (38..44).cover?(mins)
        return self += (45 - mins)*60
      elsif mins == 45
        return
      elsif (46..52).cover?(mins)
        return self -= (mins - 45)*60
      elsif (53..59).cover?(mins)
        return self += (60 - mins)*60
      else
        raise 'value of Time.min is not between 00..59'
      end
      
    end
  end
end
