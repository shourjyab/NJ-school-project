**fixing directory

cd "C:\Users\Shourjya Deb\Dropbox\school\data\data_creation"

**checking data sets till step 1 of mike's code

use nj_sd_finance
tab year

//data available from 2002-14

clear

**checking data sets till step 2 of m's code

**changing directory to ger code from final_files folder

cd "C:\Users\Shourjya Deb\Dropbox\final_files"

use final_sd_universe

tab year
// data set shows data avialble for the years 1995-2014 

keep if state_name=="New Jersey" /*Keep only NJ observations*/
keep if year>=2002

tab year 
clear
//data available from 2002-2014
//everything seems all right till now 

**checking data sets till step 3 of m' code

**changing directory to grab data sets from previous folder

cd "C:\Users\Shourjya Deb\Dropbox\school\data\data_creation"

save final_sd_unitemp
clear

***********
***********
***********
//start from here for regular work 

use final_sd_unitemp

merge m:m leaid year using nj_sd_finance.dta

//result of merger

/*  not matched                           947
        from master                       947  (_merge==1)
        from using                          0  (_merge==2)

    matched                             8,829  (_merge==3)
*/


edit if _merge==3
edit

tab year
//years 2002-2014 preseent in dataset

drop if _merge!=3 /*drop observations that did not match*/
//(947 observations deleted)

tab year
//years 2002-14 present

drop _merge


**checking step 4 datasets of m'code

*CPI
gen cpi = 1.2980 if year==2002
replace cpi = 1.2741 if year==2003
replace cpi = 1.2339 if year==2004
replace cpi = 1.1932 if year==2005
replace cpi = 1.1636 if year==2006
replace cpi = 1.1180 if year==2007
replace cpi = 1.1169 if year==2008
replace cpi = 1.0873 if year==2009
replace cpi = 1.0713 if year==2010
replace cpi = 1.0405 if year==2011
replace cpi = 1.0227 if year==2012
replace cpi = 1.0076 if year==2013
replace cpi = 1 if year==2014

**Outcomes of Interest 
*Formal Aid Revenue  
rename c01 formal_aid
replace formal_aid=(formal_aid/1000)
label var formal_aid "Formal Aid Only (in 000)"

*Total State Revenue
gen tot_state_rev = (tstrev/1000)*(cpi)
replace tot_state_rev = . if tstrev==-1
label var tot_state_rev "Total Revenue from All State Sources (in 000)"

*Log of Total State Revenue
gen ln_tot_state_rev = ln(tstrev*cpi)
label var ln_tot_state_rev "Log of Total Revenue from All State Sources"

*Total State Revenue per student
gen tot_state_rev_pupil = (tstrev*cpi)/v33
replace tot_state_rev_pupil = . if tstrev==-1
replace tot_state_rev_pupil = . if v33==-9 | v33==-3 | v33==-1
label var tot_state_rev_pupil "Total Revenue from All State Sources per Pupil"

*Total Local Revenue
gen tot_local_rev = (tlocrev/1000)*(cpi)
replace tot_local_rev = . if tlocrev==-1
label var tot_local_rev "Total Revenue from All Local Sources (in 000)"

*Log of Total Local Revenue
gen ln_tot_local_rev = ln(tlocrev*cpi)
label var ln_tot_local_rev "Log of Total Revenue from All Local Sources"

*Total Local Revenue per student
gen tot_local_rev_pupil = (tlocrev*cpi)/v33
replace tot_local_rev_pupil = . if tlocrev==-1
replace tot_local_rev_pupil = . if v33==-9 | v33==-3 | v33==-1
label var tot_local_rev_pupil "Total Revenue from All Local Sources per Pupil"

*Total Federal Revenue
gen tot_fed_rev = (tfedrev/1000)*(cpi)
replace tot_fed_rev = . if tfedrev==-1
label var tot_fed_rev "Total Revenue from All Federal Sources (in 000)"

*Log of Total Federal Revenue
gen ln_tot_fed_rev = ln(tfedrev*cpi)
label var ln_tot_fed_rev "Log of Total Revenue from All Federal Sources"

*Total Federal Revenue per student
gen tot_fed_rev_pupil = (tfedrev*cpi)/v33
replace tot_fed_rev_pupil = . if tfedrev==-1
replace tot_fed_rev_pupil = . if v33==-9 | v33==-3 | v33==-1
label var tot_fed_rev_pupil "Total Revenue from All Federal Sources per Pupil"

