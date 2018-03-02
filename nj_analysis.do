/*Outcome of Interest #1 – Log of Revenue from State Sources*/ 

//creating dependent variable - Log of Revenue from State Sources 
use nj_sd_fin02-14
generate ltot_state_rev=log(tot_state_rev)

//log of independent variables
generate ltot_enroll=log(tot_enroll)

//Model 1
regress ltot_state_rev south i.year, vce(cluster leaid)
outreg2 using interest1, excel dec(3) e(all)

//Model 2
regress ltot_state_rev south ltot_enroll i.year, vce(cluster leaid)
outreg2 using interest1, excel dec(3) e(all)

//Model 3
regress ltot_state_rev south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep i.year, vce(cluster leaid)
outreg2 using interest1, excel dec(3) e(all)

clear

use nj_sd_fin08-14

//creating dependent variable - Log of Revenue from State Sources 
generate ltot_state_rev=log(tot_state_rev)

//log of independent variables
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)

//Model 4
regress ltot_state_rev south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep i.year, vce(cluster leaid)
outreg2 using interest1, excel dec(3) e(all)

//Model 5
regress ltot_state_rev south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty lPop White Black Hispanic Asian Under18 Over65 i.year, vce(cluster leaid)
outreg2 using interest1, excel dec(3) e(all)

clear
/*-------------------------------------------------------------------------*/

/*Outcome of Interest #2 – Log of Revenue from State Formula Aid*/

//creating dependent variable - log of revenue from state formula aid only
use nj_sd_fin02-14
generate lformal_aid=log(formal_aid)

//log of independent variables
generate ltot_enroll=log(tot_enroll)

//Model 1
regress lformal_aid south i.year, vce(cluster leaid)
outreg2 using interest2, excel dec(3) e(all)

//Model 2
regress lformal_aid south ltot_enroll i.year, vce(cluster leaid)
outreg2 using interest2, excel dec(3) e(all)

//Model 3
regress lformal_aid south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep i.year, vce(cluster leaid)
outreg2 using interest2, excel dec(3) e(all)
clear

use nj_sd_fin08-14

//creating dependent variable - log of revenue from state resources 
generate lformal_aid=log(formal_aid)

//log of independent variables
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)

//Model 4
regress lformal_aid south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep i.year, vce(cluster leaid)
outreg2 using interest2, excel dec(3) e(all)

//Model 5
regress lformal_aid south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty lPop White Black Hispanic Asian Under18 Over65 i.year, vce(cluster leaid)
outreg2 using interest2, excel dec(3) e(all)

clear
/*-------------------------------------------------------------------------*/

/*Outcome of Interest #3 – Log of Revenue from All Other State Revenues*/

//creating dependent variable - Log of Revenue from All Other State Revenues
use nj_sd_fin02-14
generate lother_state_rev=log(other_state_rev)

//log of independent variables
generate ltot_enroll=log(tot_enroll)

//Model 1
regress lother_state_rev south i.year, vce(cluster leaid)
outreg2 using interest3, excel dec(3) e(all)

//Model 2
regress lother_state_rev south ltot_enroll i.year, vce(cluster leaid)
outreg2 using interest3, excel dec(3) e(all)

//Model 3
regress lother_state_rev south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep i.year, vce(cluster leaid)
outreg2 using interest3, excel dec(3) e(all)

clear

use nj_sd_fin08-14

//creating dependent variable - Log of Revenue from All Other State Revenues 
generate lother_state_rev=log(other_state_rev)

//log of independent variables
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)

//Model 4
regress lother_state_rev south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep i.year, vce(cluster leaid)
outreg2 using interest3, excel dec(3) e(all)

//Model 5
regress lother_state_rev south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty lPop White Black Hispanic Asian Under18 Over65 i.year, vce(cluster leaid)
outreg2 using interest3, excel dec(3) e(all)

clear
/*-------------------------------------------------------------------------*/

/*Outcome of Interest #4 – Log of Revenue from State Sources*/
 
//creating dependent variable - log of revenue from state resources 
use nj_sd_fin02-14
generate ltlocrev=log(tlocrev)

//log of independent variables
generate ltot_enroll=log(tot_enroll)

//Model 1
regress ltlocrev south i.year, vce(cluster leaid)
outreg2 using interest4, excel dec(3) e(all)

//Model 2
regress ltlocrev south ltot_enroll i.year, vce(cluster leaid)
outreg2 using interest4, excel dec(3) e(all)

//Model 3
regress ltlocrev south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep i.year, vce(cluster leaid)
outreg2 using interest4, excel dec(3) e(all)
clear

use nj_sd_fin08-14

//creating dependent variable - log of revenue from state resources 
generate ltlocrev=log(tlocrev)

//log of independent variables
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)

//Model 4
regress ltlocrev south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep i.year, vce(cluster leaid)
outreg2 using interest4, excel dec(3) e(all)

//Model 5
regress ltlocrev south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty lPop White Black Hispanic Asian Under18 Over65 i.year, vce(cluster leaid)
outreg2 using interest4, excel dec(3) e(all)

clear
/*-----------------------------------------------------------------*/


/*Outcome of Interest #5 – Log of Revenue from Federal Sources*/

 //creating dependent variable - Log of Revenue from Federal Sources
use nj_sd_fin02-14
generate ltot_fed_rev=log(tot_fed_rev)

//log of independent variables
generate ltot_enroll=log(tot_enroll)

//Model 1
regress ltot_fed_rev south i.year, vce(cluster leaid)
outreg2 using interest5, excel dec(3) e(all)

//Model 2
regress ltot_fed_rev south ltot_enroll i.year, vce(cluster leaid)
outreg2 using interest5, excel dec(3) e(all)

//Model 3
regress ltot_fed_rev south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep i.year, vce(cluster leaid)
outreg2 using interest5, excel dec(3) e(all)

clear

use nj_sd_fin08-14

//creating dependent variable - Log of Revenue from Federal Sources
generate ltot_fed_rev=log(tot_fed_rev)

//log of independent variables
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)

//Model 4
regress ltot_fed_rev south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep i.year, vce(cluster leaid)
outreg2 using interest5, excel dec(3) e(all)

//Model 5
regress ltot_fed_rev south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty lPop White Black Hispanic Asian Under18 Over65 i.year, vce(cluster leaid)
outreg2 using interest5, excel dec(3) e(all)

clear
/*-------------------------------------------------------------------------*/

/*Outcome of Interest #6 – Average Class Size (Student to Teacher Ratio)*/


use nj_sd_fin02-14

//log of independent variables
generate ltot_enroll=log(tot_enroll)

//Model 1
regress stu_teach_ratio south i.year, vce(cluster leaid)
outreg2 using interest6, excel dec(3) e(all)

//Model 2
regress stu_teach_ratio south ltot_enroll i.year, vce(cluster leaid)
outreg2 using interest6, excel dec(3) e(all)

//Model 3
regress stu_teach_ratio south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep i.year, vce(cluster leaid)
outreg2 using interest6, excel dec(3) e(all)

clear

use nj_sd_fin08-14

//log of independent variables
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)

//Model 4
regress stu_teach_ratio south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep i.year, vce(cluster leaid)
outreg2 using interest6, excel dec(3) e(all)

//Model 5
regress stu_teach_ratio south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty lPop White Black Hispanic Asian Under18 Over65 i.year, vce(cluster leaid)
outreg2 using interest6, excel dec(3) e(all)

clear
/*-------------------------------------------------------------------------*/


***************
***************
***************
***************

//table 4 analysis

use nj_sd_fin08-14

//creating counties via fips codes
generate Atlantic=0 
replace Atlantic=1 if fipsco==1

generate Burlington=0 
replace Burlington=1 if fipsco==5

generate Camden=0 
replace Camden=1 if fipsco==7

generate Cape_May=0 
replace Cape_May=1 if fipsco==9

generate Cumberland=0 
replace Cumberland=1 if fipsco==11

generate Gloucester=0 
replace Gloucester=1 if fipsco==15

generate Ocean=0 
replace Ocean=1 if fipsco==29

generate Salem=0 
replace Salem=1 if fipsco==33



//creating dependent variable - Log of tot state rev, formula aid, other state rev
generate ltot_state_rev=log(tot_state_rev)
generate lformal_aid=log(formal_aid)
generate lother_state_rev=log(other_state_rev)

//log of independent variables
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)


//Model 5
regress ltot_state_rev Atlantic Burlington Camden Cape_May Cumberland Gloucester Ocean Salem ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty lPop White Black Hispanic Asian Under18 Over65 i.year, vce(cluster leaid)

outreg2 using table4-1, excel dec(3) e(all)

regress lformal_aid Atlantic Burlington Camden Cape_May Cumberland Gloucester Ocean Salem ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty lPop White Black Hispanic Asian Under18 Over65 i.year, vce(cluster leaid)

outreg2 using table4-1, excel dec(3) e(all)

regress lother_state_rev Atlantic Burlington Camden Cape_May Cumberland Gloucester Ocean Salem ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty lPop White Black Hispanic Asian Under18 Over65 i.year, vce(cluster leaid)

outreg2 using table4-1, excel dec(3) e(all)

clear


********************************************************************
********************************************************************
********************************************************************

//interactions

use nj_sd_fin08-14

//creating log of state resources
generate ltot_state_rev=log(tot_state_rev)

//creating log of independent variables
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)

//student characterisitcs ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep 

//1 - interaction south*natural log of total enrollment
gen south_enroll=south*ltot_enroll
reg ltot_state_rev south south_enroll i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//2 - interaction of south*per_white
gen south_white=south*per_white
reg ltot_state_rev south ltot_enroll per_white south_white i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//3 - interaction of south*per_black
gen south_black=south*per_black
reg ltot_state_rev south ltot_enroll per_black south_black i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//4 - interaction between south*per_hisp
gen south_hisp=south*per_hisp
reg ltot_state_rev south ltot_enroll per_hisp south_hisp i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//5 - interaction between south*per_frl
gen south_frl=south*per_frl
reg ltot_state_rev south ltot_enroll per_frl south_frl i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//6 - interaction between south*per_iep
gen south_iep=south*per_iep
reg ltot_state_rev south ltot_enroll per_iep south_iep i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//7 - interaction between south*per_lep
gen south_lep=south*per_lep
reg ltot_state_rev south ltot_enroll per_lep south_lep i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//8 adding all student characteristics interaction terms in one regression 
reg ltot_state_rev south ltot_enroll south_enroll south_white south_black south_hisp south_frl south_iep south_lep i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//community characteristics BA LessHS lMeInc Poverty lPop White Black Hispanic Asian Under18 Over65

//9 - interaction of south*BA
gen south_BA=south*BA
reg ltot_state_rev south ltot_enroll BA south_BA i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//10 - interaction of south*LessHS
gen south_LessHS=south*LessHS
reg ltot_state_rev south ltot_enroll LessHS south_LessHS i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//11 - interaction of south*lMeInc
gen south_lMeInc=south*lMeInc
reg ltot_state_rev south ltot_enroll lMeInc south_lMeInc i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//12 - interaction of south*Poverty
gen south_Poverty=south*Poverty
reg ltot_state_rev south ltot_enroll Poverty south_Poverty i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//13 - interaction of south*lPop
gen south_lPop=south*lPop
reg ltot_state_rev south ltot_enroll lPop south_lPop i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//14 - interaction of south*White
gen south_cwhite=south*White
reg ltot_state_rev south ltot_enroll White south_cwhite i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//15 - interaction of south*Black 
gen south_cblack=south*Black
reg ltot_state_rev south ltot_enroll Black south_cblack i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//16 - interaction of south*Hispanic
gen south_chispanic=south*Hispanic
reg ltot_state_rev south ltot_enroll Hispanic south_chispanic i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//17 - interaction of south*Asian
gen south_casian=south*Asian
reg ltot_state_rev south ltot_enroll Asian south_casian i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//18- interaction of south*Under18 

gen south_Under18=south*Under18
reg ltot_state_rev south ltot_enroll Under18 south_Under18 i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//19 - interaction between south*Over65

gen south_Over65=south*Over65
reg ltot_state_rev south ltot_enroll Over65 south_Over65 i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//20 -  adding all community characteristics interaction terms in one regression 

reg ltot_state_rev south ltot_enroll south_BA south_LessHS south_lMeInc south_Poverty south_lPop south_cwhite south_cblack south_chispanic south_casian south_Under18 south_Over65 i.year,vce(cluster leaid)

outreg2 using interactions, excel dec(3) e(all)

//21 - adding student and community characteristics in one regressions 
reg ltot_state_rev south ltot_enroll south_enroll south_white south_black south_hisp south_frl south_iep south_lep south_BA south_LessHS south_lMeInc south_Poverty south_lPop south_cwhite south_cblack south_chispanic south_casian south_Under18 south_Over65 i.year,vce(cluster leaid) 

outreg2 using interactions, excel dec(3) e(all)

clear

// graphs for the project 
//fixed the code - it works! 
************
************
*************
//graph 1 - total student aid per capita over years

use nj_sd_fin02-14

generate Totalaid_perstu=((tot_state_rev*1000)/tot_enroll)

collapse (mean) Totalaid_perstu, by(year)

twoway (line Totalaid_perstu year,lcolor(black) lpattern(solid) lwidth(thick) ///
legend(off) ///
ylabel(0 [2000] 10000) ytitle("Total State Aid per Student($)") xtitle("Year") ///
xtitle("Year") xlabel(2002 [2] 2014))

save graph3a
clear


//graph 1N - normalized version of graph 1 

//normalizing code - normalizes as per the year 2008
use nj_sd_fin02-14

generate Totalaid_perstu=((tot_state_rev*1000)/tot_enroll)

collapse (mean) Totalaid_perstu, by(year)

generate Totalaid_perstu08=Totalaid_perstu if (y==2008)
egen norm = mean(Totalaid_perstu08)
gen n_Totalaid_perstu = Totalaid_perstu/norm
sort year


//graph code 
twoway (line n_Totalaid_perstu year,lcolor(black) lpattern(solid) lwidth(thick) ///
xline(2008, lpattern(dash) lcolor(black) lwidth(midthick)) ///
legend(off) ///
ylabel(0.7 [0.1] 1.1) ytitle("Total State Aid per Student (2008=1)") xtitle("Year") ///
xtitle("Year") xlabel(2002 [2] 2014))

save graph3a_n
clear

//graph 2 - total student aid per capita over years, with regions specified

use nj_sd_fin02-14
generate Totalaid_perstu=((tot_state_rev*1000)/tot_enroll)

//region identifier
generate RegionID=0
replace RegionID=1 if north==1
replace RegionID=2 if central==1
replace RegionID=3 if south==1


collapse (mean) Totalaid_perstu, by(year RegionID)


//graph code - three separate lines for different regions
twoway (line Totalaid_perstu year if RegionID==1,lcolor(black) lpattern(shortdash) lwidth(thick)) ///
|| (line Totalaid_perstu year if RegionID==2, lcolor(black) lpattern(longdash) lwidth(thick)) ///
|| (line Totalaid_perstu year if RegionID==3, ///
lcolor(black) lpattern(solid) lwidth(thick) ///
legend(row(1) label(1 "North") label(2 "Central") label(3 "South")) ///
ylabel(0 [2000] 10000) ytitle("Total Student Aid per Student($)") xtitle("Year") ///
xtitle("Year") xlabel(2002 [2] 2014))

save graph3b
clear

//graph 2N - normalized version of graph 2, year is 2008
 
use nj_sd_fin02-14
generate Totalaid_perstu=((tot_state_rev*1000)/tot_enroll)

