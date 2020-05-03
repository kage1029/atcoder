n, m, q = gets.split(" ").map(&:to_i)
ary = []
q.times {ary << gets.split(" ").map(&:to_i)}

ary_a = []
ary = ary.sort_by {|x| x[3]}.reverse
sum = ary[0][3]

(m-ary[0][2]).times {|i|
  ary_b = Array.new(n, 0)
  ary_b[ary[0][0]-1] = i + 1
  ary_b[ary[0][1]-1] = i + 1 + ary[0][2]
  ary_a << ary_b
}

ary.shift

ary.each {|x|
  if ary_a[0][x[0]-1] == 0 && ary_a[0][x[1]-1] == 0
    m-x[2].times {
      ary_c = Array.new(ary_a)
      ary_a += ary_c
    }
  end
}

p ary_a