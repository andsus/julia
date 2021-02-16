import Dates: Minute, hour, minute, value
import Base: show, +, -

using Printf: @printf

struct Clock
    minutes::Int32

    Clock(minutes) = new(mod(minutes, 60 * 24))
end

Clock(hours, minutes) = Clock(hours * 60 + minutes)

hour(c::Clock) = div(c.minutes, 60)
minute(c::Clock) = mod(c.minutes, 60)

+(c::Clock, m::Minute) = Clock(c.minutes + value(m))
+(x, c::Clock) = c + x
-(c::Clock, m::Minute) = c + -m

show(io::IO, c::Clock) = @printf(io, "\"%02d:%02d\"", hour(c), minute(c))
