#Sort the odd
def sort_array(a):
    if not a:
        return []
        
    odd_ind = [ i for i in range(len(a)) if a[i] % 2 != 0 ]
    odd_numb = [a[i] for i in odd_ind]
    odd_numb.sort()
    
    for i,j in zip(odd_ind, odd_numb):
        a[i] = j     
        
    return a