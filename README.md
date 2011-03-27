# Graceful Rounding

A simple gem to round to the nearest 15 minutes inside a grace period.

Adds a method to Time class. Rounds Time object using (@time.min) minutes within a grace period (+/- 7 min of the quarter hour)


## Example usage


    @t = Time.new(2011,03,26,19,06,0, "-04:00")
    @t.graceful_rounding #=> 2011,03,26,19,00,0, "-04:00"


Chase Southard 2011 released under the same terms as Ruby itself