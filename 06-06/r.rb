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
        # contain number.
        if num_list.length>=1 && op_list.length==1 then
            num_list.push(c.to_i)
            apply_operator(op_list, num_list)
        # if input the two-digit.
        elsif is_pre_num then
            num_list.push("#{num_list.pop}#{c.to_i}".to_i) 
        # other case push stack.
        else
            num_list.push(c.to_i)
        end
        is_pre_num = true
    end
    return num_list[0]
end

p calc(ARGV[0])