*To create variable for all other state revenues 
generate other_state_rev=tot_state_rev-formal_aid
label var other_state_rev "All other State Revenues (in 000)"

**Regional Indicators 
gen south = 0
replace south = 1 if region=="South"
replace south = . if region==""
gen north = 0
replace north = 1 if region=="North"
replace north = . if region==""
gen central = 0
replace central = 1 if region=="Central"
replace central = . if region==""

**Control Variables

**Regional Indicators
label var south "District in South NJ"
label var north "District in North NJ"
label var central "District in Central NJ"

**Student Demographics

* % White Students
gen per_white = (n_white/n_tot_race)*100
label var per_white "% White students"

* % Black Students
gen per_black = (n_black/n_tot_race)*100
label var per_black "% Black Students"

* % Hispanic Students
gen per_hisp = (n_hisp/n_tot_race)*100
label var per_hisp "% Hispanic Students"

* Total Enrollment
gen tot_enroll = v33
replace tot_enroll = . if v33==-9 | v33==-3 | v33==-1
label var tot_enroll "Total Enrollment - Fall Membership"

* Log of Total Enrollment
gen ln_tot_enroll = ln(tot_enroll)
label var ln_tot_enroll "Log of Total Enrollment - Fall Membership"

* % FRL Students
gen per_frl = (n_frl/tot_enroll)*100
label var per_frl "% FRL Students"

* % IEP Students
gen per_iep = (n_iep/tot_enroll)*100
label var per_iep "% IEP Students"

* % LEP Students
gen per_lep = (n_lep/tot_enroll)*100
label var per_lep "% LEP or ELL Students"


tab year
//2002-2014 present


**checking data sets till step 5 of m' code

**5. Merge NJ Verison of Census Data
*****

merge 1:1 leaid year using "nj_sd_census_final.dta"

tab year

//year 2002-15 present

drop _merge

//save nj_sd_finance2
//clear

**step 6 - I have to do this

*****
**6. Imputation 
*****

//use nj_sd_finance2

** impute per_frl in 2005 with 2004 values

gen lag1 = per_frl[_n-1]

replace per_frl=lag1 if year==2005

** impute iep in 2005 using 2004 values

gen lag2 = per_iep[_n-1]

replace per_iep=lag2 if year==2005

** impute lep in 2005 using 2004 values

gen lag3 = per_lep[_n-1]

replace per_lep=lag3 if year==2005

** impute iep in 2007 using 2006 values

gen lag4 = per_iep[_n-1]

replace per_iep=lag4 if year==2007

**impute lep in 2007 using 2006 values

gen lag5 = per_lep[_n-1]

replace per_lep=lag5 if year==2007

**impute iep in 2008 using 2009 values

gen lead1 = per_iep[_n+1]

replace per_iep=lead1 if year==2008

** impute lep in 2008 using 2009 values

gen lead2 = per_lep[_n+1]

replace per_lep=lead2 if year==2008

** impute census variable in 2008 using 2009 values

gen lead3= BA[_n+1]
replace BA=lead3 if year==2008

gen lead4= LessHS[_n+1]
replace LessHS=lead4 if year==2008

gen lead5= MedianIncome[_n+1]
replace MedianIncome=lead5 if year==2008

gen lead6= Poverty[_n+1]
replace Poverty=lead6 if year==2008

gen lead7= Population[_n+1]
replace Population=lead7 if year==2008

gen lead8= White[_n+1]
replace White=lead8 if year==2008

gen lead9= Black[_n+1]
replace Black=lead9 if year==2008

gen lead10= Hispanic[_n+1]
replace Hispanic=lead10 if year==2008

gen lead11= Asian[_n+1]
replace Asian=lead11 if year==2008

gen lead12= Under18[_n+1]
replace Under18=lead12 if year==2008

gen lead13= Over65[_n+1]
replace Over65=lead13 if year==2008

//save, replace
//clear


*****
**sample restrctions and some corrections 
*****

gen sample = 1 
replace sample = 0 if schlev>=4 /* KEEP: elementary school system only, secondary school system only, and elementary-secondary school systems REMOVE: district-years if district type is vocational or special education, nonoperating, or its an education service agency*/
replace sample = 0 if agency_type==5 | agency_type==7 /*KEEP: Regular school districts not in a supervisory union. REMOVE: state agency charge with providing school services for a specific population (agency_type==5); also removes charter school agencies (agency_type==7)*/

