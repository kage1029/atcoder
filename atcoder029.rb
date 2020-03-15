# メソッドを使って解くやりかた

n = gets.chomp.to_i
["a", "b", "c"].repeated_permutation(n){|x| puts x.join}

# 再帰を使って解くやり方

n = gets.chomp.to_i

def pass(cnd, x)
  if cnd.size == x
    puts cnd
    return
  else
    pass(cnd + "a", x)
    pass(cnd + "b", x)
    pass(cnd + "c", x)
  end
end

cnd = ""
pass(cnd, n)
