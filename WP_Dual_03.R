### Weigelt Production

library(lpSolveAPI)

lprec <- make.lp(0,11)

set.objfn(lprec,c(750,900,450,13000,12000,5000,900,1200,750,0,0))

add.constraint(lprec,c(  1,0,0,20,0,0,1,0,0,900,450),">=",420)
add.constraint(lprec,c(  1,0,0,15,0,0,0,1,0,900,450),">=",360)
add.constraint(lprec,c(  1,0,0,12,0,0,0,0,1,900,450),">=",300)

add.constraint(lprec,c(  0,1,0,0,20,0,1,0,0,-750,0),">=",420)
add.constraint(lprec,c(  0,1,0,0,15,0,0,1,0,-750,0),">=",360)
add.constraint(lprec,c(  0,1,0,0,12,0,0,0,1,-750,0),">=",300)

add.constraint(lprec,c(  0,0,1,0,0,20,1,0,0,0,-750),">=",420)
add.constraint(lprec,c(  0,0,1,0,0,15,0,1,0,0,-750),">=",360)
add.constraint(lprec,c(  0,0,1,0,0,12,0,0,1,0,-750),">=",300)

lprec <- read.lp("weigelt.lp")

solve(lprec)

get.objective(lprec)

get.variables(lprec)

get.constraints(lprec)

get.sensitivity.rhs(lprec)

get.sensitivity.obj(lprec)

