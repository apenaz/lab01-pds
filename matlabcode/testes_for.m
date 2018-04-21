s = 10
H = zeros(1:s)

for l = 1:s
    for c = 1:s
        H(l,c) = 1/(r+c-1)
    end
end