//region identifier
generate RegionID=0
replace RegionID=1 if north==1
replace RegionID=2 if central==1
replace RegionID=3 if south==1

collapse (mean) Totalaid_perstu, by(year RegionID)

gen Totalaid_perstu08 = Totalaid_perstu if (year== 2008)
bysort RegionID: egen norm = mean(Totalaid_perstu08)
gen n_Totalaid_perstu = Totalaid_perstu / norm
sort RegionID year


twoway (line n_Totalaid_perstu year if RegionID==1,lcolor(black) lpattern(shortdash) lwidth(thick)) ///
|| (line n_Totalaid_perstu year if RegionID==2, lcolor(black) lpattern(longdash) lwidth(thick)) ///
|| (line n_Totalaid_perstu year if RegionID==3, ///
lcolor(black) lpattern(solid) lwidth(thick) xline(2008, lpattern(dash) lcolor(black) lwidth(midthick)) ///
legend(row(1) label(1 "North") label(2 "Central") label(3 "South")) ///
ylabel(0.7 [0.1] 1.1) ytitle("State Aid per Student (2008=1)") xtitle("Year") ///
xtitle("Year") xlabel(2002 [2] 2014))



save graph3b_n
clear

//9 interaction models 
clear

use nj_sd_fin08-14

//creating log of state resources
generate ltot_state_rev=log(tot_state_rev)

//creating log of independent variables
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)

//student characterisitcs ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep 
//community characteristics BA LessHS lMeInc Poverty lPop White Black Hispanic Asian Under18 Over65

//creating other race variable for student characteristics
generate per_otherace= 100-(per_white+per_black+per_hisp)

//creating non white race variable for student characteristics 
generate non_white=(100-White)

//generating interaction variables 
//student characteristics
generate south_black=per_black*south
generate south_hisp=per_hisp*south
generate south_otherace=per_otherace*south

gen south_frl=south*per_frl
gen south_iep=south*per_iep
gen south_lep=south*per_lep

//community characteristics
gen south_BA=south*BA
gen south_LessHS=south*LessHS

gen south_lMeInc=south*lMeInc
gen south_Poverty=south*Poverty

gen south_nonwhite=south*non_white

gen south_Under18=south*Under18
gen south_Over65=south*Over65

//interaction 1 - hisp, black, otherace interatcted with south

reg ltot_state_rev south ltot_enroll per_black per_hisp per_otherace south_black south_hisp south_otherace i.year,vce(cluster leaid)
outreg2 using 8_interactions, excel dec(3) e(all)

//repeat of model 1 without the interactions 
reg ltot_state_rev south ltot_enroll per_black per_hisp per_otherace i.year,vce(cluster leaid)
outreg2 using 8_interactions, excel dec(3) e(all)

//interaction 2 - frl, iep, lep interacted with south 

reg ltot_state_rev south ltot_enroll per_frl per_iep per_lep south_frl south_iep south_lep i.year,vce(cluster leaid)
outreg2 using 8_interactions, excel dec(3) e(all)

//repeat of model 2 without the interactions 
reg ltot_state_rev south ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using 8_interactions, excel dec(3) e(all)

//interaction 3- all student characterisitics variables

reg ltot_state_rev south ltot_enroll per_black per_hisp per_otherace per_frl per_iep per_lep south_black south_hisp south_otherace south_frl south_iep south_lep i.year,vce(cluster leaid)    
outreg2 using 8_interactions, excel dec(3) e(all)

//repeat of model 3 without the interactions 
reg ltot_state_rev south ltot_enroll per_black per_hisp per_otherace per_frl per_iep per_lep i.year,vce(cluster leaid)    
outreg2 using 8_interactions, excel dec(3) e(all)

//interaction 4 - ba, lesshs interactions with south

reg ltot_state_rev south ltot_enroll BA LessHS south_BA south_LessHS i.year,vce(cluster leaid)
outreg2 using 8_interactions, excel dec(3) e(all)

//repeat of model 4 without the interactions 
reg ltot_state_rev south ltot_enroll BA LessHS i.year,vce(cluster leaid)
outreg2 using 8_interactions, excel dec(3) e(all)

//interaction 5 - poverty interacted with south

reg ltot_state_rev south ltot_enroll Poverty south_Poverty i.year,vce(cluster leaid)
outreg2 using 8_interactions, excel dec(3) e(all)

//repeat of model 5 without the interactions 
reg ltot_state_rev south ltot_enroll Poverty i.year,vce(cluster leaid)
outreg2 using 8_interactions, excel dec(3) e(all)

//interaction 6 - non-white

reg ltot_state_rev south ltot_enroll non_white south_nonwhite i.year,vce(cluster leaid)
outreg2 using 8_interactions, excel dec(3) e(all)

//repeat of model 6 without the interactions
reg ltot_state_rev south ltot_enroll non_white i.year,vce(cluster leaid)
outreg2 using 8_interactions, excel dec(3) e(all)



/*interaction  - under 18, over 65 interaction with south 

reg ltot_state_rev south ltot_enroll Under18 Over65 south_Under18 south_Over65 i.year,vce(cluster leaid)

outreg2 using 9_interactions, excel dec(3) e(all)*/


//interactions 7 - all community interactions with south 

reg ltot_state_rev south ltot_enroll BA LessHS lMeInc Poverty non_white Under18 Over65 south_BA south_LessHS south_lMeInc south_Poverty south_nonwhite south_Under18 south_Over65 i.year,vce(cluster leaid)
outreg2 using 8_interactions, excel dec(3) e(all)

//repeat of model 7 without the interactions
reg ltot_state_rev south ltot_enroll BA LessHS lMeInc Poverty non_white Under18 Over65 i.year,vce(cluster leaid)
outreg2 using 8_interactions, excel dec(3) e(all)


//interaction 8 - comm+student interactions with south 

reg ltot_state_rev south ltot_enroll per_black per_hisp per_otherace per_frl per_iep per_lep BA LessHS lMeInc Poverty non_white Under18 Over65 south_black south_hisp south_otherace south_frl south_iep south_lep south_BA south_LessHS south_lMeInc south_Poverty south_nonwhite south_Under18 south_Over65 i.year,vce(cluster leaid)    
outreg2 using 8_interactions, excel dec(3) e(all)

//repeat of model 8 without the interactions
reg ltot_state_rev south ltot_enroll per_black per_hisp per_otherace per_frl per_iep per_lep BA LessHS lMeInc Poverty non_white Under18 Over65 i.year,vce(cluster leaid)    
outreg2 using 8_interactions, excel dec(3) e(all)

clear 


********************************************************************
********************************************************************
********************************************************************
//creating table 7

use nj_sd_fin08-14

//generating year dummies 

generate yr_2009=0
replace yr_2009=1 if year==2009

generate yr_2010=0
replace yr_2010=1 if year==2010

generate yr_2011=0
replace yr_2011=1 if year==2011

generate yr_2012=0
replace yr_2012=1 if year==2012

generate yr_2013=0
replace yr_2013=1 if year==2013

generate yr_2014=0
replace yr_2014=1 if year==2014

//generating varibales int he format to be used

generate ltot_state_rev=log(tot_state_rev)
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)



regress ltot_state_rev yr_2009 yr_2010 yr_2011 yr_2012 yr_2013 yr_2014 ltot_enroll per_white per_black per_hisp ///
 per_frl per_iep per_lep BA LessHS lMeInc Poverty lPop White Black Hispanic Asian Under18 Over65 if north==1, vce(cluster leaid)
 
 outreg2 using table_7, excel dec(3) e(all)
 
 regress ltot_state_rev yr_2009 yr_2010 yr_2011 yr_2012 yr_2013 yr_2014 ltot_enroll per_white per_black per_hisp ///
 per_frl per_iep per_lep BA LessHS lMeInc Poverty lPop White Black Hispanic Asian Under18 Over65 if central==1, vce(cluster leaid)
 
outreg2 using table_7, excel dec(3) e(all)

regress ltot_state_rev yr_2009 yr_2010 yr_2011 yr_2012 yr_2013 yr_2014 ltot_enroll per_white per_black per_hisp ///
 per_frl per_iep per_lep BA LessHS lMeInc Poverty lPop White Black Hispanic Asian Under18 Over65 if south==1, vce(cluster leaid)
 
outreg2 using table_7, excel dec(3) e(all)

//south*year interaction 
generate south_2009=south*yr_2009
generate south_2010=south*yr_2010
generate south_2011=south*yr_2011
generate south_2012=south*yr_2012
generate south_2013=south*yr_2013
generate south_2014=south*yr_2014

regress ltot_state_rev yr_2009 yr_2010 yr_2011 yr_2012 yr_2013 yr_2014 ltot_enroll per_white per_black per_hisp ///
 per_frl per_iep per_lep BA LessHS lMeInc Poverty lPop White Black Hispanic Asian Under18 Over65 south south_2009 south_2010 south_2011 south_2012 south_2013 south_2014, vce(cluster leaid)

 outreg2 using table_7, excel dec(3) e(all)
 clear


 
********************************************************************
********************************************************************
********************************************************************
//creating table 5

use nj_sd_fin02-14

//total state aid 

*Row 1 - Mean and SD
tabstat tot_state_rev, stat(mean sd min max)

*Row 2 - Within-region SD

//region identifier
generate RegionID=0
replace RegionID=1 if north==1
replace RegionID=2 if central==1
replace RegionID=3 if south==1


areg tot_state_rev, absorb(RegionID)
predict u_hat_region, resid
tabstat u_hat_region, stat(mean, sd)  

*Row 3 - Within-county SD
// we don't have a county id but a fipsco id
//will be using the fipsco variable for county level analysis
//21 unique values - 21 counties - so I guess it's a county indicator

areg tot_state_rev, absorb(fipsco)
predict u_hat_county, resid
tabstat u_hat_county, stat(mean, sd)

*Row 4 - Within-school district SD
areg tot_state_rev, absorb(leaid)
predict u_hat_district, resid
tabstat u_hat_district, stat(mean, sd)

//formula aid 

*Row 1 - Mean and SD
tabstat formal_aid, stat(mean sd min max)

*Row 2 - Within-region SD

//region identifier
generate RegionID=0
replace RegionID=1 if north==1
replace RegionID=2 if central==1
replace RegionID=3 if south==1

areg formal_aid, absorb(RegionID)
predict u_hat_region, resid
tabstat u_hat_region, stat(mean, sd)  

*Row 3 - Within-county SD
areg formal_aid, absorb(fipsco)
predict u_hat_county, resid
tabstat u_hat_county, stat(mean, sd)

*Row 4 - Within-school district SD
areg formal_aid, absorb(leaid)
predict u_hat_district, resid
tabstat u_hat_district, stat(mean, sd)


//non-formuna aid
*Row 1 - Mean and SD
tabstat other_state_rev, stat(mean sd min max)

*Row 2 - Within-region SD

//region identifier
generate RegionID=0
replace RegionID=1 if north==1
replace RegionID=2 if central==1
replace RegionID=3 if south==1

areg other_state_rev, absorb(RegionID)
predict u_hat_region, resid
tabstat u_hat_region, stat(mean, sd)  

*Row 3 - Within-county SD
areg other_state_rev, absorb(fipsco)
predict u_hat_county, resid
tabstat u_hat_county, stat(mean, sd)

*Row 4 - Within-school district SD
areg other_state_rev, absorb(leaid)
predict u_hat_district, resid
tabstat u_hat_district, stat(mean, sd)

**************************************************

********************************************************************
********************************************************************
********************************************************************
//creating table 6

use nj_sd_fin08-14

// creating district id's other than the leaids 
sort leaid
by leaid: gen id = 1 if _n==1
replace id = sum(id)
replace id = . if missing(id)
move id leaid

//creating south and non-south dummies 

gen non_south=0
move non_south south
replace non_south=1 if south==0

//to check how many south school districts+non-south school districts
unique id 
//total districts - 548, district years - 3513

unique id if south==1
//total districts - 192, district years - 1221

unique id if non-south==1
//total districts - 356, district years - 2292

//creating dummies for all south nj districts 

foreach num in 4 8 13 15 16 18 19 20 22 25 30 31 32 35 36 44 48 49 52 53 54 55 56 61 62 67 68 69 71 72 74 75 76 82 84 88 90 91 94 96 98 100 103 106 112 113 {
gen id_s_`num' = 0
replace id_s_`num'=1 if id==`num'
}  

foreach num in 116 118 119 121 122 124 129 130 135 139 141 146 156 159 160 161 164 165 166 169 170 175 176 177 178 181 183 193 211 216 217 225 230 232 234 {
gen id_s_`num' = 0
replace id_s_`num'=1 if id==`num'
}

foreach num in 236 237 238 239 243 248 249 250 256 257 260 261 262 263 264 268 270 273 274 275 278 280 281 284 286 287 290 292 300 304 312 317 318 319 323 {
gen id_s_`num' = 0
replace id_s_`num'=1 if id==`num'
}

foreach num in 324 329 339 342 343 346 351 352 353 355 359 365 375 376 377 378 382 383 385 386 388 389 391 392 394 397 401 414 415 426 430 435 436 437 439 {
gen id_s_`num' = 0
replace id_s_`num'=1 if id==`num'
}

foreach num in 442 443 449 454 455 456 462 463 467 468 469 472 473 478 481 485 487 489 491 492 495 496 505 506 512 515 517 518 527 529 531 534 535 536 538 {
gen id_s_`num' = 0
replace id_s_`num'=1 if id==`num'
}

foreach num in 539 541 542 544 545 547 {
gen id_s_`num' = 0
replace id_s_`num'=1 if id==`num'
}

//checking for south and dummies 
move south id_s_4

//generating variables in the format to be used

generate ltot_state_rev=log(tot_state_rev)
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
//generate lPop=log(Population)


//regression outreg for base variables and south district dummmies 

regress ltot_state_rev ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc ///
Poverty Pop White Black Hispanic Asian Under18 Over65 id_s_4 id_s_8 id_s_13 id_s_15 id_s_16 id_s_18 id_s_19 ///
id_s_20 id_s_22 id_s_25 id_s_30 id_s_31 id_s_32 id_s_35 id_s_36 id_s_44 id_s_48 id_s_49 id_s_52 id_s_53 id_s_54 ///
id_s_55 id_s_56 id_s_61 id_s_62 id_s_67 id_s_68 id_s_69 id_s_71 id_s_72 id_s_74 id_s_75 id_s_76 id_s_82 id_s_84 ///
id_s_88 id_s_90 id_s_91 id_s_94 id_s_96 id_s_98 id_s_100 id_s_103 id_s_106 id_s_112 id_s_113 id_s_116 id_s_118 ///
id_s_119 id_s_121 id_s_122 id_s_124 id_s_129 id_s_130 id_s_135 id_s_139 id_s_141 id_s_146 id_s_156 id_s_159 /// 
id_s_160 id_s_161 id_s_164 id_s_165 id_s_166 id_s_169 id_s_170 id_s_175 id_s_176 id_s_177 id_s_178 id_s_181 ///
id_s_183 id_s_193 id_s_211 id_s_216 id_s_217 id_s_225 id_s_230 id_s_232 id_s_234 id_s_236 id_s_237 id_s_238 ///
id_s_239 id_s_243 id_s_248 id_s_249 id_s_250 id_s_256 id_s_257 id_s_260 id_s_261 id_s_262 id_s_263 id_s_264 ///
id_s_268 id_s_270 id_s_273 id_s_274 id_s_275 id_s_278 id_s_280 id_s_281 id_s_284 id_s_286 id_s_287 id_s_290 ///
id_s_292 id_s_300 id_s_304 id_s_312 id_s_317 id_s_318 id_s_319 id_s_323 id_s_324 id_s_329 id_s_339 id_s_342 ///
id_s_343 id_s_346 id_s_351 id_s_352 id_s_353 id_s_355 id_s_359 id_s_365 id_s_375 id_s_376 id_s_377 id_s_378 ///
id_s_382 id_s_383 id_s_385 id_s_386 id_s_388 id_s_389 id_s_391 id_s_392 id_s_394 id_s_397 id_s_401 id_s_414 ///
id_s_415 id_s_426 id_s_430 id_s_435 id_s_436 id_s_437 id_s_439 id_s_442 id_s_443 id_s_449 id_s_454 id_s_455 ///
id_s_456 id_s_462 id_s_463 id_s_467 id_s_468 id_s_469 id_s_472 id_s_473 id_s_478 id_s_481 id_s_485 id_s_487 ///
id_s_489 id_s_491 id_s_492 id_s_495 id_s_496 id_s_505 id_s_506 id_s_512 id_s_515 id_s_517 id_s_518 id_s_527 ///
id_s_529 id_s_531 id_s_534 id_s_535 id_s_536 id_s_538 id_s_539 id_s_541 id_s_542 id_s_544 id_s_545 id_s_547


