function rotate(n::Int, s::String)::String
    map( c -> rotate(n,c), s)
end

function rotate(n::Int, c::Char)::Char
    if c ∈ 'A':'Z'
        base_c = 'A'
    elseif c ∈ 'a':'z'
        base_c = 'a'
    else
        return c
    end

    return mod(c - base_c + n , 26) + base_c
end
# Bonus R13_str
macro R13_str(s)
    rotate(13,s)
end

for n ∈ 0:25
    rotation_func = Symbol("R", n, "_str")
    @eval macro $rotation_func(rot_mode)
        return rotate($n, rot_mode)
    end
end
