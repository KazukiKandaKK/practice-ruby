# @param {Integer} x
# @return {Integer}
def reverse(x)
    is_minus = false
    if x.to_s.include? "-"
        c = x.to_s.delete("-")
        is_minus = true
    else
        c = x.to_s
    end
    ret = c.to_s.reverse.to_i
    if is_minus then
        ret = -ret
    end
    if ret<-2**31 || ret>2**31 then
        ret = 0
    end
    return ret
end