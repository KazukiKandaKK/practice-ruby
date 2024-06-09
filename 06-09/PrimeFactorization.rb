$rets = []

def calc(target_num)
    ret = 0
    1.upto(target_num) do |num|
        if target_num%num == 0 && num != 1 && target_num >= num then
            ret = target_num/num
            $rets.push(num)
            break
        end
    end
    # p ret
    if ret > 1 then
        calc(ret)
    end
end

# とりあえず1000までやる。
target_num = ARGV[0].to_i

# check args
if target_num <= 1 || target_num > 1000 then
    p "Err"
end

calc(target_num)

p $rets