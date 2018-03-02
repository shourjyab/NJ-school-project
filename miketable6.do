//changing folder to your computer
cd "C:\Users\Hayes\Dropbox\school\data\data_creation"


//In case the route is incorrect - the file I am using is "nj_sd_fin08-14" in Dropbox\school\data\data_creation

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
