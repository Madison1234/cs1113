def hs(n):
    l = 1
    if n != 1:
        print (n)
        while (n > 1):
            if (n % 2 == 0):
                n = n // 2
                print (n)
                l = l + 1
            else:
                n = 3*n + 1
                print (n)
                l = l + 1
    else:
        print (n)
        
    print (l)

print('test 1')
hs(1)

print ('test 2')
hs(2)







        
