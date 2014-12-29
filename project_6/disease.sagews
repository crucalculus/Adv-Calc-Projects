︠d9272958-77c1-4cbf-bbaa-18a3463c7d5fi︠
%md
# $SIR$-model for the spread of disease
︡3dbb5917-0acb-4300-8d31-2e8bd661d8ac︡{"md":"# $SIR$-model for the spread of disease\n"}︡
︠496b6817-3311-43fa-8691-fa2ba563b77es︠
# this is the library that we need for the system solver
from sage.calculus.desolvers import desolve_system_rk4

# we make variables for time, susceptibles, infecteds, and recovereds
t, S, I, R = var('t, S, I, R')

# three parameters: a, b and k
# a tells us how infectious the disease is.
# k tells us how many days it takes for someone to recover.
# b is related to how long it will take to recover.
a = 0.01
k = 6
b = 1/k

# here's the solver.
P = desolve_system_rk4( [-a*S*I , a*S*I-b*I , b*I] , [S,I,R] , ics=[0,2000,1,0] , ivar=t , end_points=20  )

# the solver returns a list of points (not functions), so we need to plot lists of data.
PS = list_plot([[t,S] for t,S,I,R in P], plotjoined=True, legend_label='Susceptible', color='blue', thickness=5)
PI = list_plot([[t,I] for t,S,I,R in P], plotjoined=True, legend_label='Infected', color='red', thickness=5, zorder=10)
PR = list_plot([[t,R] for t,S,I,R in P], plotjoined=True, legend_label='Recovered', color='black', thickness=5)

# show the plot
show(PS+PI+PR, title="$SIR$-model for the spread of disease", axes_labels=["Time in Days", "Number of people"])
︡cba617fb-f9a4-4cc6-b1dc-dd9a3f033ba7︡{"once":false,"file":{"show":true,"uuid":"ae724894-1d19-4200-a7c6-1c1c59591b26","filename":"/projects/629d202e-792b-4a3a-9968-b21046327c37/.sage/temp/compute3dc2/1273/tmp_NwiYHU.svg"}}︡
︠9f099721-d646-4f42-b545-0e00270e0899︠









