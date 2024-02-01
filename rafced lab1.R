
R version 4.2.1 (2022-06-23 ucrt) -- "Funny-Looking Kid"
Copyright (C) 2022 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> load("C:/Users/rcedano002/Desktop/psy  stats/BRFSS2022_rev.RData")
> hist(SLEPTIM1[(SLEPTIM1 >5) & (SLEPTIM1 < 9)])
Error in hist(SLEPTIM1[(SLEPTIM1 > 5) & (SLEPTIM1 < 9)]) : 
  object 'SLEPTIM1' not found
> xtabs(~ brfss22$ADDEPEV3 + brfss22$SEXVAR)
brfss22$SEXVAR
brfss22$ADDEPEV3                          Male Female
Yes ever told had depressive disorder  31096  60314
No                                    176718 174192
> prop.table(table(brfss22$ADDEPEV3, brfss22$SEXVAR))

Male     Female
Yes ever told had depressive disorder 0.07030204 0.13635829
No                                    0.39952523 0.39381443
> ggplot(brfss_small_f, aes(x = ADDEPEV3, fill = EXERANY2)) + geom_bar(position = "fill") + scale_fill_viridis_d(option="rocket")
Error in ggplot(brfss_small_f, aes(x = ADDEPEV3, fill = EXERANY2)) : 
  could not find function "ggplot"
> brfss_small <- subset(brfss22, restrict_1)
Error in eval(e, x, parent.frame()) : object 'restrict_1' not found
> attach(brfss22)
> summary(brfss22)
X_STATE                          X_METSTAT     
Washington: 26152   Metropolitan counties   :318082  
New York  : 17800   nonmetropolitan counties:117642  
Minnesota : 16821   NA's                    :  9408  
 Ohio      : 16487                                    
 Maryland  : 16418                                    
 Texas     : 14245                                    
 (Other)   :337209                                    
          X_URBSTAT                                    MSCODE      
 urban counties:380732   in central city                  : 29393  
 rural counties: 54992   in county containing central city: 16030  
 NA's          :  9408   in suburb near city              : 16068  
outside MSA                      : 32395  
NA's                             :351246  
                                                                   
                                                                   
    CHILDREN                                MARITAL      
 Min.   : 0.00   Married                        :227424  
 1st Qu.: 0.00   Never married                  : 80001  
 Median : 0.00   Divorced                       : 57516  
 Mean   : 0.49   Widowed                        : 48019  
 3rd Qu.: 1.00   A member of an unmarried couple: 18668  
 Max.   :82.00   (Other)                        : 13496  
 NA's   :14464   NA's                           :     8  
                                                          EDUCA       
 College 4 years or more (College graduate)                  :187496  
 College 1 year to 3 years (Some college or technical school):120252  
 Grade 12 or GED (High school graduate)                      :108990  
 Grades 9 through 11 (Some high school)                      : 16954  
 Grades 1 through 8 (Elementary)                             :  8381  
 (Other)                                                     :  3054  
 NA's                                                        :     5  
VETERAN3                                   X_PRACE2     
Yes a veteran: 53211   White                            :351032  
No           :386272   Black or African American        : 41522  
NA's         :  5649   Asian                            : 14836  
                        American Indian or Alaskan Native: 10147  
                        Refused                          :  8593  
                        (Other)                          : 18989  
                        NA's                             :    13  
X_HISPANC                X_AGEG5YR     
yes Hispanic             : 42917   Age 65 to 69   : 47099  
no                       :396631   Age 60 to 64   : 44511  
dont know refused missing:  5584   Age 70 to 74   : 43472  
Age 55 to 59   : 36821  
Age 80 or older: 36251  
Age 50 to 54   : 33644  
(Other)        :203334  
RENTHOM1                    EMPLOY1      
own home:310708   Employed for wages:186004  
rent    :108332   Retired           :137083  
other   : 21463   Self-employed     : 38768  
NA's    :  4629   Unable to work    : 26737  
                   A homemaker       : 17477  
                   (Other)           : 27823  
                   NA's              : 11240  
INCOME3      
Less than $75,000 ($50,000 to less than $75,000)   : 59148  
Less than $150,000 ($100,000 to less than $150,000): 50330  
Less than $100,000 ($75,000 to less than $100,000) : 48436  
Refused                                            : 47001  
Less than $50,000 ($35,000 to less than $50,000)   : 46831  
(Other)                                            :180454  
NA's                                               : 12932  
                 FOODSTMP     
 got food stamps SNAP: 25323  
 no                  :226638  
 NA's                :193171  




SDHFOOD1     
Never                                                                                            :203654  
Rarely                                                                                           : 20768  
Sometimes                                                                                        : 17258  
Always the food that you bought not last, and you didn\x92t have money to get more, in last 12 mo:  4824  
Usually                                                                                          :  4603  
(Other)                                                                                          :  1722  
NA's                                                                                             :192303  
    SEXVAR                      BIRTHSEX     
 Male  :209239   male sex at birth  : 37441  
 Female:235893   female sex at birth: 41456  
                 NA's               :366235  




