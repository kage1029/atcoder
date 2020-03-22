h, w = gets.split(" ").map(&:to_i)
ary = []
h.times do
  ary << gets.chomp.to_s.split(//)
end

cnt = 0
if ary[0][0] == "#" 
  cnt += 1
end

def route(ary, cnt, i, j)
  if ary[i][j] == "#"
    cnt += 1
  end
  route(ary, cnt, i + 1, j)
  route(ary, cnt, i, j + 1)
end

route(ary, cnt, 0, 0)
