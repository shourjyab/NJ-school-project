******Creation of Figure 1
clear all

*cd "C:\Users\Hayes\Dropbox\My Research\My Research Projects\"
cd "C:\Users\mh987\Dropbox\My Research\My Research Projects\"

*****
**1. Load and Create NJ Verison of SD Finance File
*****

use "data_collections\nces_data\sd_finance\final_files\final_sd_finance.dta"

keep if fipst==34 /*Keep only NJ observations*/

*cd "C:\Users\Hayes\Dropbox\My Research\Consulting Projects\2017_Walter_Rand\school\"
cd "C:\Users\mh987\Dropbox\My Research\Consulting Projects\2017_Walter_Rand\school\"

save "data\data_creation\nj_sd_finance.dta", replace

*****
**2. Load and Create NJ Verison of SD Universe File
*****

clear all
*cd "C:\Users\Hayes\Dropbox\My Research\My Research Projects\"
cd "C:\Users\mh987\Dropbox\My Research\My Research Projects\"

use "data_collections\nces_data\sd_universe\final_files\final_sd_universe.dta"

keep if state_name=="New Jersey" /*Keep only NJ observations*/

*****
**3. Merge NJ Verison of SD Finance File w/ NJ Version of SD Universe File
*****

*cd "C:\Users\Hayes\Dropbox\My Research\Consulting Projects\2017_Walter_Rand\school\data_creation\"
cd "C:\Users\mh987\Dropbox\My Research\Consulting Projects\2017_Walter_Rand\school\"
merge m:m leaid year using "data\data_creation\nj_sd_finance.dta"

drop if _merge!=3 /*drop observations that did not match*/
drop _merge

** N = 13,221 District-Year Observations (747 unique school districts and 20 unique fiscal years)*/

keep if schlev<=3 /* KEEP: elementary school system only, secondary school system only, and elementary-secondary school systems REMOVE: district-years if district type is vocational or special education, nonoperating, or its an education service agency*/

drop if agency_type==5 | agency_type==7 /*KEEP: Regular school districts not in a supervisory union. REMOVE: state agency charge with providing school services for a specific population (agency_type==5); also removes charter school agencies (agency_type==7)*/

*****
**1. Variable Creation
*****

/*The County FIPs variable is weird. For years between 1995 and 2002, the variable
is fipsco. After 2002, the county id variable is conum. I need to merge the two 
county id variables*/
tostring conum, gen(str_conum) format("%5.0f")
gen conum_n=substr(str_conum, -2, 2)
destring conum_n, replace
foreach num in 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 {
replace fipsco=conum_n if year==`num'
} 

/*There are a few districts with missing county id*/

foreach num in 1995 1996 1997 1998 {
replace fipsco=17 if leaid==3407830
} /*Jersey City School District*/

foreach num in 1996 1997 1998 {
replace fipsco=13 if leaid==3411340
} /*Newark City School System*/

foreach num in 1995 1996 1997 1998 {
replace fipsco=31 if leaid==3412690
} /*Paterson City School District*/


*Region 
gen region ="South" if fipsco==5 | fipsco==7 | fipsco==15 | fipsco==11 | ///
fipsco==33 | fipsco==1 | fipsco==9 | fipsco==29
replace region="Central" if fipsco==19 | fipsco==21 | fipsco==35 | fipsco==23 | ///
fipsco==25 
replace region="North" if fipsco==13 | fipsco==37 | fipsco==31 | fipsco==17 | ///
fipsco==41 | fipsco==27 | fipsco==39 | fipsco==3 

***Outcomes of Interest 

*CPI
gen cpi = 1.5773 if year==1995
replace cpi = 1.5354 if year==1996
replace cpi = 1.4901 if year==1997
replace cpi = 1.4670 if year==1998
replace cpi = 1.4449 if year==1999
replace cpi = 1.4045 if year==2000
replace cpi = 1.3539 if year==2001
replace cpi = 1.3386 if year==2002
replace cpi = 1.3047 if year==2003
replace cpi = 1.2801 if year==2004
replace cpi = 1.2432 if year==2005
replace cpi = 1.1955 if year==2006
replace cpi = 1.1712 if year==2007
replace cpi = 1.1231 if year==2008
replace cpi = 1.1228 if year==2009
replace cpi = 1.0941 if year==2010
replace cpi = 1.0765 if year==2011
replace cpi = 1.0459 if year==2012
replace cpi = 1.0295 if year==2013
replace cpi = 1.0135 if year==2014

*Real Total State Revenue
gen real_state_rev = tstrev*cpi
label var real_state_rev "Real Total State Revenue (in 2014 $)"

*Log of Total State Revenue
gen ln_real_state_rev = ln(real_state_rev)
label var ln_real_state_rev "Log of Total State Revenue"

*Total State Revenue per student
gen real_state_rev_pupil = real_state_rev/v33
replace real_state_rev_pupil = . if tstrev==-1
replace real_state_rev_pupil = . if v33==-9 | v33==-3 | v33==-1
label var real_state_rev_pupil "Total State Revenue per Pupil"


***Variable of Interest
gen south = 0
replace south = 1 if region=="South"
replace south = . if region==""

***Sample Restriction
gen sample = 1
replace sample = 0 if real_state_rev_pupil==.
replace sample = 0 if real_state_rev_pupil>=50000
replace sample = 0 if region=="."
replace sample = 0 if v33==.

sum real_state_rev_pupil if year>=2008 & sample==1, d

**Unweighted
mean real_state_rev_pupil if year>=2008 & sample==1 & region=="North"
mean real_state_rev_pupil if year>=2008 & sample==1 & region=="Central"
mean real_state_rev_pupil if year>=2008 & sample==1 & region=="South"

**Weighted 
mean real_state_rev_pupil [aw=v33] if year>=2008 & sample==1 & region=="North"
mean real_state_rev_pupil [aw=v33] if year>=2008 & sample==1 & region=="Central"
mean real_state_rev_pupil [aw=v33] if year>=2008 & sample==1 & region=="South"

**Unweighted
sum v33 if year>=2008 & sample==1 & region=="North"
sum v33 if year>=2008 & sample==1 & region=="Central"
sum v33 if year>=2008 & sample==1 & region=="South"

graph bar real_state_rev_pupil [aw=v33] if year>=2008 & sample==1, over(region_n)

*************************
*************************
clear all
import excel "C:\Users\mh987\Dropbox\My Research\Consulting Projects\2017_Walter_Rand\school\6_2_2017.xlsx", sheet("unweighted") firstrow

encode region, gen(region_n)

graph twoway (bar mean region_n) (rcap high low region_n)