SOMALE                             SOFEMALE     
Gay                       :  2939   Lesbian or Gay            :  2318  
Straight, that is, not gay:112679   Straight, that is, not gay:123813  
Bisexual                  :  2570   Bisexual                  :  5507  
Something else            :  1974   Something else            :  2789  
I dont know the answer    :  1057   I dont know the answer    :  1760  
Refused                   :  2813   Refused                   :  3443  
NA's                      :321100   NA's                      :305502  
TRNSGNDR     
Yes, Transgender, male-to-female      :   499  
Yes, Transgender, female to male      :   515  
Yes, Transgender, gender nonconforming:   589  
No                                    :258106  
Dont know/Not Sure                    :   811  
Refused                               :  3041  
NA's                                  :181571  
                      HADSEX            GENHLTH          PHYSHLTH     
 yes had sex in last 6 mo: 14744   Very good:148444   Min.   : 0.000  
 no                      :  4231   Good     :143598   1st Qu.: 0.000  
 dont know not sure      :    66   Excellent: 71878   Median : 0.000  
 refused                 :   835   Fair     : 60273   Mean   : 4.348  
 NA's                    :425256   Poor     : 19741   3rd Qu.: 3.000  
(Other)  :  1195   Max.   :30.000  
NA's     :     3   NA's   :10927   
MENTHLTH                          LSATISFY     
Min.   : 0.000   Very satisfied with life:114252  
1st Qu.: 0.000   Satisfied               :123445  
Median : 0.000   Dissatisfied            : 10758  
Mean   : 4.383   Very dissatisfied       :  3062  
3rd Qu.: 5.000   Dont know/Not sure      :  1864  
Max.   :30.000   Refused                 :  1107  
NA's   :9067     NA's                    :190644  
EMTSUPRT     
Always get social and emotional support:118012  
Usually                                : 77907  
Sometimes                              : 33813  
Rarely                                 : 10835  
Never                                  :  9379  
(Other)                                :  4195  
NA's                                   :190991  
                                      SDHISOLT     
 Never                                    :106160  
 Rarely                                   : 70617  
 Sometimes                                : 53072  
 Usually                                  : 13178  
 Always feel socially isolated from others:  8098  
 (Other)                                  :  2665  
 NA's                                     :191342  
SDHSTRE1     
Never                                                                                                                          : 94681  
Rarely                                                                                                                         : 69465  
Sometimes                                                                                                                      : 55913  
Usually                                                                                                                        : 17179  
Always feels tense, restless, nervous, or anxious, or is unable to sleep at night because his/her mind is troubled all the time: 12295  
(Other)                                                                                                                        :  1678  
NA's                                                                                                                           :193921  
                                  ADDEPEV3     
 Yes ever told had depressive disorder: 91410  
 No                                   :350910  
 NA's                                 :  2812  




PRIMINSR     
health ins thr employer or union:161388  
Medicare                        :135848  
private plan                    : 36931  
Medicaid                        : 29072  
no coverage of any type         : 23018  
(Other)                         : 58871  
NA's                            :     4  
                                                                    CHECKUP1     
 last routine checkup within past year (anytime less than 12 months ago):350944  
 Within past 2 years (1 year but less than 2 years ago)                 : 41919  
 Within past 5 years (2 years but less than 5 years ago)                : 24882  
 5 or more years ago                                                    : 19079  
 Dont know Not sure                                                     :  5063  
 (Other)                                                                :  3242  
 NA's                                                                   :     3  
FLUSHOT7     
Yes got flu shot in last 12 mo:209256  
No                            :188755  
NA's                          : 47121  
                                        
                                        
                                        
                                        
                                COVIDPOS     
 Yes had med prof tell positive test:110877  
 No                                 :270055  
 tested positive at home wo med prof: 13436  
 NA's                               : 50764  



COVIDSMP     
Yes had covid symptoms for more than 3 months: 26783  
No                                           : 94596  
NA's                                         :323753  
                                                       
                                                       
                                                       
                                                       
                                                                                                       COVIDPRM     
 Tiredness or fatigue                                                                                      :  7072  
 Difficulty breathing or shortness of breath                                                               :  4772  
 Loss of taste or smell                                                                                    :  4234  
 Difficulty thinking or concentrating or forgetfulness/memory problems (sometimes referred to as brain fog):  2564  
 Some other symptom                                                                                        :  2511  
 (Other)                                                                                                   :  5562  
 NA's                                                                                                      :418417  
COVIDVA1                 COVIDNU1     
Yes had at least 1 covid vax:124818   had 1 covid vax:  6712  
No                          : 27011   2 covid vax    : 36926  
NA's                        :293303   3 covid vax    : 57488  
                                       4 covid vax    : 23051  
                                       NA's           :320955  


