using Random

const NUM_UNIQUE_NAMES = 26^2 * 1_000

# Copied from other student, refer by mentor
# Similar to https://rosettacode.org/wiki/Linear_congruential_generator#Julia
function get_linear_congruent_generator(n_max)
    # mod(a * state + c, max)
    a = rand(cld(n_max, 2):n_max)
    while gcd(a, n_max) > 1
        a += 1
    end
    return a
end

function format_robot_name(n)
    a1, n = divrem(n, 26 * 1000)
    a2, n = divrem(n, 1000)
    a1 += 'A'
    a2 += 'A'
    n = lpad(n, 3, '0')
    "$(a1)$(a2)$(n)"
end

function generate_random_robot_name()
    n_max = NUM_UNIQUE_NAMES
    a = get_linear_congruent_generator(n_max)
    b = rand(1:n_max)
    x = 0
    #closure
    function f()
        x += 1
        return format_robot_name(mod(a * x + b, n_max))
    end
end

const generator_name = generate_random_robot_name()

mutable struct Robot
    name
    Robot() = reset!(new())
end


function reset!(instance::Robot)
    instance.name = generator_name()
    return instance
end

function name(instance::Robot)
    instance.name
end