outreg2 using table6_ss, excel dec(3) e(all)

///Create Groups of Muni's (South-Positive, South-Negative, south-not significant)

** Statistically Significant and Positive 
gen ss_pos = 0
foreach num in 8 15 16 18 20 22 32 67 75 82 88 96 112 113 122 129 130 141 159 160 164 176 193 211 217 232 236 237 243 250 256 257 264 270 273 278 281 284 317 329 343 355 359 376 383 385 386 388 389 394 401 435 439 454 455 463 467 469 473 485 489 491 495 505 506 512 517 531 547 {
replace ss_pos = 1 if id_s_`num'==1
} 


** Statistically Significant and Negative
gen ss_neg = 0
foreach num in 4 13 25 71 72 84 135 170 175 177 178 216 234 319 375 392 430 436 443 456 481 492 534 539 545 {
replace ss_neg = 1 if id_s_`num'==1
}


** Not Statistically Significant
gen not_ss = 0
foreach num in 19 30 31 35 36 44 48 49 52 53 54 55 56 61 62 68 69 74 76 90 91 94 98 100 103 106 116 118 119 121 124 139 146 156 161 165 166 169 181 183 225 230 238 239 248 249 260 261 262 263 268 274 275 280 286 287 290 292 300 304 312 318 323 324 339 342 346 351 352 353 365 377 378 382 391 397 414 415 426 437 442 449 462 468 472 478 487 496 515 518 527 529 535 536 538 541 542 544 {
replace not_ss = 1 if id_s_`num'==1
} 

//non-south school districts dummy already created

//testing for school district numbers 
unique id if ss_neg==1

unique id if ss_pos==1

unique id if not_ss==1 

unique id if non_south==1

unique id if south==1

******* Creating Table 6 


**Panel 1 - state aid 

*Statistically Significant and Negative - row 1
sum tot_state_rev formal_aid other_state_rev if ss_neg==1 

*Statistically Significant and Positive - row 2
sum tot_state_rev formal_aid other_state_rev if ss_pos==1 

*Not Statistically Significant
sum tot_state_rev formal_aid other_state_rev if not_ss==1 

*Non-south school districts
sum tot_state_rev formal_aid other_state_rev if non_south==1


**Panel 2 - Student Indicators

*Statistically Significant and Negative - row 1
sum tot_enroll per_white per_black per_hisp per_frl per_iep per_lep if ss_neg==1 

*Statistically Significant and Positive - row 2
sum tot_enroll per_white per_black per_hisp per_frl per_iep per_lep if ss_pos==1 

*Not Statistically Significant
sum tot_enroll per_white per_black per_hisp per_frl per_iep per_lep if not_ss==1 

*Non-south school districts
sum tot_enroll per_white per_black per_hisp per_frl per_iep per_lep if non_south==1 

**Panel 2 - Community Indicators

*Statistically Significant and Negative - row 1
sum BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 if ss_neg==1 

*Statistically Significant and Positive - row 2 
sum BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 if ss_pos==1 

*Not Statistically Significant
sum BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 if not_ss==1

*Non-south school districts
sum BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 if non_south==1



****Testing Statistical Significance


regress ltot_state_rev ss_neg not_ss  non_south, vce(cluster leaid)
regress formal_aid ss_neg not_ss  non_south, vce(cluster leaid)
regress other_state_rev ss_neg not_ss  non_south, vce(cluster leaid)


regress tot_enroll ss_neg not_ss  non_south, vce(cluster leaid)
regress per_white ss_neg not_ss  non_south, vce(cluster leaid)
regress per_black ss_neg not_ss  non_south, vce(cluster leaid)
regress per_hisp ss_neg not_ss  non_south, vce(cluster leaid)
regress per_frl ss_neg not_ss  non_south, vce(cluster leaid)
regress per_iep ss_neg not_ss  non_south, vce(cluster leaid)
regress per_lep ss_neg not_ss  non_south, vce(cluster leaid)


regress BA ss_neg not_ss  non_south, vce(cluster leaid)
regress LessHS ss_neg not_ss  non_south, vce(cluster leaid)
regress lMeInc ss_neg not_ss  non_south, vce(cluster leaid)
regress Poverty ss_neg not_ss  non_south, vce(cluster leaid)
regress Population ss_neg not_ss  non_south, vce(cluster leaid)
regress White ss_neg not_ss  non_south, vce(cluster leaid)
regress Black ss_neg not_ss  non_south, vce(cluster leaid)
regress Hispanic ss_neg not_ss  non_south, vce(cluster leaid)
regress Asian ss_neg not_ss  non_south, vce(cluster leaid)
regress Under18 ss_neg not_ss  non_south, vce(cluster leaid)
regress Over65 ss_neg not_ss  non_south, vce(cluster leaid)

outreg2 using table_6reg, excel dec(3) e(all)


**************************************************

********************************************************************
********************************************************************
********************************************************************
//creating table 6 - 2nd analysis



use nj_sd_fin08-14

// creating district id's other than the leaids 
sort leaid
by leaid: gen id = 1 if _n==1
replace id = sum(id)
replace id = . if missing(id)
move id leaid

//creating south and non-south dummies 

gen non_south=0
move non_south south
replace non_south=1 if south==0

//to check how many south school districts+non-south school districts
unique id 
//total districts - 548, district years - 3513

unique id if south==1
//total districts - 192, district years - 1221

unique id if non-south==1
//total districts - 356, district years - 2292

//creating dummies for all south nj districts 

foreach num in 4 8 13 15 16 18 19 20 22 25 30 31 32 35 36 44 48 49 52 53 54 55 56 61 62 67 68 69 71 72 74 75 76 82 84 88 90 91 94 96 98 100 103 106 112 113 {
gen id_s_`num' = 0
replace id_s_`num'=1 if id==`num'
}  

foreach num in 116 118 119 121 122 124 129 130 135 139 141 146 156 159 160 161 164 165 166 169 170 175 176 177 178 181 183 193 211 216 217 225 230 232 234 {
gen id_s_`num' = 0
replace id_s_`num'=1 if id==`num'
}

foreach num in 236 237 238 239 243 248 249 250 256 257 260 261 262 263 264 268 270 273 274 275 278 280 281 284 286 287 290 292 300 304 312 317 318 319 323 {
gen id_s_`num' = 0
replace id_s_`num'=1 if id==`num'
}

foreach num in 324 329 339 342 343 346 351 352 353 355 359 365 375 376 377 378 382 383 385 386 388 389 391 392 394 397 401 414 415 426 430 435 436 437 439 {
gen id_s_`num' = 0
replace id_s_`num'=1 if id==`num'
}

foreach num in 442 443 449 454 455 456 462 463 467 468 469 472 473 478 481 485 487 489 491 492 495 496 505 506 512 515 517 518 527 529 531 534 535 536 538 {
gen id_s_`num' = 0
replace id_s_`num'=1 if id==`num'
}

foreach num in 539 541 542 544 545 547 {
gen id_s_`num' = 0
replace id_s_`num'=1 if id==`num'
}

//checking for south and dummies 
move south id_s_4

//generating variables in the format to be used

generate ltot_state_rev=log(tot_state_rev)
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
//generate lPop=log(Population)


//regression outreg for base variables and south district dummmies 

regress ltot_state_rev ltot_enroll ///
id_s_4 id_s_8 id_s_13 id_s_15 id_s_16 id_s_18 id_s_19 ///
id_s_20 id_s_22 id_s_25 id_s_30 id_s_31 id_s_32 id_s_35 id_s_36 id_s_44 id_s_48 id_s_49 id_s_52 id_s_53 id_s_54 ///
id_s_55 id_s_56 id_s_61 id_s_62 id_s_67 id_s_68 id_s_69 id_s_71 id_s_72 id_s_74 id_s_75 id_s_76 id_s_82 id_s_84 ///
id_s_88 id_s_90 id_s_91 id_s_94 id_s_96 id_s_98 id_s_100 id_s_103 id_s_106 id_s_112 id_s_113 id_s_116 id_s_118 ///
id_s_119 id_s_121 id_s_122 id_s_124 id_s_129 id_s_130 id_s_135 id_s_139 id_s_141 id_s_146 id_s_156 id_s_159 /// 
id_s_160 id_s_161 id_s_164 id_s_165 id_s_166 id_s_169 id_s_170 id_s_175 id_s_176 id_s_177 id_s_178 id_s_181 ///
id_s_183 id_s_193 id_s_211 id_s_216 id_s_217 id_s_225 id_s_230 id_s_232 id_s_234 id_s_236 id_s_237 id_s_238 ///
id_s_239 id_s_243 id_s_248 id_s_249 id_s_250 id_s_256 id_s_257 id_s_260 id_s_261 id_s_262 id_s_263 id_s_264 ///
id_s_268 id_s_270 id_s_273 id_s_274 id_s_275 id_s_278 id_s_280 id_s_281 id_s_284 id_s_286 id_s_287 id_s_290 ///
id_s_292 id_s_300 id_s_304 id_s_312 id_s_317 id_s_318 id_s_319 id_s_323 id_s_324 id_s_329 id_s_339 id_s_342 ///
id_s_343 id_s_346 id_s_351 id_s_352 id_s_353 id_s_355 id_s_359 id_s_365 id_s_375 id_s_376 id_s_377 id_s_378 ///
id_s_382 id_s_383 id_s_385 id_s_386 id_s_388 id_s_389 id_s_391 id_s_392 id_s_394 id_s_397 id_s_401 id_s_414 ///
id_s_415 id_s_426 id_s_430 id_s_435 id_s_436 id_s_437 id_s_439 id_s_442 id_s_443 id_s_449 id_s_454 id_s_455 ///
id_s_456 id_s_462 id_s_463 id_s_467 id_s_468 id_s_469 id_s_472 id_s_473 id_s_478 id_s_481 id_s_485 id_s_487 ///
id_s_489 id_s_491 id_s_492 id_s_495 id_s_496 id_s_505 id_s_506 id_s_512 id_s_515 id_s_517 id_s_518 id_s_527 ///
id_s_529 id_s_531 id_s_534 id_s_535 id_s_536 id_s_538 id_s_539 id_s_541 id_s_542 id_s_544 id_s_545 id_s_547


outreg2 using table6_ss2, excel dec(3) e(all)

///Create Groups of Muni's (South-Positive, South-Negative, south-not significant)

** Statistically Significant and Positive 
gen ss_pos = 0
foreach num in 8 15 18 19 25 32 35 36 49 53 54 55 61 67 72 74 75 76 82 84 88 90 91 96 98 100 103 112 116 118 119 121 122 124 129 135 139 141 146 156 159 160 161 164 165 166 169 181 211 217 232 234 236 238 239 248 250 256 260 261 262 263 264 268 270 278 284 290 292 300 304 317 318 323 324 329 339 342 343 351 353 355 359 365 375 376 377 378 382 383 385 386 388 389 394 397 401 414 426 430 435 436 439 442 443 455 462 468 469 473 481 485 487 489 491 495 505 506 512 517 529 531 534 536 538 539 541 542 544 545 547 {
replace ss_pos = 1 if id_s_`num'==1
} 


** Statistically Significant and Negative
gen ss_neg = 0
foreach num in 4 30 69 71 175 177 275 287 312 319 392 456 {
replace ss_neg = 1 if id_s_`num'==1
}


** Not Statistically Significant
gen not_ss = 0
foreach num in  13 16 20 22 31 44 48 52 56 62 68 94 106 113 130 170 176 178 183 193 216 225 230 237 243 249 257 273 274 280 281 286 346 352 391 415 437 449 454 463 467 472 478 492 496 515 518 527 535 {
replace not_ss = 1 if id_s_`num'==1
} 

//non-south school districts dummy already created

//testing for school district numbers 
unique id if ss_neg==1

unique id if ss_pos==1

unique id if not_ss==1 

unique id if non_south==1

unique id if south==1

******* Creating Table 6 


**Panel 1 - state aid 

*Statistically Significant and Negative - row 1
sum tot_state_rev formal_aid other_state_rev if ss_neg==1 

*Statistically Significant and Positive - row 2
sum tot_state_rev formal_aid other_state_rev if ss_pos==1 

*Not Statistically Significant
sum tot_state_rev formal_aid other_state_rev if not_ss==1 

*Non-south school districts
sum tot_state_rev formal_aid other_state_rev if non_south==1


**Panel 2 - Student Indicators

*Statistically Significant and Negative - row 1
sum tot_enroll per_white per_black per_hisp per_frl per_iep per_lep if ss_neg==1 

*Statistically Significant and Positive - row 2
sum tot_enroll per_white per_black per_hisp per_frl per_iep per_lep if ss_pos==1 

*Not Statistically Significant
sum tot_enroll per_white per_black per_hisp per_frl per_iep per_lep if not_ss==1 

*Non-south school districts
sum tot_enroll per_white per_black per_hisp per_frl per_iep per_lep if non_south==1 

**Panel 3 - Community Indicators

*Statistically Significant and Negative - row 1
sum BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 if ss_neg==1 

*Statistically Significant and Positive - row 2 
sum BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 if ss_pos==1 

*Not Statistically Significant
sum BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 if not_ss==1

*Non-south school districts
sum BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 if non_south==1


****Testing Statistical Significance


regress ltot_state_rev ss_neg not_ss  non_south, vce(cluster leaid)
regress formal_aid ss_neg not_ss  non_south, vce(cluster leaid)
regress other_state_rev ss_neg not_ss  non_south, vce(cluster leaid)


regress tot_enroll ss_neg not_ss non_south, vce(cluster leaid)
regress per_white ss_neg not_ss non_south, vce(cluster leaid)
regress per_black ss_neg not_ss non_south, vce(cluster leaid)
regress per_hisp ss_neg not_ss non_south, vce(cluster leaid)
regress per_frl ss_neg not_ss non_south, vce(cluster leaid)
regress per_iep ss_neg not_ss non_south, vce(cluster leaid)
regress per_lep ss_neg not_ss non_south, vce(cluster leaid)


regress BA ss_neg not_ss non_south, vce(cluster leaid)
regress LessHS ss_neg not_ss non_south, vce(cluster leaid)
regress lMeInc ss_neg not_ss non_south, vce(cluster leaid)
regress Poverty ss_neg not_ss non_south, vce(cluster leaid)
regress Population ss_neg not_ss non_south, vce(cluster leaid)
regress White ss_neg not_ss non_south, vce(cluster leaid)
regress Black ss_neg not_ss non_south, vce(cluster leaid)
regress Hispanic ss_neg not_ss non_south, vce(cluster leaid)
regress Asian ss_neg not_ss non_south, vce(cluster leaid)
regress Under18 ss_neg not_ss non_south, vce(cluster leaid)
regress Over65 ss_neg not_ss non_south, vce(cluster leaid)

outreg2 using table_6reg2, excel dec(3) e(all)
*******************************************************************

********************************************************************
********************************************************************
********************************************************************
//creating template table 6

use nj_sd_fin08-14

// creating district id's other than the leaids 
sort leaid
by leaid: gen id = 1 if _n==1
replace id = sum(id)
replace id = . if missing(id)
move id leaid

//creating south and non-south dummies 

gen non_south=0
move non_south south
replace non_south=1 if south==0

//to check how many south school districts+non-south school districts
unique id 
//total districts - 548, district years - 3513

unique id if south==1
//total districts - 192, district years - 1221

unique id if non-south==1
//total districts - 356, district years - 2292

//creating dummies for all south nj districts 

foreach num in 4 8 13 15 16 18 19 20 22 25 30 31 32 35 36 44 48 49 52 53 54 55 56 61 62 67 68 69 71 72 74 75 76 82 84 88 90 91 94 96 98 100 103 106 112 113 {
gen id_s_`num' = 0
replace id_s_`num'=1 if id==`num'
}  

