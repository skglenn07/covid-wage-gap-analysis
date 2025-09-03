clear 
set more off 
capture log close 
cd "/Users/sarahglenn/Documents/UNC/Summer 2024/460/Output"
log using "project.log", replace
use "/Users/sarahglenn/Documents/UNC/Summer 2024/460/Original Data/project.dta"

* Deepali Paasha, Sarah Glenn, Suhailah Boukarfi, Prerna Dash

* Cleaning Data

* drop N/A and missing values
drop if incwage > 999997

* drop missing values
drop if sex > 2

* drop missing values
drop if marst > 6

* drop missing/unknown values
drop if educ < 1 
drop if educ > 11

* drop unknown values
drop if metro < 1

* drop missing values
drop if age > 140

* drop missing values
drop if empstat < 1
drop if empstat > 3

* generate indicator metro variable: not metro area = 0, metro area = 1
gen metroInd = 0 if metro == 1
replace metroInd = 1 if metro >= 2

* generate indicator variable: male = 0, female = 1
gen female = 1 if (sex == 2)
replace female = 0 if (sex == 1)

* generate indicator variable: not black = 0, black = 1
gen black = (race == 2)

* generate indicator variable: married, spouse present = 1, not = 0
gen marstInd = 1 if marst == 1
replace marstInd = 0 if marst > 1

* generate post variable for difference in differences analysis
gen post = (year == 2022)

summarize

*  Basic regression
reg incwage i.female##i.post
outreg2 using projecttable.xls, replace

* Multivariate regressions
reg incwage i.female##i.post uhrswork black metroInd i.educ age marstInd
outreg2 using projecttable.xls, append dec(3)

save "/Users/sarahglenn/Documents/UNC/Summer 2024/460/Cleaned Data/project-cleaned.dta", replace

log close
