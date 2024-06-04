def calc(s_calc)
    num_list = []
    op_list = []
    s_calc.each_char {
        |c| if ['+', '*', '-', '/', '(', ')'].include?(c) then 
                op_list.push(c)
            else
                num_list.push(c)
            end
    }
    num_tmp1 = 0
    num_tmp2 = 0
    op_tmp1 = 0
    op_tmp2 = 0
    while num_list.length!=0 && op_list.length!=0 
        num_tmp1 = num_list.pop.to_i
        num_tmp2 = num_list.pop.to_i
        op_tmp = op_list.pop
        num_list.push(eval("#{num_tmp1}#{op_tmp}#{num_tmp2}"))
    end
    return num_list[0]
end

p calc("1+2+3+4+7+7+8+9-9-9-9")
