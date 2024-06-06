######################################################
# Practicing Ruby by calculating expressions entered
# from the command line in reverse Polish notation.
######################################################

def apply_operator(op_list, num_list)
    op = op_list.pop
    a = num_list.pop
    b = num_list.pop
    case op
    when "+"
        s = (b|a)&(~(b&a))
        c = (b&a)
        num_list.push(s|c)
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
