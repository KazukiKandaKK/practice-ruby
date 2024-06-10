##########################################
# フィボナッチ数列が出せるはず
##########################################
max_list_length = ARGV[0].to_i

rets = []
max_list_length.times do |num|
    rets.push(
       (1/Math.sqrt(5)*(((1+Math.sqrt(5))/2)**num-((1-Math.sqrt(5))/2)**num)).to_i
    )
end

p rets