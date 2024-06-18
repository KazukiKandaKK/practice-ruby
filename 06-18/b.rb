# @param {Integer} x
# @return {Integer}
def sum_of_the_digits_of_harshad_number(x)
    sum = 0
    x.to_s.each_char do |c|
        sum += c.to_i
    end
    if x % sum == 0 then
        return sum
    end
    return -1
end
