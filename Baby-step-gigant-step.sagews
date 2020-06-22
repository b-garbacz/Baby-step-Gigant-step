︠38b4eb88-b2b6-466f-a442-936885782b02︠
def dlp_shanks(g, h,p):
    a=g
    b=h
    n=p
    m = ceil(sqrt(n - 1))
    lista = {1:0}

    for j in range(0,m):
        lista[ pow(a,j) % n] = j
    p=0
    k=0
    for i in range(0,m):
        calc = (b*pow(a,-i*m)%n)% n
        if calc in lista:
            p = i
            k = lista[calc]
            break
    x = p * m + k
    return x

# Implementation of function dlp_shanks that uses class objects FiniteFields
def dlp_shanks_ff(g, h):
    m = ceil(sqrt(g.multiplicative_order()))
    print('m=',m)
    lista = {1:0}
    for j in range(0,m):
        lista[pow(g,j)] = j
    o=0
    k=0
    for i in range(0,m):
        calc = h * (g**(-i * m))
        if calc in lista:
            o = i
            k = lista[calc]
            break
    x = o * m + k #i*m+j
    return x

print('\n*******************zad1************************\n')

x=dlp_shanks(3,12,173)
print('dlp_shanks x=',x)

print('\n*******************zad2************************\n')

F = FiniteField(17)
g = F(5)
h = F(14)
x2=dlp_shanks_ff(g, h)

print('dlp_shanks_ff x= ',x2)









