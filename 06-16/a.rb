# @param {Integer} n
# @return {Boolean}
def is_happy(n)
    if n>1 && n<=4 then
        return false
    end
    ans = 0
    n.to_s.each_char do |c|
        ans += c.to_i**2
    end
    if ans.to_s.length <= 1 && ans==1 then
         return true
    elsif ans.to_s.length <= 1 && ans<=3 then
        return false
    end
    is_happy(ans)
end
