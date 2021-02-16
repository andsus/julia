"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    alphaset = Set('a':'z')
    inputset = Set(lowercase( input::AbstractString) )
    #use issubset - true if alphaset issubset or equal of inputset
    issubset(alphaset, inputset)

end
