function isarmstrong(num)
    y = num
    z = num
    digit_count = 0
    while y > 0
        digit_count = digit_count+1
        y = div(y,10)
    end
    total=0
    while z > 0
        total = total + rem(z, 10)^digit_count
        z = div(z,10)
    end # while
    return total == num

end
