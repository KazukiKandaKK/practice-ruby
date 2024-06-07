######################################################
# Practicing Ruby by calculating expressions entered
# from the command line in reverse Polish notation.
######################################################

def half_addr(a, b)
    s = (b|a)&(~(b&a))
    c = b&a
    return s, c
end

def full_addr(a, b, carry_in)
    sum = a^b^carry_in
    carry_out = (a&b)|(b&carry_in)|(a&carry_in)
    return sum, carry_out
end

def apply_operator(op_list, num_list)
    op = op_list.pop
    a = num_list.pop
    b = num_list.pop
    carry_in = 0
    case op
    when "+"
        num_list.push(b+a)
    when "-"
        num_list.push(b-a)
    when "*"
        num_list.push(b*a)
    when "/"
        num_list.push(b/a)
    end
end

def calc(s_calc)
    num_list = []
    op_list = []
    is_pre_num = true
    s_calc.each_char do |c| 
        if ['+', '*', '-', '/', '(', ')'].include?(c) then
            # contain the operand
            op_list.push(c)
            is_pre_num = false
            next
        end
        # if input the two-digit.
        if is_pre_num then
            num_list.push("#{num_list.pop}#{c.to_i}".to_i) 
            next
        end
        num_list.push(c.to_i)
        apply_operator(op_list, num_list)
        is_pre_num = true
    end
    return num_list[0]
end

p calc(ARGV[0])
