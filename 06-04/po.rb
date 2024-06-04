def calc(s_calc)
    num_list = []
    op_list = []
    is_pre_num = true
    s_calc.each_char {
        |c| if ['+', '*', '-', '/', '(', ')'].include?(c) then 
                op_list.push(c)
                is_pre_num = false
            else
                if is_pre_num then
                    num_list.push("#{num_list.pop}#{c.to_i}".to_i) 
                else
                    num_list.push(c.to_i)
                end
                is_pre_num = true
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

p calc("10+90*10")
