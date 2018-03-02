clear all

cd "C:\Users\mh987\Dropbox\My Research\Consulting Projects\2017_Walter_Rand\school\data\data_creation\"

use "nj_sd_census.dta"

rename CensusID leaid

sort leaid year

destring leaid, replace

drop if leaid==3499999

save "nj_sd_census_final.dta", replace


