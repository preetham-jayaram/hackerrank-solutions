def permute(a,i,n)
  if i==n
    puts a
  else	
    for j in i..n
	a[i],a[j]=a[j],a[i]
	permute(a,i+1,n)
	a[i],a[j]=a[j],a[i]
    end	
  end	
end
a = "asd"
permute(a,0,2)
