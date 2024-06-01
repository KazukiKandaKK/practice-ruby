def gcd(m, n)
    r = 0
    while n!=r
        r = m % n
        if r==0 then
            return n
        end
        m = n
        n = r
    end
    return nil
end

ans = gcd(15000000,15000)
p ans