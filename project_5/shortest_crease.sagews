︠613c18da-79fe-4132-8b77-b3d6cebc59b2is︠
%md
## You will have a function for the crease length
## and to find the minimum value of this function,
## you will need to differentiate and set equal to 0.
︡339c4c89-5547-41d0-9e33-f14b9d5fc3f8︡{"md":"## You will have a function for the crease length\n## and to find the minimum value of this function,\n## you will need to differentiate and set equal to 0.\n"}︡
︠b70a752e-2cfa-4012-88ca-9f1d395d4118is︠
%md
## Sage can do the differentiation for you, and it can also find
## where the derivative is equal to 0.
︡f52eb113-cd08-4345-b8f3-d16ae77f009e︡{"md":"## Sage can do the differentiation for you, and it can also find\n## where the derivative is equal to 0.\n"}︡
︠f868d314-a777-4c53-a3bb-db79630fea62s︠
# Set up your function here
f(x) = 2*x + cos(2*x) 
# Take the derivative
f_prime = derivative(f,x)
# Display the derivative
show(f_prime)
# Graph it
plot(f_prime)
︡ddba8b49-ebea-46eb-a42c-d88da8bae893︡{"tex":{"tex":"x \\ {\\mapsto}\\ -2 \\, \\sin\\left(2 \\, x\\right) + 2","display":true}}︡{"once":false,"file":{"show":true,"uuid":"6718cfd2-f724-4f3b-a112-a94fd79b8a89","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/29423/tmp_hLKIR1.svg"}}︡
︠585f85ae-642f-4c34-ad2d-1f5dd23d480e︠









