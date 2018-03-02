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