EXERANY2         SLEPTIM1      Height_inches  
Yes exercised in past month:337559   Min.   : 1.000   Min.   :24.00  
No                         :106480   1st Qu.: 6.000   1st Qu.:64.00  
NA's                       :  1093   Median : 7.000   Median :67.00  
                                      Mean   : 7.023   Mean   :67.06  
                                      3rd Qu.: 8.000   3rd Qu.:70.00  
                                      Max.   :24.000   Max.   :97.00  
                                      NA's   :5453     NA's   :32468  
    WEIGHT2           X_BMI5              X_BMI5CAT     
 Min.   :  32.0   Min.   :12.02   Underweight  :  6778  
 1st Qu.: 150.0   1st Qu.:24.13   Normal Weight:116976  
 Median : 178.0   Median :27.44   Overweight   :139995  
 Mean   : 183.3   Mean   :28.53   Obese        :132577  
 3rd Qu.: 210.0   3rd Qu.:31.75   NA's         : 48806  
Max.   :1230.0   Max.   :99.64                         
NA's   :44257    NA's   :48806                         
SMOKE100     
yes smoked at least 100 cigs in life:164217  
no                                  :245955  
dont know not sure                  :  2297  
refused                             :   886  
NA's                                : 31777  
                                              
                                              
               SMOKDAY2                                 ECIGNOW2     
 smoke every day   : 36003   never used e-cigarettes in life:311988  
 smoke some days   : 13938   use every day                  : 10382  
 not at all        :113774   use some days                  : 11734  
 Dont know Not Sure:   165   not at all right now           : 75368  
 Refused           :   173   Dont know Not Sure             :   905  
 NA's              :281079   Refused                        :  1176  
NA's                           : 33579  
                           ALCDAY4          AVEDRNK3     
 none                          :187667   Min.   : 0.00   
 1 in last month               : 31355   1st Qu.: 1.00   
 2 in last month               : 24184   Median : 2.00   
 1 alcoholic drink in past week: 19043   Mean   : 2.24   
 2 in week                     : 15797   3rd Qu.: 3.00   
 (Other)                       :126323   Max.   :76.00   
 NA's                          : 40763   NA's   :237372  
    DRNK3GE5         MARIJAN1                       FIREARM5     
 Min.   : 0.00    Min.   : 0       yes firearms in house: 13839  
 1st Qu.: 0.00    1st Qu.: 0       no                   : 23428  
 Median : 0.00    Median : 0       NA's                 :407865  
Mean   : 1.34    Mean   : 2                                     
3rd Qu.: 1.00    3rd Qu.: 0                                     
Max.   :76.00    Max.   :30                                     
NA's   :238769   NA's   :351397                                 
ACEDEPRS     
Yes, Adverse Childhood Exper, lived with someone who was depressed, mentally ill, or suicidal:  8800  
No                                                                                           : 38156  
dont know not sure                                                                           :   489  
refused                                                                                      :   841  
NA's                                                                                         :396846  
                                                                                                       
                                                                                                       
                                                                                    ACEDRINK     
 Yes, Adverse Childhood Exper, lived with someone who was a problem drinker or alcoholic: 11527  
 No                                                                                     : 35692  
 dont know not sure                                                                     :   206  
 refused                                                                                :   806  
 NA's                                                                                   :396901  


ACEDRUGS     
Yes, Adverse Childhood Exper, lived with someone who used illegal street drugs or who abused prescription medications:  4691  
No                                                                                                                   : 42448  
dont know not sure                                                                                                   :   307  
refused                                                                                                              :   774  
NA's                                                                                                                 :396912  
                                                                                                                               
                                                                                                                               
                                                                                                                                              ACEPRISN     
 Yes, Adverse Childhood Exper, lived with someone who served time or was sentenced to serve time in a prison, jail, or other correctional facility:  3549  
 No                                                                                                                                               : 43701  
 dont know not sure                                                                                                                               :   178  
 refused                                                                                                                                          :   766  
 NA's                                                                                                                                             :396938  


ACEDIVRC     
Yes, Adverse Childhood Exper, parents separated or divorced: 12107  
No                                                         : 34367  
dont know not sure                                         :   269  
parents never married                                      :   632  
refused                                                    :   797  
NA's                                                       :396960  
                                                                     
                                                                                                                                ACEPUNCH     
 Adverse Childhood Exper, never: How often did your parents or adults in your home ever slap, hit, kick, punch or beat each other up: 38842  
 once                                                                                                                               :  1795  
 more than once                                                                                                                     :  5816  
 dont know not sure                                                                                                                 :   672  
 refused                                                                                                                            :  1004  
 NA's                                                                                                                               :397003  

