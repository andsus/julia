function raindrops(number)

    #d = Dict( 3 => "Pling", 5 => "Plang" , 7 => "Plong")
    rain_tuple = [(3,"Pling"), (5,"Plang"), (7,"Plong")]

    res = mapreduce(k -> number % first(k) == 0 ? last(k) : "", *, rain_tuple)
    #res = mapreduce(k -> number % first(k) == 0 ? last(k) : "", *, rain_tuple)

    # res = ""
    # d = Dict( 3 => "Pling", 5 => "Plang" , 7 => "Plong")
    # for i ∈ [3,5,7]
    #     if mod(number, i) == 0
    #         res = res * d[i]
    #     end
    # end
    if isempty(res)
        string(number)
    else
        res
    end

end
