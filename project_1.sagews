︠0755c8da-dc76-46b4-9c73-3a40d415dbf7i︠
%md
# Welcome to Project \#1
︡e64fa290-1a53-4443-8b82-686b9777a9c0︡{"md":"# Welcome to Project \\#1\n"}︡
︠9ebc8942-ff60-4dd2-a680-ca907947fdb5i︠
%md
### Objectives for this project:
1. Create a SageMathCloud account.
2. Learn how to use a github URL to download project materials.
3. Use a SAGE worksheet to construct a plot of h(x)=sin(x).
4. Edit a pre-made TEX file and include the plot for h(x) in the document.
5. Submit the generated PDF through turnitin.com
︡c54e313f-4b44-467a-a198-adfa578153b9︡{"md":"### Objectives for this project:\n1. Create a SageMathCloud account.\n2. Learn how to use a github URL to download project materials.\n3. Use a SAGE worksheet to construct a plot of h(x)=sin(x).\n4. Edit a pre-made TEX file and include the plot for h(x) in the document.\n5. Submit the generated PDF through turnitin.com\n"}︡
︠570f1e87-34ff-4e28-85e7-b852e79a6b74i︠
%md
### Making a graph of sin(x)
︡7e43600e-b7e5-4914-b7e9-c64b5ab453f4︡{"md":"### Making a graph of sin(x)\n"}︡
︠b435f562-2b4d-451e-9faa-37bd2782f76d︠
# First, we have to define the independent variable.
x = var('x')
# Second, we will define the function.
h(x) = sin(x)
# Third, we will plot the function from -2*pi to +2*pi and store the plot in a variable called the_plot
the_plot = plot( h, (x,-2*pi,2*pi) )
# Fourth, save the plot as a PDF that we can import into other documents
the_plot.save('sin_plot.pdf')
# Fifth, let's show the plot in this worksheet
show(the_plot)
︠39b77682-11b4-446b-8f2b-f036e2ddae91︠