ACEHURT1     
Adverse Childhood Exper, never: Not including spanking, (before age 18), how often did a parent or adult in your home ever hit, beat, kick, or physically hurt you in any way: 35092  
once                                                                                                                                                                         :  2939  
more than once                                                                                                                                                               :  8628  
dont know not sure                                                                                                                                                           :   350  
refused                                                                                                                                                                      :  1068  
NA's                                                                                                                                                                         :397055  
                                                                                                                                                                                       
                                                                                                                        ACESWEAR     
 Adverse Childhood Exper, never: How often did a parent or adult in your home ever swear at you, insult you, or put you down: 30266  
 once                                                                                                                       :  2393  
 more than once                                                                                                             : 13722  
 dont know not sure                                                                                                         :   573  
 refused                                                                                                                    :  1075  
 NA's                                                                                                                       :397103  

ACETOUCH     
Adverse Childhood Exper, never:  How often did anyone at least 5 years older than you or an adult, ever touch you sexually: 40941  
once                                                                                                                      :  1940  
more than once                                                                                                            :  3677  
dont know not sure                                                                                                        :   202  
refused                                                                                                                   :  1212  
NA's                                                                                                                      :397160  
                                                                                                                                    
                                             CIMEMLOS     
 experienced confusion memory loss in last 12 mo :  7003  
 no                                              : 56945  
 NA's                                            :381184  




CDHOUSE      
Never                                                                                                                                               :  3642  
Sometimes                                                                                                                                           :  1650  
Rarely                                                                                                                                              :  1272  
Usually                                                                                                                                             :   364  
Always, as a result of confusion or memory loss, how often have you given up day-to-day household activities or chores you used to do, in last 12 mo:   357  
(Other)                                                                                                                                             :   168  
NA's                                                                                                                                                :437679  
                                                CDASSIST     
 Never                                              :  3954  
 Rarely                                             :  1447  
 Sometimes                                          :  1354  
 Always need assist because confusion or memory loss:   304  
 Usually                                            :   281  
 (Other)                                            :    91  
 NA's                                               :437701  
CDSOCIAL     
Never                                                                   :  3726  
Rarely                                                                  :  1387  
Sometimes                                                               :  1313  
Always confusion or memory loss interfere with work or social activities:   458  
Usually                                                                 :   410  
(Other)                                                                 :   121  
NA's                                                                    :437717  
                                                                  CAREGIV1     
 provided care to family or friend with disability or health condition: 19662  
 no                                                                   : 78174  
 caregiving recipient died in past 30 days                            :   177  
 NA's                                                                 :347119  



CRGVREL4     
Mother                    :  3986  
Non-relative/Family friend:  3002  
Husband                   :  2243  
Child                     :  1968  
Wife                      :  1904  
(Other)                   :  6531  
NA's                      :425498  
> summary(SLEPTIM1[X_STATE == "New York"])
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
1.000   6.000   7.000   6.905   8.000  24.000     226 
> summary(SLEPTIM1[X_STATE == "Ohio"])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
   1.00    6.00    7.00    6.94    8.00   24.00     218 
> ggplot(brfss_small_f, aes(x = ADDEPEV3, fill = EXERANY2)) + geom_bar(position = "fill") + scale_fill_viridis_d(option="rocket")
Error in ggplot(brfss_small_f, aes(x = ADDEPEV3, fill = EXERANY2)) : 
  could not find function "ggplot"
> xtabs(~ brfss22$ADDEPEV3 + brfss22$SEXVAR)
                                       brfss22$SEXVAR
brfss22$ADDEPEV3                          Male Female
  Yes ever told had depressive disorder  31096  60314
  No                                    176718 174192
> prop.table(table(brfss22$ADDEPEV3, brfss22$SEXVAR))
                                       
                                              Male     Female
  Yes ever told had depressive disorder 0.07030204 0.13635829
  No                                    0.39952523 0.39381443
> NN <- length(brfss22$ADDEPEV3)
> set.seed(12345)
> restrict_1 <- (runif(NN) < 0.05) # use just 5% 
> summary(restrict_1)
   Mode   FALSE    TRUE 
logical  422828   22304 
> brfss_small <- subset(brfss22, restrict_1)
> ggplot(brfss_small, aes(x = SEXVAR, fill = ADDEPEV3)) + geom_bar()
Error in ggplot(brfss_small, aes(x = SEXVAR, fill = ADDEPEV3)) : 
  could not find function "ggplot"
> ggplot(brfss_small, aes(x = SEXVAR, fill = ADDEPEV3)) + geom_bar(position = "fill")
Error in ggplot(brfss_small, aes(x = SEXVAR, fill = ADDEPEV3)) : 
  could not find function "ggplot"
> ggplot(brfss_small_f, aes(x = ADDEPEV3, fill = EXERANY2)) + geom_bar(position = "fill") + scale_fill_viridis_d(option="rocket")
Error in ggplot(brfss_small_f, aes(x = ADDEPEV3, fill = EXERANY2)) : 
  could not find function "ggplot"