foreach num in 116 118 119 121 122 124 129 130 135 139 141 146 156 159 160 161 164 165 166 169 170 175 176 177 178 181 183 193 211 216 217 225 230 232 234 {
gen id_s_`num' = 0
replace id_s_`num'=1 if id==`num'
}

foreach num in 236 237 238 239 243 248 249 250 256 257 260 261 262 263 264 268 270 273 274 275 278 280 281 284 286 287 290 292 300 304 312 317 318 319 323 {
gen id_s_`num' = 0
replace id_s_`num'=1 if id==`num'
}

foreach num in 324 329 339 342 343 346 351 352 353 355 359 365 375 376 377 378 382 383 385 386 388 389 391 392 394 397 401 414 415 426 430 435 436 437 439 {
gen id_s_`num' = 0
replace id_s_`num'=1 if id==`num'
}

foreach num in 442 443 449 454 455 456 462 463 467 468 469 472 473 478 481 485 487 489 491 492 495 496 505 506 512 515 517 518 527 529 531 534 535 536 538 {
gen id_s_`num' = 0
replace id_s_`num'=1 if id==`num'
}

foreach num in 539 541 542 544 545 547 {
gen id_s_`num' = 0
replace id_s_`num'=1 if id==`num'
}

//generating variables in the format to be used


//total state aid per pupil = revenue from state resources (not by 1000)/total enrolment
//non-white = 1- hispanic white 
//median income to be used 

generate stateaid_pp=(tot_state_rev*1000)/tot_enroll
generate non_white=(100-per_white)
//MedianIncome


//regression outreg for base variables and south district dummmies 

regress stateaid_pp tot_enroll ///
id_s_4 id_s_8 id_s_13 id_s_15 id_s_16 id_s_18 id_s_19 ///
id_s_20 id_s_22 id_s_25 id_s_30 id_s_31 id_s_32 id_s_35 id_s_36 id_s_44 id_s_48 id_s_49 id_s_52 id_s_53 id_s_54 ///
id_s_55 id_s_56 id_s_61 id_s_62 id_s_67 id_s_68 id_s_69 id_s_71 id_s_72 id_s_74 id_s_75 id_s_76 id_s_82 id_s_84 ///
id_s_88 id_s_90 id_s_91 id_s_94 id_s_96 id_s_98 id_s_100 id_s_103 id_s_106 id_s_112 id_s_113 id_s_116 id_s_118 ///
id_s_119 id_s_121 id_s_122 id_s_124 id_s_129 id_s_130 id_s_135 id_s_139 id_s_141 id_s_146 id_s_156 id_s_159 /// 
id_s_160 id_s_161 id_s_164 id_s_165 id_s_166 id_s_169 id_s_170 id_s_175 id_s_176 id_s_177 id_s_178 id_s_181 ///
id_s_183 id_s_193 id_s_211 id_s_216 id_s_217 id_s_225 id_s_230 id_s_232 id_s_234 id_s_236 id_s_237 id_s_238 ///
id_s_239 id_s_243 id_s_248 id_s_249 id_s_250 id_s_256 id_s_257 id_s_260 id_s_261 id_s_262 id_s_263 id_s_264 ///
id_s_268 id_s_270 id_s_273 id_s_274 id_s_275 id_s_278 id_s_280 id_s_281 id_s_284 id_s_286 id_s_287 id_s_290 ///
id_s_292 id_s_300 id_s_304 id_s_312 id_s_317 id_s_318 id_s_319 id_s_323 id_s_324 id_s_329 id_s_339 id_s_342 ///
id_s_343 id_s_346 id_s_351 id_s_352 id_s_353 id_s_355 id_s_359 id_s_365 id_s_375 id_s_376 id_s_377 id_s_378 ///
id_s_382 id_s_383 id_s_385 id_s_386 id_s_388 id_s_389 id_s_391 id_s_392 id_s_394 id_s_397 id_s_401 id_s_414 ///
id_s_415 id_s_426 id_s_430 id_s_435 id_s_436 id_s_437 id_s_439 id_s_442 id_s_443 id_s_449 id_s_454 id_s_455 ///
id_s_456 id_s_462 id_s_463 id_s_467 id_s_468 id_s_469 id_s_472 id_s_473 id_s_478 id_s_481 id_s_485 id_s_487 ///
id_s_489 id_s_491 id_s_492 id_s_495 id_s_496 id_s_505 id_s_506 id_s_512 id_s_515 id_s_517 id_s_518 id_s_527 ///
id_s_529 id_s_531 id_s_534 id_s_535 id_s_536 id_s_538 id_s_539 id_s_541 id_s_542 id_s_544 id_s_545 id_s_547

outreg2 using template_table, excel dec(3) e(all)

///Create Groups of Muni's (South-Positive, South-Negative+south-not significant)

** Statistically Significant and Positive 
gen ss_pos = 0
foreach num in 8 18 19 32 35 36 49 53 54 55 61 67 74 75 76 82 84 88 90 91 96 100 103 112 116 118 121 122 124 129 135 139 141 146 156 159 160 161 164 166 169 181 211 232 234 236 238 239 248 250 256 261 263 264 268 284 290 300 317 318 323 324 329 339 343 351 353 355 359 365 375 376 377 378 382 383 385 386 388 389 394 397 401 414 426 430 442 443 455 468 469 473 481 485 487 489 491 495 505 512 517 529 531 534 536 538 539 541 542 544 545 {
replace ss_pos = 1 if id_s_`num'==1
} 

** Statistically Significant and Negative + non-significant
gen ss_neg_insig = 0
foreach num in 4 13 15 16 20 22 25 30 31 44 48 52 56 62 68 69 71 72 94 98 106 113 119 130 165 170 175 176 177 178 183 193 216 217 225 230 237 243 249 257 260 262 270 273 274 275 278 280 281 286 287 292 304 312 319 342 346 352 391 392 415 435 436 437 439 449 454 456 462 463 467 472 478 492 496 506 515 518 527 535 547 {
replace ss_neg_insig = 1 if id_s_`num'==1
}

//testing for school district numbers 
unique id if ss_neg_insig==1

unique id if ss_pos==1

unique id if south==1

unique id if non_south==1
//perfect!!


**Panel - summary statistics 

*Statistically Significant and positive - column 1
sum stateaid_pp non_white per_frl per_iep per_lep BA LessHS MedianIncome Poverty if ss_pos==1

*Statistically Significant and negative+insignificant - column 2
sum stateaid_pp non_white per_frl per_iep per_lep BA LessHS MedianIncome Poverty if ss_neg_insig==1

*Statistically non-south - column 3
sum stateaid_pp non_white per_frl per_iep per_lep BA LessHS MedianIncome Poverty if non_south==1

****Testing Statistical Significance

regress stateaid_pp ss_neg_insig non_south, vce(cluster leaid)
regress non_white ss_neg_insig non_south, vce(cluster leaid)
regress per_frl ss_neg_insig non_south, vce(cluster leaid)
regress per_iep ss_neg_insig non_south, vce(cluster leaid)
regress per_lep ss_neg_insig non_south, vce(cluster leaid)
regress BA ss_neg_insig non_south, vce(cluster leaid)
regress LessHS ss_neg_insig non_south, vce(cluster leaid)
regress MedianIncome ss_neg_insig non_south, vce(cluster leaid)
regress Poverty ss_neg_insig non_south, vce(cluster leaid)

outreg2 using temptable_reg, excel dec(3) e(all)

*******************************************************************************

********************************************************************
********************************************************************
********************************************************************
//creating data set for gis merger 

use nj_sd_fin02-14


keep leaid year agency_name tot_state_rev tot_enroll

generate stateaid_pp=(tot_state_rev*1000)/tot_enroll

collapse (mean) stateaid_pp, by(agency_name)


// copied it in a ms excel file 

clear
//completed
**********************
use nj_sd_fin02-14

keep leaid year agency_name

count if year==2002
//highest number of school districts in 2002 - 551 is the highest basically
//using 551 - extra I can throw out during merging attempt 

keep if year==2002

count if year==2014


//create a copy of leaid, make it string and keep the last 5 digits from the right

clonevar UNSDLEA=leaid
tostring UNSDLEA, replace

generate new_var=substr(UNSDLEA,-5,5)

drop UNSDLEA

rename new_var UNSDLEA

sort agency_name

drop leaid year
sort agency_name

save gis_unsdleafile

clear

import excel "C:\Users\Shourjya Deb\Desktop\maps for sch dist work\state aid per student.xlsx", sheet("Sheet1")

rename A agency_name
rename B stateaid_pp

save gis_stateaidfile 
clear 

//merger of the two data files

use gis_unsdleafile
merge m:m agency_name using gis_stateaidfile  
drop _merge

sort agency_name
save gis_finalset


clear 


//all gis data map merging

//brings in file with the fid marker
import excel "C:\Users\Shourjya Deb\Dropbox\school\data\maps for sch dist work\new_trial.xls", sheet("Sheet1") firstrow
save fidfile
clear


//basically uses the agency_name as a marker 
//keeps the variables needed to merge 
//
use nj_sd_fin08-14

generate non_white=(100-per_white)

keep agency_name leaid non_white per_frl per_iep per_lep BA LessHS MedianIncome Poverty

collapse (mean) non_white per_frl per_iep per_lep BA LessHS MedianIncome Poverty, by(agency_name)

save gismergerfile
clear

use fidfile
merge m:m agency_name using gismergerfile
drop _merge
save gis_finaldataset
clear



 //calculating quintilkes using the 08-14 data
 use nj_sd_fin08-14
 generate non_white=(100-per_white)
keep agency_name leaid non_white per_frl per_iep per_lep BA LessHS MedianIncome Poverty

collapse (mean) non_white per_frl per_iep per_lep BA LessHS MedianIncome Poverty, by(agency_name)

sort non_white

sort per_frl

sort per_iep

sort per_lep

sort BA

sort LessHS

sort MedianIncome

sort Poverty

clear

********************************************************************
********************************************************************
********************************************************************
//creating table for 7th december meeting - name it - aid distribution

//south analysis
use nj_sd_fin08-14

keep if south==1

generate ltot_state_rev=log(tot_state_rev)
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)

sum ltot_state_rev

//mean=8.903186  

generate more_dummy=0
generate less_dummy=0

replace more_dummy=1 if ltot_state_rev>8.903186 
replace less_dummy=1 if ltot_state_rev<8.903186 

regress ltot_state_rev more_dummy i.year,vce(cluster leaid)

regress ltot_state_rev more_dummy tot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)

regress ltot_state_rev less_dummy i.year,vce(cluster leaid)

regress ltot_state_rev less_dummy tot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)

outreg2 using distribution-characteristics, excel dec(3) e(all)

clear 

//central analysis
use nj_sd_fin08-14

keep if central==1

generate ltot_state_rev=log(tot_state_rev)
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)

sum ltot_state_rev

//mean=8.707284 

generate more_dummy=0
generate less_dummy=0

replace more_dummy=1 if ltot_state_rev>8.707284 
replace less_dummy=1 if ltot_state_rev<8.707284 

regress ltot_state_rev more_dummy i.year,vce(cluster leaid)

regress ltot_state_rev more_dummy tot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)

regress ltot_state_rev less_dummy i.year,vce(cluster leaid)

regress ltot_state_rev less_dummy tot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)

outreg2 using distribution-characteristics, excel dec(3) e(all)

clear 

//north analysis
use nj_sd_fin08-14

keep if north==1

generate ltot_state_rev=log(tot_state_rev)
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)

sum ltot_state_rev

//mean=8.692226  

generate more_dummy=0
generate less_dummy=0

replace more_dummy=1 if ltot_state_rev>8.692226 
replace less_dummy=1 if ltot_state_rev<8.692226

regress ltot_state_rev more_dummy i.year,vce(cluster leaid)

regress ltot_state_rev more_dummy tot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)

regress ltot_state_rev less_dummy i.year,vce(cluster leaid)

regress ltot_state_rev less_dummy tot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)

outreg2 using distribution-characteristics, excel dec(3) e(all)

clear 

********************************************************************
********************************************************************
********************************************************************
//creating table for 22nd december meeting - name it - distribution something
//analysis for only south

use nj_sd_fin08-14

keep if south==1

generate ltot_state_rev=log(tot_state_rev)
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)

//creating counties via fips codes
generate Atlantic=0 
replace Atlantic=1 if fipsco==1

generate Burlington=0 
replace Burlington=1 if fipsco==5

generate Camden=0 
replace Camden=1 if fipsco==7

generate Cape_May=0 
replace Cape_May=1 if fipsco==9

generate Cumberland=0 
replace Cumberland=1 if fipsco==11

generate Gloucester=0 
replace Gloucester=1 if fipsco==15

generate Ocean=0 
replace Ocean=1 if fipsco==29

generate Salem=0 
replace Salem=1 if fipsco==33

sum ltot_state_rev

//mean=8.903186  

generate more_dummy=0
generate less_dummy=0

replace more_dummy=1 if ltot_state_rev>8.903186 
replace less_dummy=1 if ltot_state_rev<8.903186 

//regressions to check of total enrolment was driving increase
regress ltot_state_rev more_dummy i.year,vce(cluster leaid)

regress ltot_state_rev more_dummy ltot_enroll i.year,vce(cluster leaid)

regress ltot_state_rev more_dummy ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep i.year,vce(cluster leaid)

regress ltot_state_rev more_dummy ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)

regress ltot_state_rev more_dummy ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 Atlantic Burlington Camden Cape_May Cumberland Gloucester Ocean Salem i.year,vce(cluster leaid)

outreg2 using regression_25, excel dec(3) e(all)

//regressions with quintiles 


sort ltot_state_rev

move ltot_state_rev leaid

generate q1=0
generate q2=0
generate q3=0
generate q4=0
generate q5=0

replace q1=1 if ltot_state_rev<7.869784
replace q2=1 if ltot_state_rev>7.869784 & ltot_state_rev<8.717786
replace q3=1 if ltot_state_rev>8.717786 & ltot_state_rev<9.291034
replace q4=1 if ltot_state_rev>9.291034 & ltot_state_rev<9.924618
replace q5=1 if ltot_state_rev>9.924618

//regressions with 5th quintile as omitted group 
regress ltot_state_rev q1 q2 q3 q4 i.year,vce(cluster leaid)  

regress ltot_state_rev ltot_enroll q1 q2 q3 q4 i.year,vce(cluster leaid)

