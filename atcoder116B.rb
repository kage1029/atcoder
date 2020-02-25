s = gets.chomp.to_i
a = [s]
i = 2

while i >= 0
    if a[-1] % 2 == 0
        if a.include?(a[-1]/2)
            puts i
            exit
        else
            a << a[-1]/2
            i += 1
        end
    else
        if a.include?(a[-1]*3 +1)
            puts i
            exit
        else
            a << a[-1]*3 +1
            i += 1
        end
    end
end