> ggplot(brfss_small, aes(x = SEXVAR, fill = ADDEPEV3)) + geom_bar(position = "fill")
Error in ggplot(brfss_small, aes(x = SEXVAR, fill = ADDEPEV3)) : 
  could not find function "ggplot"
> brfss22$Age_midpt <- fct_recode(brfss22$X_AGEG5YR, "21" = "Age 18 to 24",
+                                 "27" = "Age 25 to 29", "32" = "Age 30 to 34",
+                                 "37" = "Age 35 to 39", "42" = "Age 40 to 44",
+                                 "47" = "Age 45 to 49", "52" = "Age 50 to 54",
+                                 "57" = "Age 55 to 59", "62" = "Age 60 to 64",
+                                 "67" = "Age 65 to 69", "72" = "Age 70 to 74",
+                                 "77" = "Age 75 to 79", "82" = "Age 80 or older",
+                                 NULL = "Dont know/Refused/Missing")
Error in fct_recode(brfss22$X_AGEG5YR, `21` = "Age 18 to 24", `27` = "Age 25 to 29",  : 
  could not find function "fct_recode"
> ggplot(brfss_small, aes(x = SEXVAR, fill = ADDEPEV3)) + geom_bar()
Error in ggplot(brfss_small, aes(x = SEXVAR, fill = ADDEPEV3)) : 
  could not find function "ggplot"
> install.packages("ggplot2")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
Installing package into ‘C:/Users/rcedano002/AppData/Local/R/win-library/4.2’
(as ‘lib’ is unspecified)
also installing the dependencies ‘cli’, ‘lifecycle’, ‘rlang’, ‘vctrs’

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.2/cli_3.6.2.zip'
Content type 'application/zip' length 1338016 bytes (1.3 MB)
downloaded 1.3 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.2/lifecycle_1.0.4.zip'
Content type 'application/zip' length 139823 bytes (136 KB)
downloaded 136 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.2/rlang_1.1.3.zip'
Content type 'application/zip' length 1579120 bytes (1.5 MB)
downloaded 1.5 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.2/vctrs_0.6.5.zip'
Content type 'application/zip' length 1338437 bytes (1.3 MB)
downloaded 1.3 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.2/ggplot2_3.4.4.zip'
Content type 'application/zip' length 4304355 bytes (4.1 MB)
downloaded 4.1 MB

package ‘cli’ successfully unpacked and MD5 sums checked
package ‘lifecycle’ successfully unpacked and MD5 sums checked
package ‘rlang’ successfully unpacked and MD5 sums checked
package ‘vctrs’ successfully unpacked and MD5 sums checked
package ‘ggplot2’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\rcedano002\AppData\Local\Temp\RtmpO8DOoE\downloaded_packages
> library(ggplot2)
Warning message:
package ‘ggplot2’ was built under R version 4.2.3 
> ggplot(brfss_small, aes(x = SEXVAR, fill = ADDEPEV3)) + geom_bar()
> ggplot(brfss_small, aes(x = ADDEPEV3, fill = SEXVAR)) + geom_bar()
> ggplot(brfss_small, aes(x = ADDEPEV3, fill = SEXVAR)) + geom_bar(position = "fill")
> ggplot(brfss_small_f, aes(x = ADDEPEV3, fill = EXERANY2)) + geom_bar(position = "fill") + scale_fill_viridis_d(option="rocket")
Error in ggplot(brfss_small_f, aes(x = ADDEPEV3, fill = EXERANY2)) : 
  object 'brfss_small_f' not found
> summary(brfss_small)
       X_STATE                         X_METSTAT    
 Washington: 1274   Metropolitan counties   :15896  
 New York  :  881   nonmetropolitan counties: 5923  
 Ohio      :  875   NA's                    :  485  
Maryland  :  839                                   
Minnesota :  811                                   
Texas     :  719                                   
(Other)   :16905                                   
X_URBSTAT                                   MSCODE     
urban counties:19034   in central city                  : 1406  
rural counties: 2785   in county containing central city:  776  
NA's          :  485   in suburb near city              :  807  
                        outside MSA                      : 1611  
                        NA's                             :17704  


CHILDREN                                  MARITAL     
Min.   : 0.0000   Married                        :11454  
1st Qu.: 0.0000   Divorced                       : 2971  
Median : 0.0000   Widowed                        : 2318  
Mean   : 0.5036   Separated                      :  469  
3rd Qu.: 1.0000   Never married                  : 3888  
Max.   :17.0000   A member of an unmarried couple:  971  
NA's   :747       Refused                        :  233  
                                                          EDUCA     
 Never attended school or only kindergarten                  :  28  
 Grades 1 through 8 (Elementary)                             : 422  
 Grades 9 through 11 (Some high school)                      : 864  
 Grade 12 or GED (High school graduate)                      :5454  
 College 1 year to 3 years (Some college or technical school):5918  
 College 4 years or more (College graduate)                  :9492  
 Refused                                                     : 126  
          VETERAN3                                  X_PRACE2    
 Yes a veteran: 2676   White                            :17646  
 No           :19355   Black or African American        : 2081  
 NA's         :  273   Asian                            :  786  
American Indian or Alaskan Native:  475  
Refused                          :  406  
(Other)                          :  909  
NA's                             :    1  
                     X_HISPANC               X_AGEG5YR    
 yes Hispanic             : 2156   Age 65 to 69   : 2358  
 no                       :19891   Age 60 to 64   : 2264  
 dont know refused missing:  257   Age 70 to 74   : 2114  
                                   Age 55 to 59   : 1880  
                                   Age 80 or older: 1750  
                                   Age 50 to 54   : 1670  
                                   (Other)        :10268  
     RENTHOM1                   EMPLOY1    
 own home:15522   Employed for wages:9460  
 rent    : 5449   Retired           :6736  
 other   : 1098   Self-employed     :1946  
 NA's    :  235   Unable to work    :1414  
A homemaker       : 851  
(Other)           :1332  
NA's              : 565  
                                                INCOME3    
 Less than $75,000 ($50,000 to less than $75,000)   :2941  
 Less than $150,000 ($100,000 to less than $150,000):2479  
 Less than $100,000 ($75,000 to less than $100,000) :2478  
 Refused                                            :2384  
 Less than $50,000 ($35,000 to less than $50,000)   :2311  
 (Other)                                            :9059  
 NA's                                               : 652  
FOODSTMP    
got food stamps SNAP: 1288  
no                  :11382  
NA's                : 9634  
                             
                             
                             
                             
                                                                                              SDHFOOD1    
 Never                                                                                            :10203  
 Rarely                                                                                           : 1051  
 Sometimes                                                                                        :  873  
 Always the food that you bought not last, and you didn\x92t have money to get more, in last 12 mo:  264  
 Usually                                                                                          :  238  
 (Other)                                                                                          :   90  
 NA's                                                                                             : 9585  
SEXVAR                     BIRTHSEX    
Male  :10517   male sex at birth  : 1888  
Female:11787   female sex at birth: 2096  
NA's               :18320  
                                           
                                           
                                           
                                           
                        SOMALE                            SOFEMALE    
 Gay                       :  137   Lesbian or Gay            :  103  
 Straight, that is, not gay: 5628   Straight, that is, not gay: 6281  
 Bisexual                  :  112   Bisexual                  :  283  
 Something else            :  102   Something else            :  134  
 I dont know the answer    :   57   I dont know the answer    :   81  
 Refused                   :  125   Refused                   :  192  
 NA's                      :16143   NA's                      :15230  
                                   TRNSGNDR    
 Yes, Transgender, male-to-female      :   25  
 Yes, Transgender, female to male      :   32  
 Yes, Transgender, gender nonconforming:   27  
 No                                    :12954  
 Dont know/Not Sure                    :   39  
 Refused                               :  152  
 NA's                                  : 9075  
HADSEX                      GENHLTH    
yes had sex in last 6 mo:  730   Excellent           :3593  
no                      :  216   Very good           :7440  
dont know not sure      :    3   Good                :7179  
refused                 :   45   Fair                :3026  
NA's                    :21310   Poor                :1014  
                                  Dont know - Not Sure:  36  
                                  Refused             :  16  
    PHYSHLTH         MENTHLTH                          LSATISFY   
 Min.   : 0.000   Min.   : 0.000   Very satisfied with life:5760  
 1st Qu.: 0.000   1st Qu.: 0.000   Satisfied               :6196  
 Median : 0.000   Median : 0.000   Dissatisfied            : 523  
 Mean   : 4.364   Mean   : 4.368   Very dissatisfied       : 163  
 3rd Qu.: 3.000   3rd Qu.: 5.000   Dont know/Not sure      :  93  
 Max.   :30.000   Max.   :30.000   Refused                 :  53  
 NA's   :575      NA's   :415      NA's                    :9516  
EMTSUPRT   
Always get social and emotional support:6001  
Usually                                :3842  
Sometimes                              :1718  
Rarely                                 : 576  
Never                                  : 427  
(Other)                                : 212  
NA's                                   :9528  
                                      SDHISOLT   
 Never                                    :5298  
 Rarely                                   :3588  
 Sometimes                                :2692  
 Usually                                  : 658  
 Always feel socially isolated from others: 386  
 (Other)                                  : 142  
 NA's                                     :9540  
SDHSTRE1   
Never                                                                                                                          :4823  
Rarely                                                                                                                         :3433  
Sometimes                                                                                                                      :2783  
Usually                                                                                                                        : 882  
Always feels tense, restless, nervous, or anxious, or is unable to sleep at night because his/her mind is troubled all the time: 611  
(Other)                                                                                                                        :  93  
NA's                                                                                                                           :9679  
                                  ADDEPEV3    
 Yes ever told had depressive disorder: 4587  
 No                                   :17577  
 NA's                                 :  140  




PRIMINSR   
health ins thr employer or union:8251  
Medicare                        :6697  
private plan                    :1835  
Medicaid                        :1488  
no coverage of any type         :1169  
CHAMPUS                         : 753  
(Other)                         :2111  
CHECKUP1    
last routine checkup within past year (anytime less than 12 months ago):17682  
Within past 2 years (1 year but less than 2 years ago)                 : 2054  
Within past 5 years (2 years but less than 5 years ago)                : 1180  
5 or more years ago                                                    :  980  
Dont know Not sure                                                     :  255  
Never                                                                  :  111  
Refused                                                                :   42  
FLUSHOT7    
Yes got flu shot in last 12 mo:10489  
No                            : 9484  
NA's                          : 2331  
                                       
                                       
                                       
                                       
                                COVIDPOS    
 Yes had med prof tell positive test: 5662  
 No                                 :13472  
 tested positive at home wo med prof:  670  
 NA's                               : 2500  



COVIDSMP    
Yes had covid symptoms for more than 3 months: 1397  
No                                           : 4795  
NA's                                         :16112  
                                                      
                                                      
                                                      
                                                      
                                                                                                       COVIDPRM    
 Tiredness or fatigue                                                                                      :  360  
 Difficulty breathing or shortness of breath                                                               :  235  
 Loss of taste or smell                                                                                    :  234  
 Difficulty thinking or concentrating or forgetfulness/memory problems (sometimes referred to as brain fog):  142  
 Some other symptom                                                                                        :  121  
 (Other)                                                                                                   :  304  
 NA's                                                                                                      :20908  
COVIDVA1                COVIDNU1    
Yes had at least 1 covid vax: 6244   had 1 covid vax:  341  
No                          : 1416   2 covid vax    : 1826  
NA's                        :14644   3 covid vax    : 2902  
                                      4 covid vax    : 1139  
                                      NA's           :16096  


EXERANY2        SLEPTIM1      Height_inches  
Yes exercised in past month:16851   Min.   : 1.000   Min.   :36.00  
No                         : 5406   1st Qu.: 6.000   1st Qu.:64.00  
NA's                       :   47   Median : 7.000   Median :67.00  
                                     Mean   : 7.019   Mean   :67.06  
                                     3rd Qu.: 8.000   3rd Qu.:70.00  
                                     Max.   :24.000   Max.   :95.00  
                                     NA's   :275      NA's   :1626   
    WEIGHT2          X_BMI5              X_BMI5CAT   
 Min.   : 60.0   Min.   :12.20   Underweight  : 334  
 1st Qu.:150.0   1st Qu.:24.03   Normal Weight:5899  
 Median :179.0   Median :27.44   Overweight   :6913  
 Mean   :183.4   Mean   :28.55   Obese        :6720  
 3rd Qu.:210.0   3rd Qu.:31.84   NA's         :2438  
Max.   :999.0   Max.   :97.65                       
NA's   :2231    NA's   :2438                        
SMOKE100                   SMOKDAY2    
yes smoked at least 100 cigs in life: 8121   smoke every day   : 1830  
no                                  :12428   smoke some days   :  664  
dont know not sure                  :  125   not at all        : 5599  
refused                             :   52   Dont know Not Sure:    6  
NA's                                : 1578   Refused           :   12  
                                              NA's              :14193  

ECIGNOW2    
never used e-cigarettes in life:15587  
use every day                  :  534  
use some days                  :  556  
not at all right now           : 3842  
Dont know Not Sure             :   44  
Refused                        :   67  
NA's                           : 1674  
                           ALCDAY4        AVEDRNK3         DRNK3GE5     
 none                          :9268   Min.   : 0.000   Min.   : 0.000  
 1 in last month               :1535   1st Qu.: 1.000   1st Qu.: 0.000  
 2 in last month               :1279   Median : 2.000   Median : 0.000  
 1 alcoholic drink in past week: 967   Mean   : 2.234   Mean   : 1.363  
 2 in week                     : 802   3rd Qu.: 3.000   3rd Qu.: 1.000  
 (Other)                       :6447   Max.   :76.000   Max.   :30.000  
 NA's                          :2006   NA's   :11740    NA's   :11821   
MARIJAN1                       FIREARM5    
Min.   : 0.000   yes firearms in house:  706  
1st Qu.: 0.000   no                   : 1162  
Median : 0.000   NA's                 :20436  
 Mean   : 2.067                                
 3rd Qu.: 0.000                                
 Max.   :30.000                                
 NA's   :17578                                 
ACEDEPRS    
Yes, Adverse Childhood Exper, lived with someone who was depressed, mentally ill, or suicidal:  440  
No                                                                                           : 1967  
dont know not sure                                                                           :   26  
refused                                                                                      :   34  
NA's                                                                                         :19837  
                                                                                                      
                                                                                                      
                                                                                    ACEDRINK    
 Yes, Adverse Childhood Exper, lived with someone who was a problem drinker or alcoholic:  567  
 No                                                                                     : 1859  
 dont know not sure                                                                     :    8  
 refused                                                                                :   30  
 NA's                                                                                   :19840  


ACEDRUGS    
Yes, Adverse Childhood Exper, lived with someone who used illegal street drugs or who abused prescription medications:  233  
No                                                                                                                   : 2192  
dont know not sure                                                                                                   :   10  
refused                                                                                                              :   28  
NA's                                                                                                                 :19841  
                                                                                                                              
                                                                                                                              
                                                                                                                                              ACEPRISN    
 Yes, Adverse Childhood Exper, lived with someone who served time or was sentenced to serve time in a prison, jail, or other correctional facility:  177  
 No                                                                                                                                               : 2245  
 dont know not sure                                                                                                                               :   11  
 refused                                                                                                                                          :   30  
 NA's                                                                                                                                             :19841  


ACEDIVRC    
Yes, Adverse Childhood Exper, parents separated or divorced:  607  
No                                                         : 1782  
dont know not sure                                         :   12  
parents never married                                      :   31  
refused                                                    :   31  
NA's                                                       :19841  
                                                                    
                                                                                                                                ACEPUNCH    
 Adverse Childhood Exper, never: How often did your parents or adults in your home ever slap, hit, kick, punch or beat each other up: 1987  
 once                                                                                                                               :  107  
 more than once                                                                                                                     :  291  
 dont know not sure                                                                                                                 :   31  
 refused                                                                                                                            :   44  
 NA's                                                                                                                               :19844  

ACEHURT1    
Adverse Childhood Exper, never: Not including spanking, (before age 18), how often did a parent or adult in your home ever hit, beat, kick, or physically hurt you in any way: 1833  
once                                                                                                                                                                         :  139  
more than once                                                                                                                                                               :  426  
dont know not sure                                                                                                                                                           :   21  
refused                                                                                                                                                                      :   41  
NA's                                                                                                                                                                         :19844  
                                                                                                                                                                                      
                                                                                                                        ACESWEAR    
 Adverse Childhood Exper, never: How often did a parent or adult in your home ever swear at you, insult you, or put you down: 1599  
 once                                                                                                                       :  130  
 more than once                                                                                                             :  661  
 dont know not sure                                                                                                         :   19  
 refused                                                                                                                    :   49  
 NA's                                                                                                                       :19846  

ACETOUCH    
Adverse Childhood Exper, never:  How often did anyone at least 5 years older than you or an adult, ever touch you sexually: 2121  
once                                                                                                                      :   93  
more than once                                                                                                            :  178  
dont know not sure                                                                                                        :    8  
refused                                                                                                                   :   54  
NA's                                                                                                                      :19850  
                                                                                                                                   
                                             CIMEMLOS    
 experienced confusion memory loss in last 12 mo :  377  
 no                                              : 2906  
 NA's                                            :19021  




CDHOUSE     
Never                                                                                                                                               :  204  
Sometimes                                                                                                                                           :   80  
Rarely                                                                                                                                              :   60  
Usually                                                                                                                                             :   22  
Always, as a result of confusion or memory loss, how often have you given up day-to-day household activities or chores you used to do, in last 12 mo:   20  
(Other)                                                                                                                                             :    7  
NA's                                                                                                                                                :21911  
                                                CDASSIST    
 Never                                              :  190  
 Rarely                                             :   83  
 Sometimes                                          :   81  
 Always need assist because confusion or memory loss:   17  
 Usually                                            :   13  
 (Other)                                            :    6  
 NA's                                               :21914  
CDSOCIAL    
Never                                                                   :  189  
Rarely                                                                  :   83  
Sometimes                                                               :   65  
Usually                                                                 :   25  
Always confusion or memory loss interfere with work or social activities:   22  
(Other)                                                                 :    3  
NA's                                                                    :21917  
                                                                  CAREGIV1    
 provided care to family or friend with disability or health condition:  957  
 no                                                                   : 3943  
 caregiving recipient died in past 30 days                            :    9  
 NA's                                                                 :17395  



CRGVREL4    
Mother                    :  182  
Non-relative/Family friend:  158  
Husband                   :  112  
Child                     :   95  
Wife                      :   90  
(Other)                   :  320  
NA's                      :21347  
> ggplot(brfss_small_f, aes(x = COVIDPOS, fill = EXERANY2)) + geom_bar(position = "fill") + scale_fill_viridis_d(option="rocket")
Error in ggplot(brfss_small_f, aes(x = COVIDPOS, fill = EXERANY2)) : 
  object 'brfss_small_f' not found
> ggplot(brfss_small, aes(x = COVIDPOS, fill = ADDEPEV3)) + geom_bar()