regress ltot_state_rev ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep q1 q2 q3 q4 i.year,vce(cluster leaid)

regress ltot_state_rev ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 q1 q2 q3 q4 i.year,vce(cluster leaid)

regress ltot_state_rev ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 q1 q2 q3 q4 Atlantic Burlington Camden Cape_May Cumberland Gloucester Ocean Salem i.year,vce(cluster leaid)

outreg2 using regression_25, excel dec(3) e(all)

//regressions with the 5th quintile 

regress ltot_state_rev q5 i.year,vce(cluster leaid)  

regress ltot_state_rev ltot_enroll q5 i.year,vce(cluster leaid)

regress ltot_state_rev ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep q5 i.year,vce(cluster leaid)

regress ltot_state_rev ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 q5 i.year,vce(cluster leaid)

regress ltot_state_rev ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 q5 Atlantic Burlington Camden Cape_May Cumberland Gloucester Ocean Salem i.year,vce(cluster leaid)

outreg2 using regression_25, excel dec(3) e(all)

//regressions with ommitted 3rd quintile  
regress ltot_state_rev q1 q2 q4 q5 i.year,vce(cluster leaid)  

regress ltot_state_rev ltot_enroll q1 q2 q4 q5 i.year,vce(cluster leaid)

regress ltot_state_rev ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep q1 q2 q4 q5 i.year,vce(cluster leaid)

regress ltot_state_rev ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 q1 q2 q4 q5 i.year,vce(cluster leaid)

regress ltot_state_rev ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 q1 q2 q4 q5 Atlantic Burlington Camden Cape_May Cumberland Gloucester Ocean Salem i.year,vce(cluster leaid)

outreg2 using regression_25, excel dec(3) e(all)

//Abbot districts 

generate abbott=0
replace abbott=1 if name=="BRIDGETON PUBLIC SCHOOLS" | name=="BURLINGTON CITY SCHOOL DISTRICT"
replace abbott=1 if name=="CAMDEN CITY PUBLIC SCHOOLS" | name=="GLOUCESTER CITY PUBLIC SCHOOLS" | name=="HARRISON TOWNSHIP"
replace abbott=1 if name=="MILLVILLE" | name=="PEMBERTON TOWNSHIP" | name=="PLEASANTVILLE" | name=="SALEM CITY" | name=="VINELAND CITY"

regress ltot_state_rev more_dummy abbott i.year,vce(cluster leaid)

regress ltot_state_rev more_dummy ltot_enroll abbott i.year,vce(cluster leaid)

regress ltot_state_rev more_dummy ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep abbott i.year,vce(cluster leaid)

regress ltot_state_rev more_dummy ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 abbott i.year,vce(cluster leaid)

regress ltot_state_rev more_dummy ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 abbott Atlantic Burlington Camden Cape_May Cumberland Gloucester Ocean Salem i.year,vce(cluster leaid)

outreg2 using regression_25, excel dec(3) e(all)

clear


********************************************************************
********************************************************************
********************************************************************
//trying to look at look at property values 
//t06 is local revenue from property taxes

use nj_sd_fin08-14

//t06 is the local revenue from property taxes 
generate lprop_tx=log(t06)
generate ltot_state_rev=log(tot_state_rev)
generate lMeInc=log(MedianIncome)
generate ltot_enroll=log(tot_enroll)
generate s_p_int=south*lprop_tx
generate s_en_int=south*ltot_enroll
generate s_pw_int=south*per_white
generate s_bl_int=south*per_black
generate s_hi_int=south*per_hisp
generate s_fr_int=south*per_frl
generate s_ie_int=south*per_iep
generate s_le_int=south*per_lep

generate s_b_int=south*BA
generate s_lh_int=south*LessHS
generate s_mc_int=south*lMeInc
generate s_po_int=south*Poverty
generate s_pp_int=south*Population
generate s_w_int=south*White
generate s_bc_int=south*Black
generate s_hp_int=south*Hispanic
generate s_as_int=south*Asian
generate s_ov_int=south*Over65
generate s_un_int=south*Under18

//four regressions for log value of property taxes
regress ltot_state_rev lprop_tx i.year,vce(cluster leaid)

regress ltot_state_rev lprop_tx ltot_enroll i.year,vce(cluster leaid)

regress ltot_state_rev lprop_tx tot_enroll per_white per_black per_hisp per_frl per_iep per_lep i.year,vce(cluster leaid)

regress ltot_state_rev lprop_tx tot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)

//repeat with adding a south*property tax interaction term
regress ltot_state_rev lprop_tx s_p_int i.year,vce(cluster leaid)

regress ltot_state_rev lprop_tx s_p_int ltot_enroll i.year,vce(cluster leaid)

regress ltot_state_rev lprop_tx s_p_int tot_enroll per_white per_black per_hisp per_frl per_iep per_lep i.year,vce(cluster leaid)

regress ltot_state_rev lprop_tx s_p_int tot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)


//repreat adding south interaction to everything 
regress ltot_state_rev lprop_tx ltot_enroll s_p_int s_en_int i.year,vce(cluster leaid)

regress ltot_state_rev lprop_tx tot_enroll per_white per_black per_hisp per_frl per_iep per_lep s_p_int s_en_int s_pw_int s_bl_int s_hi_int s_fr_int s_ie_int s_le_int i.year,vce(cluster leaid)

regress ltot_state_rev lprop_tx tot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 s_p_int s_en_int s_pw_int s_bl_int s_hi_int s_fr_int s_ie_int s_le_int s_b_int s_lh_int s_mc_int s_po_int s_pp_int s_w_int s_bc_int s_hp_int s_as_int s_ov_int s_un_int i.year,vce(cluster leaid)

outreg2 using property_tax, excel dec(3) e(all)

clear

********************************************************************
********************************************************************
********************************************************************
//table 2 + 3


use nj_sd_fin02-14
generate ltot_state_rev=log(tot_state_rev)
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)

regress ltot_state_rev south i.year,vce(cluster leaid)
regress ltot_state_rev south ltot_enroll i.year,vce(cluster leaid)
regress ltot_state_rev south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep i.year,vce(cluster leaid)

clear

use nj_sd_fin08-14
generate ltot_state_rev=log(tot_state_rev)
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)

regress ltot_state_rev south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep i.year,vce(cluster leaid)
regress ltot_state_rev south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)

clear

//table 3
use nj_sd_fin08-14
generate ltot_state_rev=log(tot_state_rev)
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)
generate lformula_aid=log(formal_aid)
generate lotstrev=log(other_state_rev)

regress ltot_state_rev south ltot_enroll per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)

regress lformula_aid south per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)

regress lotstrev south per_white per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Population White Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)

clear


********************************************************************
********************************************************************
********************************************************************
//table housing values 

cap program drop ado1
program define ado1

rename A geoid  
rename B leaid
rename C school_district
rename D m_propval
rename E m_error

drop if leaid=="GEO.id2" | leaid=="Id2"

destring leaid, replace

drop if leaid==3499999 | leaid==3499998

replace m_propval="1000001" if m_propval=="1,000,000+"

destring m_propval, replace ignore("-")

destring m_error, replace ignore("**" "***")

end

import excel "C:\Users\sd901\Dropbox\school\data\data_creation\hvalues2008.xlsx", sheet("Sheet1")
ado1
generate year=2008
save hv_2008
clear

import excel "C:\Users\sd901\Dropbox\school\data\data_creation\hvalues2009.xlsx", sheet("Sheet1")
ado1
generate year=2009
save hv_2009 
clear

import excel "C:\Users\sd901\Dropbox\school\data\data_creation\hvalues2010.xlsx", sheet("Sheet1")
ado1
generate year=2010
save hv_2010 
clear

import excel "C:\Users\sd901\Dropbox\school\data\data_creation\hvalues2011.xlsx", sheet("Sheet1")
ado1
generate year=2011
save hv_2011 
clear

import excel "C:\Users\sd901\Dropbox\school\data\data_creation\hvalues2012.xlsx", sheet("Sheet1")
ado1
generate year=2012
save hv_2012 
clear

import excel "C:\Users\sd901\Dropbox\school\data\data_creation\hvalues2013.xlsx", sheet("Sheet1")
ado1
generate year=2013
save hv_2013
clear

import excel "C:\Users\sd901\Dropbox\school\data\data_creation\hvalues2014.xlsx", sheet("Sheet1")
ado1
generate year=2014
replace m_propval="2000001" if m_propval=="2,000,000+"
destring m_propval, replace ignore("-")
save hv_2014
clear



use hv_2008
append using hv_2009
append using hv_2010
append using hv_2011
append using hv_2012
append using hv_2013
append using hv_2014

save prop_cons
clear

use nj_sd_fin08-14
merge 1:1 year leaid using prop_cons 
save, replace
clear

use nj_sd_fin08-14
generate adjustment=0
replace adjustment=1 if m_propval==1000001 | m_propval==2000001
save, replace
clear


use nj_sd_fin08-14
drop m_propval
drop _merge
save, replace
clear

use nj_sd_fin08-14
merge 1:1 leaid year using prop_cons 
drop _merge
save, replace 



********************************************************************
********************************************************************
********************************************************************
//block regressions

use nj_sd_fin08-14

generate ltot_state_rev=log(tot_state_rev)
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)
generate per_others=100-(per_white+per_black+per_hisp)
generate lprop_val=log(m_propval)

generate abbott=0
replace abbott=1 if name=="BRIDGETON PUBLIC SCHOOLS" | name=="BURLINGTON CITY SCHOOL DISTRICT"
replace abbott=1 if name=="CAMDEN CITY PUBLIC SCHOOLS" | name=="GLOUCESTER CITY PUBLIC SCHOOLS" | name=="HARRISON TOWNSHIP"
replace abbott=1 if name=="MILLVILLE" | name=="PEMBERTON TOWNSHIP" | name=="PLEASANTVILLE" | name=="SALEM CITY" | name=="VINELAND CITY"

generate Others_cr=100-(White+Black+Hispanic+Asian)

//race regressions

regress ltot_state_rev per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using race_reg, excel dec(3) e(all)

regress ltot_state_rev per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using race_reg, excel dec(3) e(all)

regress ltot_state_rev per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using race_reg, excel dec(3) e(all)

regress ltot_state_rev per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using race_reg, excel dec(3) e(all)

regress ltot_state_rev per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using race_reg, excel dec(3) e(all)

regress ltot_state_rev per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using race_reg, excel dec(3) e(all)

regress ltot_state_rev per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using race_reg, excel dec(3) e(all)

regress ltot_state_rev per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using race_reg, excel dec(3) e(all)

regress ltot_state_rev per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using race_reg, excel dec(3) e(all)

regress ltot_state_rev per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using race_reg, excel dec(3) e(all)

regress ltot_state_rev per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using race_reg, excel dec(3) e(all)

regress ltot_state_rev per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using race_reg, excel dec(3) e(all)

outreg2 using race_reg, excel dec(3) e(all)

outreg2 using racex_reg, excel dec(3) e(all)

clear

//enrolment regressions 
regress ltot_state_rev ltot_enroll i.year,vce(cluster leaid)
outreg2 using en_reg, excel dec(3) e(all)

regress ltot_state_rev ltot_enroll per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using en_reg, excel dec(3) e(all)

regress ltot_state_rev ltot_enroll per_others per_black per_hisp per_frl i.year,vce(cluster leaid)
outreg2 using en_reg, excel dec(3) e(all)

regress ltot_state_rev ltot_enroll per_others per_black per_hisp per_frl per_iep i.year,vce(cluster leaid)
outreg2 using en_reg, excel dec(3) e(all)

regress ltot_state_rev ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using en_reg, excel dec(3) e(all)

regress ltot_state_rev ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using en_reg, excel dec(3) e(all)

regress ltot_state_rev ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using en_reg, excel dec(3) e(all)

regress ltot_state_rev ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using en_reg, excel dec(3) e(all)

regress ltot_state_rev ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using en_reg, excel dec(3) e(all)

regress ltot_state_rev ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using en_reg, excel dec(3) e(all)

regress ltot_state_rev ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val  i.year,vce(cluster leaid)
outreg2 using en_reg, excel dec(3) e(all)

regress ltot_state_rev ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using en_reg, excel dec(3) e(all)


outreg2 using en_reg, excel dec(3) e(all)

outreg2 using enex_reg, excel dec(3) e(all)



//frl regressions 
regress ltot_state_rev per_frl i.year,vce(cluster leaid)
outreg2 using frl_reg, excel dec(3) e(all)

regress ltot_state_rev per_frl per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using frl_reg, excel dec(3) e(all)

regress ltot_state_rev per_frl per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using frl_reg, excel dec(3) e(all)

regress ltot_state_rev per_frl per_others per_black per_hisp ltot_enroll per_iep i.year,vce(cluster leaid)
outreg2 using frl_reg, excel dec(3) e(all)

regress ltot_state_rev per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep i.year,vce(cluster leaid)
outreg2 using frl_reg, excel dec(3) e(all)

regress ltot_state_rev per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using frl_reg, excel dec(3) e(all)

regress ltot_state_rev per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using frl_reg, excel dec(3) e(all)

regress ltot_state_rev per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using frl_reg, excel dec(3) e(all)

regress ltot_state_rev per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using frl_reg, excel dec(3) e(all)

regress ltot_state_rev per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using frl_reg, excel dec(3) e(all)

regress ltot_state_rev per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using frl_reg, excel dec(3) e(all)

regress ltot_state_rev per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using frl_reg, excel dec(3) e(all)



//iep
regress ltot_state_rev per_iep i.year,vce(cluster leaid)
outreg2 using iepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_iep per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using iepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_iep per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using iepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_iep per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using iepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep i.year,vce(cluster leaid)
outreg2 using iepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using iepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using iepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using iepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using iepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using iepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val  i.year,vce(cluster leaid)
outreg2 using iepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS lMeInc Poverty Others_cr  Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using iepex_reg, excel dec(3) e(all)


outreg2 using iep_reg, excel dec(3) e(all)

outreg2 using iepex_reg, excel dec(3) e(all)

//lep

regress ltot_state_rev per_lep i.year,vce(cluster leaid)
outreg2 using lepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_lep per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using lepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_lep per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using lepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_lep per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using lepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using lepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS i.year,vce(cluster leaid)
outreg2 using lepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using lepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using lepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using lepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using lepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using lepex_reg, excel dec(3) e(all)

regress ltot_state_rev per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using lepex_reg, excel dec(3) e(all)

//education 

regress ltot_state_rev BA LessHS  i.year,vce(cluster leaid)
outreg2 using eduex_reg, excel dec(3) e(all)

regress ltot_state_rev BA LessHS per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using eduex_reg, excel dec(3) e(all)

regress ltot_state_rev BA LessHS per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using eduex_reg, excel dec(3) e(all)

regress ltot_state_rev BA LessHS per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using eduex_reg, excel dec(3) e(all)

regress ltot_state_rev BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using eduex_reg, excel dec(3) e(all)

regress ltot_state_rev BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using eduex_reg, excel dec(3) e(all)

regress ltot_state_rev BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep lMeInc i.year,vce(cluster leaid)
outreg2 using eduex_reg, excel dec(3) e(all)

regress ltot_state_rev BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using eduex_reg, excel dec(3) e(all)

regress ltot_state_rev BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using eduex_reg, excel dec(3) e(all)

regress ltot_state_rev BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using eduex_reg, excel dec(3) e(all)

regress ltot_state_rev BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using eduex_reg, excel dec(3) e(all)

regress ltot_state_rev BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using eduex_reg, excel dec(3) e(all)


