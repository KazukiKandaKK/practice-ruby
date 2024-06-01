def fizz_buzz
    for i in 1..100
        if i%3==0 && i%5==0 then
            p "#{i}: FizzBuzz"
        elsif i%3==0 then
            p "#{i}: Fizz"
        elsif i%5==0 then 
            p "#{i}: Buzz"
        end
    end
end

fizz_buzz()