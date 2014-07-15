︠73f8152a-da7a-44f0-9a7e-feca5232ffb6i︠
%md
# We have been given a function P(x). Graph it.
︡76da1bd3-4ab5-4e7e-84ff-94321ac450d1︡{"md":"# We have been given a function P(x). Graph it.\n"}︡
︠ac81d1ce-8f65-4687-8b91-62a00950c362︠
x = var('x') # notice that we create our independent variable x
P(x) = x^3 + 3*x - 1 # then we define a function called P(x)
plot(P , (x,-2,2)) # then we plot P and specify a domain of [-2,2] because according to the given info, we know the zero is between [-1,1]
︡a2b9a54a-1cce-4d57-aa72-1a5f1718e109︡{"once":false,"file":{"show":true,"uuid":"24e178b5-bed6-4934-b515-18102e893260","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute19dc0/26939/tmp_Wn9ow_.svg"}}︡
︠4ce27226-88e4-4fda-8a00-cc2779157b75i︠
%md
# OK! We can see from the graph that there is a zero somewhere between 0 and 1.
# That's good!
︡43d1e7e9-b13b-474d-ade3-46f6e66be67d︡{"md":"# OK! We can see from the graph that there is a zero somewhere between 0 and 1.\n# That's good!\n"}︡
︠d8c66283-3fe7-4e94-b5fd-5e69283199c3i︠
%md
# The Bisection method comes first.
# Think about how you can determine whether the zero is in [-1,0] or [0,1]
# You will need to come up with some type of test to determine this.
# Not only for the first iteration of [-1,1] but for each successive iteration.
︡3cbee40d-fd6c-46ee-908b-4f81f96d49f3︡{"md":"# The Bisection method comes first.\n# Think about how you can determine whether the zero is in [-1,0] or [0,1]\n# You will need to come up with some type of test to determine this.\n# Not only for the first iteration of [-1,1] but for each successive iteration.\n"}︡
︠d18a3a26-451b-4d32-87ce-e7de73b88500i︠
%md
# Now, let's look at the Calculus part.
︡e17263dc-5d44-4800-aadc-21aabd1b0b11︡{"md":"# Now, let's look at the Calculus part.\n"}︡
︠cf12639b-e737-4aca-97a1-18a50d7c3aa2i︠
%md
## We can get SageMathCloud (SMC) to find the derivative for us.
## I realize that P(x) is a simple polynomial, but you should recognize that the Derivative command will work with other functions!
︡875957d1-1eaf-4eb1-8710-01a49186b1d6︡{"md":"## We can get SageMathCloud (SMC) to find the derivative for us.\n## I realize that P(x) is a simple polynomial, but you should recognize that the Derivative command will work with other functions!\n"}︡
︠f63254f6-6212-48d0-9a98-6f29c7fa8e2d︠
P_prime = derivative(P,x) # the derivative command takes two arguments. the function and the variable.
show(P_prime) # the show command will display the derivative in a nice way.
︡2922ecf3-1997-4980-a409-d96f1c169a5c︡{"tex":{"tex":"x \\ {\\mapsto}\\ 3 \\, x^{2} + 3","display":true}}︡
︠d4926571-3511-4485-a46e-dd1eb8cfcc5ci︠
%md
## Let's  draw one of the tangent lines on our graph to show what's happening.
︡ac79960c-8486-4d9e-8dc4-5d79d6db2fa2︡{"md":"## Let's  draw one of the tangent lines on our graph to show what's happening.\n"}︡
︠88e20661-9427-4ba0-bc8f-b099c0a61ab4︠
slope = P_prime(1) # we are evaluating the derivative at the right endpoint of the given interval
t(x) = slope*(x-1) + P(1) # you know this formula -- it's just a modified form of point-slope and we're calling it t(x)
plot([P,t] , (x,-2,2) ) # we plot both functions P and t on the same axes with domain [-2,2]
︡3389564e-5ee5-47de-9f8c-5d738d2298da︡{"once":false,"file":{"show":true,"uuid":"ecae090f-47d0-45a3-af00-1a912aae3d30","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute19dc0/26939/tmp_rMEMmW.svg"}}︡
︠e1e04f8c-07b3-4a8b-bdaa-551d3f30a19ai︠
%md
# Now we have a graph of the function and the tangent line at (1,3)
# Isn't  it nice that the x-intercept of the tangent line is a better guess at the zero of the polynomial... Hmmm... :-)
︡cfaccd30-3889-4580-9455-7546e0445cd0︡{"md":"# Now we have a graph of the function and the tangent line at (1,3)\n# Isn't  it nice that the x-intercept of the tangent line is a better guess at the zero of the polynomial... Hmmm... :-)\n"}︡
︠dee9750e-37b5-466b-938d-92739a4b27afi︠
%md
# Remember how to save a graph as a PDF?
︡e0150366-ba71-4a96-8ad7-f8478ffed11b︡{"md":"# Remember how to save a graph as a PDF?\n"}︡
︠97cfa49c-5f03-428b-8a3b-b55b6e64bab6︠
func_plot = plot([P,t] , (x,-2,2) )
func_plot.save('func_plot.pdf')
︡00d497eb-ba7c-44ea-a11f-4a89e2f96ac0︡
︠d47a70b5-e3f5-4161-97a0-3395962e66a7i︠
%md
# The rest of the project should just use variations of these commands.
# Play around! That's the way people learn something new.
# You will need to use the same command as in project_1 for including the graph in your report.
# There should be a template tex file in the project_2 folder to help you with this.
︡68822ba1-2a45-4d13-b274-96b182d4df49︡{"md":"# The rest of the project should just use variations of these commands.\n# Play around! That's the way people learn something new.\n# You will need to use the same command as in project_1 for including the graph in your report.\n# There should be a template tex file in the project_2 folder to help you with this.\n"}︡
︠2dab0d92-413d-440d-827a-6053b671026di︠
%md
# Last thing -- You need a title and axes labels on all graphs
# Here's how you do that.
︡a042b05b-876b-4777-aaff-1caac7013c02︡{"md":"# Last thing -- You need a title and axes labels on all graphs\n# Here's how you do that.\n"}︡
︠a308810a-57f8-4306-9e12-ba86fb35c1f8︠
plot([P,t] , (x,-2,2) , title="The Polynomial" , title_pos=(0.25,1) , axes_labels=['$x$','$P(x)$'])
︡751f30c3-4425-4294-877a-2bf2fdb41abb︡{"once":false,"file":{"show":true,"uuid":"11d700c6-e77d-4c55-8549-91359049cb0a","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute19dc0/26939/tmp_OCrwcw.svg"}}︡
︠efa301b2-3961-4d22-abe1-7ae9f8204369︠









