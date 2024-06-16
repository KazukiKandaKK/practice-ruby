# @param {Integer} n
# @return {Boolean}
def is_happy(n)
    judge(n)
    ans = 0
    n.to_s.each_char do |c|
        ans += c.to_i**2
    end
    judge(ans)
    is_happy(ans)
end

def judge(n)
    if n==1 then
        return true    
    elsif n>1 && n<=4 then
        return false
    end
end