outreg2 using edu_reg, excel dec(3) e(all)

outreg2 using eduex_reg, excel dec(3) e(all)

//income


regress ltot_state_rev lMeInc i.year,vce(cluster leaid)
outreg2 using incex_reg, excel dec(3) e(all)

regress ltot_state_rev lMeInc per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using incex_reg, excel dec(3) e(all)

regress ltot_state_rev lMeInc per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using incex_reg, excel dec(3) e(all)

regress ltot_state_rev lMeInc per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using incex_reg, excel dec(3) e(all)

regress ltot_state_rev lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using incex_reg, excel dec(3) e(all)

regress ltot_state_rev lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using incex_reg, excel dec(3) e(all)

regress ltot_state_rev lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using incex_reg, excel dec(3) e(all)

regress ltot_state_rev lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS Poverty i.year,vce(cluster leaid)
outreg2 using incex_reg, excel dec(3) e(all)

regress ltot_state_rev lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using incex_reg, excel dec(3) e(all)

regress ltot_state_rev lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using incex_reg, excel dec(3) e(all)

regress ltot_state_rev lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using incex_reg, excel dec(3) e(all)

regress ltot_state_rev lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using incex_reg, excel dec(3) e(all)

outreg2 using inc_reg, excel dec(3) e(all)

outreg2 using incex_reg, excel dec(3) e(all)


//poverty 


regress ltot_state_rev Poverty i.year,vce(cluster leaid)
outreg2 using povex_reg, excel dec(3) e(all)

regress ltot_state_rev Poverty per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using povex_reg, excel dec(3) e(all)

regress ltot_state_rev Poverty per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using povex_reg, excel dec(3) e(all)

regress ltot_state_rev Poverty per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using povex_reg, excel dec(3) e(all)

regress ltot_state_rev Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using povex_reg, excel dec(3) e(all)

regress ltot_state_rev Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using povex_reg, excel dec(3) e(all)

regress ltot_state_rev Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using povex_reg, excel dec(3) e(all)

regress ltot_state_rev Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using povex_reg, excel dec(3) e(all)

regress ltot_state_rev Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using povex_reg, excel dec(3) e(all)

regress ltot_state_rev Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using povex_reg, excel dec(3) e(all)

regress ltot_state_rev Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Others_cr Black Hispanic Asian Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using povex_reg, excel dec(3) e(all)

regress ltot_state_rev Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using povex_reg, excel dec(3) e(all)


outreg2 using pov_reg, excel dec(3) e(all)

outreg2 using povex_reg, excel dec(3) e(all)

//race-community

regress ltot_state_rev White Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using comrex_reg, excel dec(3) e(all)

regress ltot_state_rev White Black Hispanic Asian per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using comrex_reg, excel dec(3) e(all)

regress ltot_state_rev Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using comrex_reg, excel dec(3) e(all)

regress ltot_state_rev Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using comrex_reg, excel dec(3) e(all)

regress ltot_state_rev Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using comrex_reg, excel dec(3) e(all)

regress ltot_state_rev Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using comrex_reg, excel dec(3) e(all)

regress ltot_state_rev Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using comrex_reg, excel dec(3) e(all)

regress ltot_state_rev Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using comrex_reg, excel dec(3) e(all)

regress ltot_state_rev Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using comrex_reg, excel dec(3) e(all)

regress ltot_state_rev Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Under18 Over65 i.year,vce(cluster leaid)
outreg2 using comrex_reg, excel dec(3) e(all)

regress ltot_state_rev Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using comrex_reg, excel dec(3) e(all)

regress ltot_state_rev Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using comrex_reg, excel dec(3) e(all)


outreg2 using comr_reg, excel dec(3) e(all)

outreg2 using comrex_reg, excel dec(3) e(all)


//demography-community


regress ltot_state_rev Under18 Over65 i.year,vce(cluster leaid)
outreg2 using demex_reg, excel dec(3) e(all)

regress ltot_state_rev Under18 Over65 per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using demex_reg, excel dec(3) e(all)

regress ltot_state_rev Under18 Over65 per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using demex_reg, excel dec(3) e(all)

regress ltot_state_rev Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using demex_reg, excel dec(3) e(all)

regress ltot_state_rev Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using demex_reg, excel dec(3) e(all)

regress ltot_state_rev Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using demex_reg, excel dec(3) e(all)

regress ltot_state_rev Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using demex_reg, excel dec(3) e(all)

regress ltot_state_rev Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using demex_reg, excel dec(3) e(all)

regress ltot_state_rev Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using demex_reg, excel dec(3) e(all)

regress ltot_state_rev Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using demex_reg, excel dec(3) e(all)

regress ltot_state_rev Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian lprop_val i.year,vce(cluster leaid)
outreg2 using demex_reg, excel dec(3) e(all)

regress ltot_state_rev Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian lprop_val abbott i.year,vce(cluster leaid)
outreg2 using demex_reg, excel dec(3) e(all)

outreg2 using dem_reg, excel dec(3) e(all)

outreg2 using demex_reg, excel dec(3) e(all)

//property values 


regress ltot_state_rev lprop_val i.year,vce(cluster leaid)
outreg2 using propex_reg, excel dec(3) e(all)

regress ltot_state_rev lprop_val per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using propex_reg, excel dec(3) e(all)

regress ltot_state_rev lprop_val per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using propex_reg, excel dec(3) e(all)

regress ltot_state_rev lprop_val per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using propex_reg, excel dec(3) e(all)

regress ltot_state_rev lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using propex_reg, excel dec(3) e(all)

regress ltot_state_rev lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using propex_reg, excel dec(3) e(all)

regress ltot_state_rev lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using propex_reg, excel dec(3) e(all)

regress ltot_state_rev lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using propex_reg, excel dec(3) e(all)

regress ltot_state_rev lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using propex_reg, excel dec(3) e(all)

regress ltot_state_rev lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using propex_reg, excel dec(3) e(all)

regress ltot_state_rev lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using propex_reg, excel dec(3) e(all)

regress ltot_state_rev lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 abbott i.year,vce(cluster leaid)
outreg2 using propex_reg, excel dec(3) e(all)

outreg2 using prop_reg, excel dec(3) e(all)

outreg2 using propex_reg, excel dec(3) e(all)

//Abbot districts 

regress ltot_state_rev abbott i.year,vce(cluster leaid)
outreg2 using abbott_reg, excel dec(3) e(all)

regress ltot_state_rev abbott per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using abbott_reg, excel dec(3) e(all)

regress ltot_state_rev abbott per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using abbott_reg, excel dec(3) e(all)

regress ltot_state_rev abbott per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using abbott_reg, excel dec(3) e(all)

regress ltot_state_rev abbott per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using abbott_reg, excel dec(3) e(all)

regress ltot_state_rev abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using abbott_reg, excel dec(3) e(all)

regress ltot_state_rev abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using abbott_reg, excel dec(3) e(all)

regress ltot_state_rev abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using abbott_reg, excel dec(3) e(all)

regress ltot_state_rev abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using abbott_reg, excel dec(3) e(all)

regress ltot_state_rev abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using abbott_reg, excel dec(3) e(all)

regress ltot_state_rev abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using abbott_reg, excel dec(3) e(all)

regress ltot_state_rev abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 abbott i.year,vce(cluster leaid)
outreg2 using abbott_reg, excel dec(3) e(all)

********************************************************************
********************************************************************
******************************************************************
//formal_aid

use nj_sd_fin08-14

generate lf_aid=log(formal_aid)
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)
generate per_others=100-(per_white+per_black+per_hisp)
generate lprop_val=log(m_propval)

generate abbott=0
replace abbott=1 if name=="BRIDGETON PUBLIC SCHOOLS" | name=="BURLINGTON CITY SCHOOL DISTRICT"
replace abbott=1 if name=="CAMDEN CITY PUBLIC SCHOOLS" | name=="GLOUCESTER CITY PUBLIC SCHOOLS" | name=="HARRISON TOWNSHIP"
replace abbott=1 if name=="MILLVILLE" | name=="PEMBERTON TOWNSHIP" | name=="PLEASANTVILLE" | name=="SALEM CITY" | name=="VINELAND CITY"

generate Others_cr=100-(White+Black+Hispanic+Asian)

//race regressions

regress lf_aid per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using race_freg, excel dec(3) e(all)

regress lf_aid per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using race_freg, excel dec(3) e(all)

regress lf_aid per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using race_freg, excel dec(3) e(all)

regress lf_aid per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using race_freg, excel dec(3) e(all)

regress lf_aid per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using race_freg, excel dec(3) e(all)

regress lf_aid per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using race_freg, excel dec(3) e(all)

regress lf_aid per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using race_freg, excel dec(3) e(all)

regress lf_aid per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using race_freg, excel dec(3) e(all)

regress lf_aid per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using race_freg, excel dec(3) e(all)

regress lf_aid per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using race_freg, excel dec(3) e(all)

regress lf_aid per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using race_freg, excel dec(3) e(all)

regress lf_aid per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using race_freg, excel dec(3) e(all)


//enrolment regressions 
regress lf_aid ltot_enroll i.year,vce(cluster leaid)
outreg2 using en_freg, excel dec(3) e(all)

regress lf_aid ltot_enroll per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using en_freg, excel dec(3) e(all)

regress lf_aid ltot_enroll per_others per_black per_hisp per_frl i.year,vce(cluster leaid)
outreg2 using en_freg, excel dec(3) e(all)

regress lf_aid ltot_enroll per_others per_black per_hisp per_frl per_iep i.year,vce(cluster leaid)
outreg2 using en_freg, excel dec(3) e(all)

regress lf_aid ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using en_freg, excel dec(3) e(all)

regress lf_aid ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using en_freg, excel dec(3) e(all)

regress lf_aid ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using en_freg, excel dec(3) e(all)

regress lf_aid ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using en_freg, excel dec(3) e(all)

regress lf_aid ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using en_freg, excel dec(3) e(all)

regress lf_aid ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using en_freg, excel dec(3) e(all)

regress lf_aid ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val  i.year,vce(cluster leaid)
outreg2 using en_rfeg, excel dec(3) e(all)

regress lf_aid ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using en_freg, excel dec(3) e(all)


outreg2 using en_freg, excel dec(3) e(all)

outreg2 using enex_reg, excel dec(3) e(all)



//frl regressions 
regress lf_aid per_frl i.year,vce(cluster leaid)
outreg2 using frl_freg, excel dec(3) e(all)

regress lf_aid per_frl per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using frl_freg, excel dec(3) e(all)

regress lf_aid per_frl per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using frl_freg, excel dec(3) e(all)

regress lf_aid per_frl per_others per_black per_hisp ltot_enroll per_iep i.year,vce(cluster leaid)
outreg2 using frl_freg, excel dec(3) e(all)

regress lf_aid per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep i.year,vce(cluster leaid)
outreg2 using frl_freg, excel dec(3) e(all)

regress lf_aid per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using frl_freg, excel dec(3) e(all)

regress lf_aid per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using frl_freg, excel dec(3) e(all)

regress lf_aid per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using frl_freg, excel dec(3) e(all)

regress lf_aid per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using frl_freg, excel dec(3) e(all)

regress lf_aid per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using frl_freg, excel dec(3) e(all)

regress lf_aid per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using frl_freg, excel dec(3) e(all)

regress lf_aid per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using frl_freg, excel dec(3) e(all)



//iep
regress lf_aid per_iep i.year,vce(cluster leaid)
outreg2 using iepex_freg, excel dec(3) e(all)

regress lf_aid per_iep per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using iepex_freg, excel dec(3) e(all)

regress lf_aid per_iep per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using iepex_freg, excel dec(3) e(all)

regress lf_aid per_iep per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using iepex_freg, excel dec(3) e(all)

regress lf_aid per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep i.year,vce(cluster leaid)
outreg2 using iepex_freg, excel dec(3) e(all)

regress lf_aid per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using iepex_freg, excel dec(3) e(all)

regress lf_aid per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using iepex_freg, excel dec(3) e(all)

regress lf_aid per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using iepex_freg, excel dec(3) e(all)

regress lf_aid per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using iepex_freg, excel dec(3) e(all)

regress lf_aid per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using iepex_freg, excel dec(3) e(all)

regress lf_aid per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val  i.year,vce(cluster leaid)
outreg2 using iepex_freg, excel dec(3) e(all)

regress lf_aid per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using iepex_freg, excel dec(3) e(all)


outreg2 using iep_reg, excel dec(3) e(all)

outreg2 using iepex_reg, excel dec(3) e(all)

//lep

regress lf_aid per_lep i.year,vce(cluster leaid)
outreg2 using lepex_freg, excel dec(3) e(all)

regress lf_aid per_lep per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using lepex_rfeg, excel dec(3) e(all)

regress lf_aid per_lep per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using lepex_freg, excel dec(3) e(all)

regress lf_aid per_lep per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using lepex_freg, excel dec(3) e(all)

regress lf_aid per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using lepex_freg, excel dec(3) e(all)

regress lf_aid per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS i.year,vce(cluster leaid)
outreg2 using lepex_freg, excel dec(3) e(all)

regress lf_aid per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using lepex_freg, excel dec(3) e(all)

regress lf_aid per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using lepex_freg, excel dec(3) e(all)

regress lf_aid per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using lepex_freg, excel dec(3) e(all)

regress lf_aid per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using lepex_freg, excel dec(3) e(all)

regress lf_aid per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using lepex_freg, excel dec(3) e(all)

regress lf_aid per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using lepex_freg, excel dec(3) e(all)

//education 

regress lf_aid BA LessHS  i.year,vce(cluster leaid)
outreg2 using eduex_freg, excel dec(3) e(all)

regress lf_aid BA LessHS per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using eduex_freg, excel dec(3) e(all)

regress lf_aid BA LessHS per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using eduex_rfeg, excel dec(3) e(all)

regress lf_aid BA LessHS per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using eduex_freg, excel dec(3) e(all)

regress lf_aid BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using eduex_freg, excel dec(3) e(all)

regress lf_aid BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using eduex_freg, excel dec(3) e(all)

regress lf_aid BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep lMeInc i.year,vce(cluster leaid)
outreg2 using eduex_freg, excel dec(3) e(all)

regress lf_aid BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using eduex_freg, excel dec(3) e(all)

regress lf_aid BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using eduex_freg, excel dec(3) e(all)

regress lf_aid BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using eduex_freg, excel dec(3) e(all)

regress lf_aid BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using eduex_freg, excel dec(3) e(all)

regress lf_aid BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using eduex_freg, excel dec(3) e(all)


outreg2 using edu_reg, excel dec(3) e(all)

outreg2 using eduex_reg, excel dec(3) e(all)

//income


regress lf_aid lMeInc i.year,vce(cluster leaid)
outreg2 using incex_freg, excel dec(3) e(all)

regress lf_aid lMeInc per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using incex_freg, excel dec(3) e(all)

regress lf_aid lMeInc per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using incex_freg, excel dec(3) e(all)

regress lf_aid lMeInc per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using incex_freg, excel dec(3) e(all)

regress lf_aid lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using incex_freg, excel dec(3) e(all)

regress lf_aid lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using incex_freg, excel dec(3) e(all)

regress lf_aid lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using incex_freg, excel dec(3) e(all)

regress lf_aid lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS Poverty i.year,vce(cluster leaid)
outreg2 using incex_freg, excel dec(3) e(all)

regress lf_aid lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using incex_freg, excel dec(3) e(all)

regress lf_aid lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using incex_freg, excel dec(3) e(all)

regress lf_aid lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using incex_freg, excel dec(3) e(all)

regress lf_aid lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using incex_freg, excel dec(3) e(all)

outreg2 using inc_reg, excel dec(3) e(all)

