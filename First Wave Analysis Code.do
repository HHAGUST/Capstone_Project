* First Wave Plot
* Using "a_indresp.dta"
// Deal with the variable of Political Interest as variable a_vote6
gen PI = a_vote6
recode PI (1/2=1) (3/4=0) 
label define PI 1 "Interest" 0 "Not Interest" 
label values PI PI
mvdecode PI, mv(-9/-8/-7/-2/-1) 
tw (lpolyci PI a_dvage)