replace sample = 0 if year==2015 /*keep data set between 2002-14*/
//this line of code above will show 0 changes in the result
//reason being all the schools under year 2015 will get sample==0
//due to the first replacement - all year 2015 schools are schlev>=4
//keep this in mind and explain - wasted hours over this!


//changes in the dataset from negative to missing values 
//1.For tlocrev, c01, and other_state, replace all negative values with a missing value (.)
 
replace tlocrev=. if tlocrev<0
replace formal_aid=. if formal_aid<0
replace other_state_rev=. if other_state_rev<0

replace tot_state_rev=. if tot_state_rev<0

replace tlocrev=(tlocrev/1000)
label var tlocrev "Revenue from Local Sources (in 0000)"

replace tot_fed_rev=. if tot_fed_rev<0

replace per_frl=. if per_frl<0
replace per_iep=. if per_iep<0
replace per_lep=. if per_lep<0

//restriction to drop if number of students in less than 20
replace sample=0 if tot_enroll<20

//remove observation with 417 on the ratio 
replace sample=0 if stu_teach_ratio==417


//restriction added later
//ami thik bujhlam na eta keno korlam - pore explanation bhebe likhbo
foreach var in tlocrev tot_state_rev formal_aid other_state_rev tot_fed_rev stu_teach_ratio per_white per_black per_hisp n_tot_race per_frl per_iep per_lep {
replace sample = 0 if `var'==.
}


sum tlocrev tot_state_rev formal_aid other_state_rev tot_fed_rev stu_teach_ratio per_white per_black per_hisp n_tot_race per_frl per_iep per_lep if sample==1

keep if sample==1

save nj_sd_fin02-14
clear

use nj_sd_fin02-14

*****
**descriptive statistics for the word document
*****

/*outcomes of interest*/
//revenue from local resources
sum tlocrev if north==1
sum tlocrev if central==1
sum tlocrev if south==1

//revenue from state resources
sum tot_state_rev if north==1
sum tot_state_rev if central==1
sum tot_state_rev if south==1

//formaula aids only 
sum formal_aid if north==1
sum formal_aid if central==1
sum formal_aid if south==1


//all other state revenues
sum other_state_rev if north==1
sum other_state_rev if central==1
sum other_state_rev if south==1


//revenue from federal sources
sum tot_fed_rev if north==1
sum tot_fed_rev if central==1
sum tot_fed_rev if south==1

//average class size

sum stu_teach_ratio if north==1
sum stu_teach_ratio if central==1
sum stu_teach_ratio if south==1

/*student characteristics*/

//% non-hispanic white
sum per_white if north==1
sum per_white if central==1
sum per_white if south==1

//%non-hispanic black
sum per_black if north==1
sum per_black if central==1
sum per_black if south==1

//% hispanic
sum per_hisp if north==1
sum per_hisp if central==1
sum per_hisp if south==1

//total enrollment
sum n_tot_race if north==1
sum n_tot_race if central==1
sum n_tot_race if south==1


//%FRL
sum per_frl if north==1
sum per_frl if central==1
sum per_frl if south==1

//%IEP
sum per_iep if north==1
sum per_iep if central==1
sum per_iep if south==1

//%LEP
sum per_lep if north==1
sum per_lep if central==1
sum per_lep if south==1

/*community characteristics*/

//% residents with ba degree or higher
sum BA if north==1
sum BA if central==1
sum BA if south==1

//% residents with less than HS degree
sum LessHS if north==1
sum LessHS if central==1
sum LessHS if south==1

//Median Household Income
sum MedianIncome if north==1
sum MedianIncome if central==1
sum MedianIncome if south==1

//% residents in poverty
sum Poverty if north==1
sum Poverty if central==1
sum Poverty if south==1

//total residents
sum Population if north==1
sum Population if central==1
sum Population if south==1

//% non-hispanic white resident
sum White if north==1
sum White if central==1
sum White if south==1


//% non-hispanic black resident
sum Black if north==1
sum Black if central==1
sum Black if south==1


//% hispanic residents
sum Hispanic if north==1
sum Hispanic if central==1
sum Hispanic if south==1


//% asian residents
sum Asian if north==1
sum Asian if central==1
sum Asian if south==1

//% residents under 18 years old 
sum Under18 if north==1
sum Under18 if central==1
sum Under18 if south==1


//% residents 65 years or older 
sum Over65 if north==1
sum Over65 if central==1
sum Over65 if south==1