outreg2 using incex_reg, excel dec(3) e(all)


//poverty 


regress lf_aid Poverty i.year,vce(cluster leaid)
outreg2 using povex_freg, excel dec(3) e(all)

regress lf_aid Poverty per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using povex_freg, excel dec(3) e(all)

regress lf_aid Poverty per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using povex_freg, excel dec(3) e(all)

regress lf_aid Poverty per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using povex_freg, excel dec(3) e(all)

regress lf_aid Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using povex_freg, excel dec(3) e(all)

regress lf_aid Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using povex_freg, excel dec(3) e(all)

regress lf_aid Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using povex_freg, excel dec(3) e(all)

regress lf_aid Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using povex_freg, excel dec(3) e(all)

regress lf_aid Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using povex_freg, excel dec(3) e(all)

regress lf_aid Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using povex_freg, excel dec(3) e(all)

regress lf_aid Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Others_cr Black Hispanic Asian Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using povex_freg, excel dec(3) e(all)

regress lf_aid Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using povex_freg, excel dec(3) e(all)


outreg2 using pov_reg, excel dec(3) e(all)

outreg2 using povex_reg, excel dec(3) e(all)

//race-community

regress lf_aid Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using comrex_freg, excel dec(3) e(all)

regress lf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using comrex_freg, excel dec(3) e(all)

regress lf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using comrex_freg, excel dec(3) e(all)

regress lf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using comrex_freg, excel dec(3) e(all)

regress lf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using comrex_freg, excel dec(3) e(all)

regress lf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using comrex_freg, excel dec(3) e(all)

regress lf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using comrex_freg, excel dec(3) e(all)

regress lf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using comrex_freg, excel dec(3) e(all)

regress lf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using comrex_freg, excel dec(3) e(all)

regress lf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Under18 Over65 i.year,vce(cluster leaid)
outreg2 using comrex_freg, excel dec(3) e(all)

regress lf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using comrex_freg, excel dec(3) e(all)

regress lf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using comrex_freg, excel dec(3) e(all)


outreg2 using comr_reg, excel dec(3) e(all)

outreg2 using comrex_reg, excel dec(3) e(all)


//demography-community


regress lf_aid Under18 Over65 i.year,vce(cluster leaid)
outreg2 using demex_freg, excel dec(3) e(all)

regress lf_aid Under18 Over65 per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using demex_freg, excel dec(3) e(all)

regress lf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using demex_freg, excel dec(3) e(all)

regress lf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using demex_freg, excel dec(3) e(all)

regress lf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using demex_freg, excel dec(3) e(all)

regress lf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using demex_freg, excel dec(3) e(all)

regress lf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using demex_freg, excel dec(3) e(all)

regress lf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using demex_freg, excel dec(3) e(all)

regress lf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using demex_freg, excel dec(3) e(all)

regress lf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using demex_freg, excel dec(3) e(all)

regress lf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian lprop_val i.year,vce(cluster leaid)
outreg2 using demex_freg, excel dec(3) e(all)

regress lf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian lprop_val abbott i.year,vce(cluster leaid)
outreg2 using demex_freg, excel dec(3) e(all)

outreg2 using dem_reg, excel dec(3) e(all)

outreg2 using demex_reg, excel dec(3) e(all)

//property values 


regress lf_aid lprop_val i.year,vce(cluster leaid)
outreg2 using propex_freg, excel dec(3) e(all)

regress lf_aid lprop_val per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using propex_freg, excel dec(3) e(all)

regress lf_aid lprop_val per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using propex_freg, excel dec(3) e(all)

regress lf_aid lprop_val per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using propex_freg, excel dec(3) e(all)

regress lf_aid lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using propex_freg, excel dec(3) e(all)

regress lf_aid lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using propex_freg, excel dec(3) e(all)

regress lf_aid lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using propex_freg, excel dec(3) e(all)

regress lf_aid lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using propex_freg, excel dec(3) e(all)

regress lf_aid lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using propex_freg, excel dec(3) e(all)

regress lf_aid lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using propex_freg, excel dec(3) e(all)

regress lf_aid lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using propex_freg, excel dec(3) e(all)

regress lf_aid lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 abbott i.year,vce(cluster leaid)
outreg2 using propex_freg, excel dec(3) e(all)

outreg2 using prop_reg, excel dec(3) e(all)

outreg2 using propex_reg, excel dec(3) e(all)

//Abbot districts 

regress lf_aid abbott i.year,vce(cluster leaid)
outreg2 using abbott_freg, excel dec(3) e(all)

regress lf_aid abbott per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using abbott_freg, excel dec(3) e(all)

regress lf_aid abbott per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using abbott_reg, excel dec(3) e(all)

regress lf_aid abbott per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using abbott_freg, excel dec(3) e(all)

regress lf_aid abbott per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using abbott_freg, excel dec(3) e(all)

regress lf_aid abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using abbott_freg, excel dec(3) e(all)

regress lf_aid abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using abbott_freg, excel dec(3) e(all)

regress lf_aid abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using abbott_freg, excel dec(3) e(all)

regress lf_aid abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using abbott_freg, excel dec(3) e(all)

regress lf_aid abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using abbott_freg, excel dec(3) e(all)

regress lf_aid abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using abbott_freg, excel dec(3) e(all)

regress lf_aid abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 abbott i.year,vce(cluster leaid)
outreg2 using abbott_freg, excel dec(3) e(all)

clear


********************************************************************
********************************************************************
********************************************************************
//property values
use nj_sd_fin08-14

generate ltot_state_rev=log(tot_state_rev)
generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)
generate per_others=100-(per_white+per_black+per_hisp)
generate lprop_val=log(m_propval)

regress ltot_state_rev lprop_val i.year,vce(cluster leaid)

regress ltot_state_rev lprop_val south i.year,vce(cluster leaid)

generate i_en=south*ltot_enroll
generate i_prop=south*lprop_val
generate i_ot=south*per_others
generate i_pb=south*per_black
generate i_ph=south*per_hisp
generate i_frl=south*per_frl
generate i_iep=south*per_iep
generate i_lep=south*per_lep
generate i_BA=south*BA
generate i_LessHS=south*LessHS
generate i_Inc=south*lMeInc
generate i_pov=south*Poverty
generate i_othc=south*Others_c
generate i_Black=south*Black
generate i_Hispanic=south*Hispanic
generate i_Asian=south*Asian
generate i_U18=south*Under18
generate i_O65=south*Over65

regress ltot_state_rev lprop_val south i_prop i.year,vce(cluster leaid)

regress ltot_state_rev lprop_val south ltot_enroll i_prop i_en i.year,vce(cluster leaid)

regress ltot_state_rev lprop_val south ltot_enroll per_others per_black per_hisp i_prop i_en i_othc i_pb i_ph i.year,vce(cluster leaid) 

regress ltot_state_rev lprop_val south ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep i_prop i_en i_ot i_pb i_ph i_frl i_iep i_lep i.year,vce(cluster leaid) 

regress ltot_state_rev lprop_val south ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i_prop i_en i_ot i_pb i_ph i_frl i_iep i_lep i_BA i_LessHS i_Inc i_pov i_othc i_Black i_Hispanic i_Asian i_U18 i_O65 i.year,vce(cluster leaid)

outreg2 using propi_reg, excel dec(3) e(all)

clear 


//other_state_rev

use nj_sd_fin08-14

generate ltot_enroll=log(tot_enroll)
generate lMeInc=log(MedianIncome)
generate lPop=log(Population)
generate per_others=100-(per_white+per_black+per_hisp)
generate lprop_val=log(m_propval)

generate abbott=0
replace abbott=1 if name=="BRIDGETON PUBLIC SCHOOLS" | name=="BURLINGTON CITY SCHOOL DISTRICT"
replace abbott=1 if name=="CAMDEN CITY PUBLIC SCHOOLS" | name=="GLOUCESTER CITY PUBLIC SCHOOLS" | name=="HARRISON TOWNSHIP"
replace abbott=1 if name=="MILLVILLE" | name=="PEMBERTON TOWNSHIP" | name=="PLEASANTVILLE" | name=="SALEM CITY" | name=="VINELAND CITY"

generate Others_cr=100-(White+Black+Hispanic+Asian)

generate nlf_aid=log(other_state_rev)

//race regressions

regress nlf_aid per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using race_nfreg, excel dec(3) e(all)

regress nlf_aid per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using race_nfreg, excel dec(3) e(all)

regress nlf_aid per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using race_nfreg, excel dec(3) e(all)

regress nlf_aid per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using race_nfreg, excel dec(3) e(all)

regress nlf_aid per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using race_nfreg, excel dec(3) e(all)

regress nlf_aid per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using race_nfreg, excel dec(3) e(all)

regress nlf_aid per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using race_nfreg, excel dec(3) e(all)

regress nlf_aid per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using race_nfreg, excel dec(3) e(all)

regress nlf_aid per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using race_freg, excel dec(3) e(all)

regress nlf_aid per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using race_nfreg, excel dec(3) e(all)

regress nlf_aid per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using race_nfreg, excel dec(3) e(all)

regress nlf_aid per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using race_nfreg, excel dec(3) e(all)

outreg2 using race_freg, excel dec(3) e(all)

outreg2 using racex_reg, excel dec(3) e(all)

clear

//enrolment regressions 
regress nlf_aid ltot_enroll i.year,vce(cluster leaid)
outreg2 using en_nfreg, excel dec(3) e(all)

regress nlf_aid ltot_enroll per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using en_nfreg, excel dec(3) e(all)

regress nlf_aid ltot_enroll per_others per_black per_hisp per_frl i.year,vce(cluster leaid)
outreg2 using en_nfreg, excel dec(3) e(all)

regress nlf_aid ltot_enroll per_others per_black per_hisp per_frl per_iep i.year,vce(cluster leaid)
outreg2 using en_nfreg, excel dec(3) e(all)

regress nlf_aid ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using en_nfreg, excel dec(3) e(all)

regress nlf_aid ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using en_nfreg, excel dec(3) e(all)

regress nlf_aid ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using en_nfreg, excel dec(3) e(all)

regress nlf_aid ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using en_nfreg, excel dec(3) e(all)

regress nlf_aid ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using en_nfreg, excel dec(3) e(all)

regress nlf_aid ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using en_nfreg, excel dec(3) e(all)

regress nlf_aid ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val  i.year,vce(cluster leaid)
outreg2 using en_nfreg, excel dec(3) e(all)

regress nlf_aid ltot_enroll per_others per_black per_hisp per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using en_nfreg, excel dec(3) e(all)


outreg2 using en_freg, excel dec(3) e(all)

outreg2 using enex_reg, excel dec(3) e(all)



//frl regressions 
regress nlf_aid per_frl i.year,vce(cluster leaid)
outreg2 using frl_nfreg, excel dec(3) e(all)

regress nlf_aid per_frl per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using frl_nfreg, excel dec(3) e(all)

regress nlf_aid per_frl per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using frl_nfreg, excel dec(3) e(all)

regress nlf_aid per_frl per_others per_black per_hisp ltot_enroll per_iep i.year,vce(cluster leaid)
outreg2 using frl_nfreg, excel dec(3) e(all)

regress nlf_aid per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep i.year,vce(cluster leaid)
outreg2 using frl_nfreg, excel dec(3) e(all)

regress nlf_aid per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using frl_nfreg, excel dec(3) e(all)

regress nlf_aid per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using frl_nfreg, excel dec(3) e(all)

regress nlf_aid per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using frl_nfreg, excel dec(3) e(all)

regress nlf_aid per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using frl_nfreg, excel dec(3) e(all)

regress nlf_aid per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using frl_nfreg, excel dec(3) e(all)

regress nlf_aid per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using frl_nfreg, excel dec(3) e(all)

regress nlf_aid per_frl per_others per_black per_hisp ltot_enroll per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using frl_nfreg, excel dec(3) e(all)



//iep
regress nlf_aid per_iep i.year,vce(cluster leaid)
outreg2 using iepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_iep per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using iepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_iep per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using iepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_iep per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using iepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep i.year,vce(cluster leaid)
outreg2 using iepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using iepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using iepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using iepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using iepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using iepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val  i.year,vce(cluster leaid)
outreg2 using iepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_iep per_others per_black per_hisp ltot_enroll per_frl per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using iepex_nfreg, excel dec(3) e(all)


outreg2 using iep_reg, excel dec(3) e(all)

outreg2 using iepex_reg, excel dec(3) e(all)

//lep

regress nlf_aid per_lep i.year,vce(cluster leaid)
outreg2 using lepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_lep per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using lepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_lep per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using lepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_lep per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using lepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using lepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS i.year,vce(cluster leaid)
outreg2 using lepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using lepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using lepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using lepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using lepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using lepex_nfreg, excel dec(3) e(all)

regress nlf_aid per_lep per_others per_black per_hisp ltot_enroll per_frl per_iep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using lepex_nfreg, excel dec(3) e(all)

//education 

regress nlf_aid BA LessHS  i.year,vce(cluster leaid)
outreg2 using eduex_nfreg, excel dec(3) e(all)

regress nlf_aid BA LessHS per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using eduex_nfreg, excel dec(3) e(all)

regress nlf_aid BA LessHS per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using eduex_fnreg, excel dec(3) e(all)

regress nlf_aid BA LessHS per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using eduex_nfreg, excel dec(3) e(all)

regress nlf_aid BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using eduex_nfreg, excel dec(3) e(all)

regress nlf_aid BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using eduex_nfreg, excel dec(3) e(all)

regress nlf_aid BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep lMeInc i.year,vce(cluster leaid)
outreg2 using eduex_nfreg, excel dec(3) e(all)

regress nlf_aid BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using eduex_nfreg, excel dec(3) e(all)

regress nlf_aid BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using eduex_nfreg, excel dec(3) e(all)

regress nlf_aid BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using eduex_nfreg, excel dec(3) e(all)

regress nlf_aid BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using eduex_nfreg, excel dec(3) e(all)

regress nlf_aid BA LessHS per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using eduex_nfreg, excel dec(3) e(all)


outreg2 using edu_reg, excel dec(3) e(all)

outreg2 using eduex_reg, excel dec(3) e(all)

//income


regress nlf_aid lMeInc i.year,vce(cluster leaid)
outreg2 using incex_nfreg, excel dec(3) e(all)

regress nlf_aid lMeInc per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using incex_nfreg, excel dec(3) e(all)

regress nlf_aid lMeInc per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using incex_nfreg, excel dec(3) e(all)

regress nlf_aid lMeInc per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using incex_nfreg, excel dec(3) e(all)

regress nlf_aid lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using incex_nfreg, excel dec(3) e(all)

regress nlf_aid lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using incex_nfreg, excel dec(3) e(all)

regress nlf_aid lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using incex_nfreg, excel dec(3) e(all)

regress nlf_aid lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS Poverty i.year,vce(cluster leaid)
outreg2 using incex_nfreg, excel dec(3) e(all)

regress nlf_aid lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using incex_nfreg, excel dec(3) e(all)

regress nlf_aid lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using incex_nfreg, excel dec(3) e(all)

regress nlf_aid lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using incex_nfreg, excel dec(3) e(all)

regress nlf_aid lMeInc per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS Poverty Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using incex_nfreg, excel dec(3) e(all)

outreg2 using inc_reg, excel dec(3) e(all)

outreg2 using incex_reg, excel dec(3) e(all)


//poverty 


regress nlf_aid Poverty i.year,vce(cluster leaid)
outreg2 using povex_nfreg, excel dec(3) e(all)

regress nlf_aid Poverty per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using povex_nfreg, excel dec(3) e(all)

regress nlf_aid Poverty per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using povex_nfreg, excel dec(3) e(all)

