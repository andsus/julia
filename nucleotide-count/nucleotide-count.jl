"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    dict = Dict( nucleo => 0 for nucleo in "ACGT")
    for c in strand
        if haskey(dict, c)
            dict[c] += 1
        else
            throw(DomainError(c, " is invalid strand"))

        end

    end
    dict


end
