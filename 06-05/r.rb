def calc(s_calc)
    num_list = []
    op_list = []
    ans = 0
    is_pre_num = true
    s_calc.each_char {
        |c| if ['+', '*', '-', '/', '(', ')'].include?(c) then
                op_list.push(c)
                # is_pre_num = false
            else
                if num_list.length>=1 && op_list.length==1 then
                    num_list.push(eval("#{c.to_i}#{op_list.pop}#{num_list.pop.to_i}"))
                else
                # if is_pre_num then
                    # num_list.push("#{num_list.pop}#{c.to_i}".to_i) 
                # else
                    num_list.push(c.to_i)
                end
                # end
                # is_pre_num = true
            end
    }
    return num_list[0]
end

p calc("1+2*3")
