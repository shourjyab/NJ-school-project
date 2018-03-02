***Creation of NJ School District Analyical File 

clear all

cd "C:\Users\Hayes\Dropbox\My Research\My Research Projects\"
*cd "C:\Users\mh987\Dropbox\My Research\My Research Projects\"

*****
**1. Load and Create NJ Verison of SD Finance File
*****

use "data_collections\nces_data\sd_finance\final_files\final_sd_finance.dta"

keep if fipst==34 /*Keep only NJ observations*/


**Create Regional Identifiers

/*From 2002-03 and on, there is a missing value for county fips. I use the folloiwng 
lines of code to create a variable to uses the "mode" value for county fips by unique district
for all years*/
sort leaid year
by leaid: egen a = mode(fipsco)
drop fipsco
rename a fipsco

/*Region*/
gen region ="South" if fipsco==5 | fipsco==7 | fipsco==15 | fipsco==11 | ///
fipsco==33 | fipsco==1 | fipsco==9 | fipsco==29
replace region="Central" if fipsco==19 | fipsco==21 | fipsco==35 | fipsco==23 | ///
fipsco==25 
replace region="North" if fipsco==13 | fipsco==37 | fipsco==31 | fipsco==17 | ///
fipsco==41 | fipsco==27 | fipsco==39 | fipsco==3 

keep if year>=2002

cd "C:\Users\Hayes\Dropbox\My Research\Consulting Projects\2017_Walter_Rand\school\"
*cd "C:\Users\mh987\Dropbox\My Research\Consulting Projects\2017_Walter_Rand\school\"

save "data\data_creation\nj_sd_finance.dta", replace

*****
**2. Load and Create NJ Verison of SD Universe File
*****

clear all
cd "C:\Users\Hayes\Dropbox\My Research\My Research Projects\"
*cd "C:\Users\mh987\Dropbox\My Research\My Research Projects\"

use "data_collections\nces_data\sd_universe\final_files\final_sd_universe.dta"

keep if state_name=="New Jersey" /*Keep only NJ observations*/
keep if year>=2002

*****
**3. Merge NJ Verison of SD Finance File w/ NJ Version of SD Universe File
*****

cd "C:\Users\Hayes\Dropbox\My Research\Consulting Projects\2017_Walter_Rand\school\"
*cd "C:\Users\mh987\Dropbox\My Research\Consulting Projects\2017_Walter_Rand\school\"
merge m:m leaid year using "data\data_creation\nj_sd_finance.dta"

drop if _merge!=3 /*drop observations that did not match*/
drop _merge

** N = 8,829 District-Year Observations (730 unique school districts and 6 unique fiscal years)*/

*****
**4. Variable Creation
*****

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

*Total State Revenue
gen tot_state_rev = (tstrev/1000)*(cpi)
replace tot_state_rev = . if tstrev==-1
label var tot_state_rev "Total Revenue from All State Sources (in 0000)"

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
label var tot_local_rev "Total Revenue from All Local Sources (in 0000)"

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
label var tot_fed_rev "Total Revenue from All Federal Sources (in 0000)"

*Log of Total Federal Revenue
gen ln_tot_fed_rev = ln(tfedrev*cpi)
label var ln_tot_fed_rev "Log of Total Revenue from All Federal Sources"

*Total Federal Revenue per student
gen tot_fed_rev_pupil = (tfedrev*cpi)/v33
replace tot_fed_rev_pupil = . if tfedrev==-1
replace tot_fed_rev_pupil = . if v33==-9 | v33==-3 | v33==-1
label var tot_fed_rev_pupil "Total Revenue from All Federal Sources per Pupil"

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

*****
**5. Merge NJ Verison of Census Data
*****

cd "C:\Users\Hayes\Dropbox\My Research\Consulting Projects\2017_Walter_Rand\school\data\data_creation\"
*cd "C:\Users\mh987\Dropbox\My Research\Consulting Projects\2017_Walter_Rand\school\data\data_creation\"
merge 1:1 leaid year using "nj_sd_census_final.dta"

*****
**6. Imputation 
*****

*****
**7. Sample Restriction
*****
gen sample = 1 
replace sample = 0 if schlev>=4 /* KEEP: elementary school system only, secondary school system only, and elementary-secondary school systems REMOVE: district-years if district type is vocational or special education, nonoperating, or its an education service agency*/
replace sample = 0 if agency_type==5 | agency_type==7 /*KEEP: Regular school districts not in a supervisory union. REMOVE: state agency charge with providing school services for a specific population (agency_type==5); also removes charter school agencies (agency_type==7)*/

foreach var in tot_state_rev ln_tot_state_rev tot_state_rev_pupil /*tot_state_rev_gaf ln_tot_state_rev_gaf tot_state_rev_pupil_gaf*/ tot_local_rev ln_tot_local_rev tot_local_rev_pupil tot_fed_rev ln_tot_fed_rev tot_fed_rev_pupil south north central per_white per_black per_hisp tot_enroll ln_tot_enroll per_frl per_iep per_lep n_fte stu_teach_ratio BA LessHS MedianIncome Poverty Population White Black Hispanic Asian Under18 Over65 {
replace sample = 0 if `var'==.
}

*****
**8. Save Analytical NJ School File
*****

keep if sample==1

keep region sample leaid year agency_name agency_type schlev tot_state_rev ln_tot_state_rev tot_state_rev_pupil /*tot_state_rev_gaf ln_tot_state_rev_gaf tot_state_rev_pupil_gaf*/ tot_local_rev ln_tot_local_rev tot_local_rev_pupil tot_fed_rev ln_tot_fed_rev tot_fed_rev_pupil south north central per_white per_black per_hisp tot_enroll ln_tot_enroll per_frl per_iep per_lep n_fte stu_teach_ratio BA LessHS MedianIncome Poverty Population White Black Hispanic Asian Under18 Over65

*cd "C:\Users\Hayes\Dropbox\My Research\Consulting Projects\2017_Walter_Rand\school\data_creation\"
cd "C:\Users\mh987\Dropbox\My Research\Consulting Projects\2017_Walter_Rand\school\"

save "data\data_creation\nj_sd_final.dta", replace