regress nlf_aid Poverty per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using povex_nfreg, excel dec(3) e(all)

regress nlf_aid Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using povex_nfreg, excel dec(3) e(all)

regress nlf_aid Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using povex_nfreg, excel dec(3) e(all)

regress nlf_aid Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using povex_nfreg, excel dec(3) e(all)

regress nlf_aid Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using povex_nfreg, excel dec(3) e(all)

regress nlf_aid Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using povex_nfreg, excel dec(3) e(all)

regress nlf_aid Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using povex_nfreg, excel dec(3) e(all)

regress nlf_aid Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Others_cr Black Hispanic Asian Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using povex_nfreg, excel dec(3) e(all)

regress nlf_aid Poverty per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Others_cr Black Hispanic Asian Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using povex_nfreg, excel dec(3) e(all)


outreg2 using pov_reg, excel dec(3) e(all)

outreg2 using povex_reg, excel dec(3) e(all)

//race-community

regress nlf_aid Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using comrex_nfreg, excel dec(3) e(all)

regress nlf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using comrex_nfreg, excel dec(3) e(all)

regress nlf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using comrex_nfreg, excel dec(3) e(all)

regress nlf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using comrex_nfreg, excel dec(3) e(all)

regress nlf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using comrex_nfreg, excel dec(3) e(all)

regress nlf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using comrex_nfreg, excel dec(3) e(all)

regress nlf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using comrex_nfreg, excel dec(3) e(all)

regress nlf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using comrex_nfreg, excel dec(3) e(all)

regress nlf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using comrex_nfreg, excel dec(3) e(all)

regress nlf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Under18 Over65 i.year,vce(cluster leaid)
outreg2 using comrex_nfreg, excel dec(3) e(all)

regress nlf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Under18 Over65 lprop_val i.year,vce(cluster leaid)
outreg2 using comrex_nfreg, excel dec(3) e(all)

regress nlf_aid Others_cr Black Hispanic Asian per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Under18 Over65 lprop_val abbott i.year,vce(cluster leaid)
outreg2 using comrex_nfreg, excel dec(3) e(all)


outreg2 using comr_reg, excel dec(3) e(all)

outreg2 using comrex_reg, excel dec(3) e(all)


//demography-community


regress nlf_aid Under18 Over65 i.year,vce(cluster leaid)
outreg2 using demex_nfreg, excel dec(3) e(all)

regress nlf_aid Under18 Over65 per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using demex_nfreg, excel dec(3) e(all)

regress nlf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using demex_nfreg, excel dec(3) e(all)

regress nlf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using demex_nfreg, excel dec(3) e(all)

regress nlf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using demex_nfreg, excel dec(3) e(all)

regress nlf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using demex_nfreg, excel dec(3) e(all)

regress nlf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using demex_nfreg, excel dec(3) e(all)

regress nlf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using demex_nfreg, excel dec(3) e(all)

regress nlf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using demex_nfreg, excel dec(3) e(all)

regress nlf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using demex_nfreg, excel dec(3) e(all)

regress nlf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian lprop_val i.year,vce(cluster leaid)
outreg2 using demex_nfreg, excel dec(3) e(all)

regress nlf_aid Under18 Over65 per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian lprop_val abbott i.year,vce(cluster leaid)
outreg2 using demex_nfreg, excel dec(3) e(all)

outreg2 using dem_reg, excel dec(3) e(all)

outreg2 using demex_reg, excel dec(3) e(all)

//property values 


regress nlf_aid lprop_val i.year,vce(cluster leaid)
outreg2 using propex_nfreg, excel dec(3) e(all)

regress nlf_aid lprop_val per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using propex_nfreg, excel dec(3) e(all)

regress nlf_aid lprop_val per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using propex_nfreg, excel dec(3) e(all)

regress nlf_aid lprop_val per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using propex_nfreg, excel dec(3) e(all)

regress nlf_aid lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using propex_nfreg, excel dec(3) e(all)

regress nlf_aid lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using propex_nfreg, excel dec(3) e(all)

regress nlf_aid lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using propex_nfreg, excel dec(3) e(all)

regress nlf_aid lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using propex_nfreg, excel dec(3) e(all)

regress nlf_aid lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using propex_nfreg, excel dec(3) e(all)

regress nlf_aid lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using propex_nfreg, excel dec(3) e(all)

regress nlf_aid lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using propex_nfreg, excel dec(3) e(all)

regress nlf_aid lprop_val per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 abbott i.year,vce(cluster leaid)
outreg2 using propex_nfreg, excel dec(3) e(all)

outreg2 using prop_reg, excel dec(3) e(all)

outreg2 using propex_reg, excel dec(3) e(all)

//Abbot districts 

regress nlf_aid abbott i.year,vce(cluster leaid)
outreg2 using abbott_nfreg, excel dec(3) e(all)

regress nlf_aid abbott per_others per_black per_hisp i.year,vce(cluster leaid)
outreg2 using abbott_nreg, excel dec(3) e(all)

regress nlf_aid abbott per_others per_black per_hisp ltot_enroll i.year,vce(cluster leaid)
outreg2 using abbott_nreg, excel dec(3) e(all)

regress nlf_aid abbott per_others per_black per_hisp ltot_enroll per_frl i.year,vce(cluster leaid)
outreg2 using abbott_nfreg, excel dec(3) e(all)

regress nlf_aid abbott per_others per_black per_hisp ltot_enroll per_frl per_iep i.year,vce(cluster leaid)
outreg2 using abbott_nfreg, excel dec(3) e(all)

regress nlf_aid abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep i.year,vce(cluster leaid)
outreg2 using abbott_nfreg, excel dec(3) e(all)

regress nlf_aid abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS i.year,vce(cluster leaid)
outreg2 using abbott_nfreg, excel dec(3) e(all)

regress nlf_aid abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc i.year,vce(cluster leaid)
outreg2 using abbott_nfreg, excel dec(3) e(all)

regress nlf_aid abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty i.year,vce(cluster leaid)
outreg2 using abbott_nfreg, excel dec(3) e(all)

regress nlf_aid abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian i.year,vce(cluster leaid)
outreg2 using abbott_nfreg, excel dec(3) e(all)

regress nlf_aid abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 i.year,vce(cluster leaid)
outreg2 using abbott_nfreg, excel dec(3) e(all)

regress nlf_aid abbott per_others per_black per_hisp ltot_enroll per_frl per_iep per_lep BA LessHS lMeInc Poverty Others_cr Black Hispanic Asian Under18 Over65 abbott i.year,vce(cluster leaid)
outreg2 using abbott_nfreg, excel dec(3) e(all)


//coorelation 
pwcorr per_frl per_iep
pwcorr tot_enroll per_iep
pwcorr ltot_enroll per_iep


graph twoway (scatter per_frl per_iep)

graph twoway (scatter tot_enroll per_iep)


********************************************************************
********************************************************************
********************************************************************
//index regressions 

use nj_sd_fin08-14

//factor has to be created witg median income, poverty ba lesshs


generate ltot_enroll=log(tot_enroll)

generate per_others=100-(per_white+per_black+per_hisp)
generate lprop_val=log(m_propval)
generate lMeInc=log(MedianIncome)
generate lf_aid=log(formal_aid)
generate nlf_aid=log(other_state_rev)
generate ltot_state_rev=log(tot_state_rev)
generate lPop=log(Population)
generate Others_cr=100-(White+Black+Hispanic+Asian)

generate abbott=0
replace abbott=1 if name=="BRIDGETON PUBLIC SCHOOLS" | name=="BURLINGTON CITY SCHOOL DISTRICT"
replace abbott=1 if name=="CAMDEN CITY PUBLIC SCHOOLS" | name=="GLOUCESTER CITY PUBLIC SCHOOLS" | name=="HARRISON TOWNSHIP"
replace abbott=1 if name=="MILLVILLE" | name=="PEMBERTON TOWNSHIP" | name=="PLEASANTVILLE" | name=="SALEM CITY" | name=="VINELAND CITY"




factor MedianIncome Poverty BA LessHS
predict se_index

//total state revenue 

regress ltot_state_rev per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll

regress ltot_state_rev per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65

regress ltot_state_rev per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65 se_index

outreg2 using total_si, excel dec(3) e(all)


// lf_aid - formal aid 

regress lf_aid per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll

regress lf_aid per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65

regress lf_aid per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65 se_index

outreg2 using formal_si, excel dec(3) e(all)


// nlf_aid - non formal aid 

regress nlf_aid per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll

regress nlf_aid per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65

regress nlf_aid per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65 se_index

outreg2 using nformal_si, excel dec(3) e(all)


//name of files total_social index
//formal_socialindex
//nonformal_socialindex


********************************************************************
********************************************************************
********************************************************************
// south vs. non south 
use nj_sd_fin08-14

generate ltot_enroll=log(tot_enroll)

generate per_others=100-(per_white+per_black+per_hisp)
generate lprop_val=log(m_propval)
generate lMeInc=log(MedianIncome)
generate lf_aid=log(formal_aid)
generate nlf_aid=log(other_state_rev)
generate ltot_state_rev=log(tot_state_rev)
generate lPop=log(Population)
generate Others_cr=100-(White+Black+Hispanic+Asian)

generate abbott=0
replace abbott=1 if name=="BRIDGETON PUBLIC SCHOOLS" | name=="BURLINGTON CITY SCHOOL DISTRICT"
replace abbott=1 if name=="CAMDEN CITY PUBLIC SCHOOLS" | name=="GLOUCESTER CITY PUBLIC SCHOOLS" | name=="HARRISON TOWNSHIP"
replace abbott=1 if name=="MILLVILLE" | name=="PEMBERTON TOWNSHIP" | name=="PLEASANTVILLE" | name=="SALEM CITY" | name=="VINELAND CITY"

factor MedianIncome Poverty BA LessHS
predict se_index

 
reg ltot_state_rev south
reg lf_aid south
reg nlf_aid south
reg per_white south
reg per_black south
reg per_hisp south
reg per_others south
reg per_frl south
reg per_iep south
reg per_lep south
reg BA south
reg LessHS south 
reg ltot_enroll south
reg lMeInc south
reg Poverty south
reg lpop south
reg White south
reg Black south
reg Hispanic south
reg Asian south
reg Others_cr south
reg Under18 south
reg Over65 south 
reg abbott south 
reg lprop_val south
reg se_index south

outreg2 using southvsnsouth, excel dec(3) e(all)

//south vs. non-south filename is southvsns

********************************************************************
********************************************************************
********************************************************************
// south vs. non south 
//redoing the index 
use nj_sd_fin08-14

generate ltot_enroll=log(tot_enroll)

generate per_others=100-(per_white+per_black+per_hisp)
generate lprop_val=log(m_propval)
generate lMeInc=log(MedianIncome)
generate lf_aid=log(formal_aid)
generate nlf_aid=log(other_state_rev)
generate ltot_state_rev=log(tot_state_rev)
generate lPop=log(Population)
generate Others_cr=100-(White+Black+Hispanic+Asian)

generate abbott=0
replace abbott=1 if name=="BRIDGETON PUBLIC SCHOOLS" | name=="BURLINGTON CITY SCHOOL DISTRICT"
replace abbott=1 if name=="CAMDEN CITY PUBLIC SCHOOLS" | name=="GLOUCESTER CITY PUBLIC SCHOOLS" | name=="HARRISON TOWNSHIP"
replace abbott=1 if name=="MILLVILLE" | name=="PEMBERTON TOWNSHIP" | name=="PLEASANTVILLE" | name=="SALEM CITY" | name=="VINELAND CITY"

generate MaxHS=(100-LessHS)
generate non_poverty=(100-Poverty)

factor MedianIncome BA MaxHS non_poverty
predict se_index

clonevar formula_exp=formal_aid
replace formula_exp=1 if formal_aid==0
generate lf_exp=log(formula_exp)

//total state revenue 

regress ltot_state_rev per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll

regress ltot_state_rev per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65

regress ltot_state_rev per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65 se_index

outreg2 using total_index, excel dec(3) e(all)


// lf_aid - formal aid 

regress lf_exp per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll

regress lf_exp per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65

regress lf_exp per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65 se_index

outreg2 using formal_index, excel dec(3) e(all)


// nlf_aid - non formal aid 

regress nlf_aid per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll

regress nlf_aid per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65

regress nlf_aid per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65 se_index

outreg2 using nformal_index, excel dec(3) e(all)

/* the three files to be sent - total_index, formal_index, informal_index*/
 

********************************************************************
********************************************************************
********************************************************************
//south - abbott interaction regressions 

use nj_sd_fin08-14

generate ltot_enroll=log(tot_enroll)

generate per_others=100-(per_white+per_black+per_hisp)
generate lprop_val=log(m_propval)
generate lMeInc=log(MedianIncome)
generate lf_aid=log(formal_aid)
generate nlf_aid=log(other_state_rev)
generate ltot_state_rev=log(tot_state_rev)
generate lPop=log(Population)
generate Others_cr=100-(White+Black+Hispanic+Asian)

generate abbott=0
replace abbott=1 if name=="BRIDGETON PUBLIC SCHOOLS" | name=="BURLINGTON CITY SCHOOL DISTRICT"
replace abbott=1 if name=="CAMDEN CITY PUBLIC SCHOOLS" | name=="GLOUCESTER CITY PUBLIC SCHOOLS" | name=="HARRISON TOWNSHIP"
replace abbott=1 if name=="MILLVILLE" | name=="PEMBERTON TOWNSHIP" | name=="PLEASANTVILLE" | name=="SALEM CITY" | name=="VINELAND CITY"

generate MaxHS=(100-LessHS)
generate non_poverty=(100-Poverty)

factor MedianIncome BA MaxHS non_poverty
predict se_index

clonevar formula_exp=formal_aid
replace formula_exp=1 if formal_aid==0
generate lf_exp=log(formula_exp)

//type-all regressions


regress ltot_state_rev south per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65 se_index


//as it is
regress lf_aid south per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65 se_index

//only when aid is not 0
regress lf_aid south per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65 se_index if formal_aid!=0

//when o lfp has been made 1
regress lf_exp south per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65 se_index


regress nlf_aid south per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65 se_index

 
 outreg2 using allaid_index, excel dec(3) e(all)
//file name is typeall

//creating counties via fips codes
generate Atlantic=0 
replace Atlantic=1 if fipsco==1

generate Burlington=0 
replace Burlington=1 if fipsco==5

generate Camden=0 
replace Camden=1 if fipsco==7

generate Cape_May=0 
replace Cape_May=1 if fipsco==9

generate Cumberland=0 
replace Cumberland=1 if fipsco==11

generate Gloucester=0 
replace Gloucester=1 if fipsco==15

generate Ocean=0 
replace Ocean=1 if fipsco==29

generate Salem=0 
replace Salem=1 if fipsco==33


//regressions on south-counties 
regress ltot_state_rev per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65 se_index Atlantic Burlington Camden Cumberland Gloucester Ocean Salem i.year,vce(cluster leaid)

regress lf_exp per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65 se_index Atlantic Burlington Camden Cumberland Gloucester Ocean Salem i.year,vce(cluster leaid)

regress nlf_aid per_others per_black per_hisp per_frl per_iep per_lep ltot_enroll lprop_val abbott Over65 se_index Atlantic Burlington Camden Cumberland Gloucester Ocean Salem i.year,vce(cluster leaid)

outreg2 using south_counties, excel dec(3) e(all)

//south counties file name 


// formal aid =0 problem 
use nj_sd_fin08-14
log using faid_problem
count if formal_aid==0
//1071 observations have 0 formula aid
generate lformalaid=log(formal_aid)
log close








