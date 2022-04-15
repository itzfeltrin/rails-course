a=(1..100).to_a
b=("a".."z").map { |item| item.upcase }.to_a
p a
p b

a<<500
a.append(501)
a.unshift(-500)
p a
p a.include? 500
last=a.pop
p last
p a
a.delete_at(0)
sum=a.join.to_i
p sum%2==0
p sum.to_s.length

a.select! { |item| item % 2 == 0 && item % 5 == 0 && item % 20 == 0 }
p a