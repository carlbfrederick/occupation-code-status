/* OccCodes.R -- Carl Frederick -- 12 February 2008 

   See http://www.ssc.wisc.edu/~cfrederi/occ/OccCodes.html for any questions regarding these data.

   This file imports the comma separated file OccCodeTable.csv into R, labels the variables
   and prints out a the contents and means of the dataset.

   Simply change "DIRECTORY" below to the path pointing to these 
   files and the file should work.  
   
   Be sure to save the file when you are done if you  want to.
   
   NOTE: The labels are not necessary just comment out those commands as well as the require(Hmisc)
*/

setwd("DIRECTORY")

require(Hmisc)

occ.codes <- read.csv("OccCodeTable.csv")
 
label(occ.codes$Census2002) <- "Census 2002 Occupation Code"
label(occ.codes$HasNew) <- "Updated Scores based on some proportion of occs new to Census 2000 scheme"
label(occ.codes$SOC2000) <- "SOC 2000 Occupation Code"
label(occ.codes$SCTSEI) <- "Total SEI from Stevens & Cho 1985"
label(occ.codes$SCMSEI) <- "Male SEI from Stevens & Cho 1985"
label(occ.codes$NTPrestige) <- "Prestige Scores from Nakao & Treas 1994"
label(occ.codes$NTTSEI) <- "Total SEI from Nakao & Treas 1994"
label(occ.codes$HWTOccEd) <- "Total Occupational Education from Hauser & Warren 1997"
label(occ.codes$HWTOccInc) <- "Total Occupational Income from Hauser & Warren 1997"
label(occ.codes$HWTSEI) <- "Total SEI from Hauser & Warren 1997"
label(occ.codes$HWMOccED) <- "Male Occupational Education from Hauser & Warren 1997"
label(occ.codes$HWMOccInc) <- "Male Occupational Income from Hauser & Warren 1997"
label(occ.codes$HWMSEI) <- "Male SEI from Hauser & Warren 1997"
label(occ.codes$HWFOccEd) <- "Female Occupational Education from Hauser & Warren 1997"
label(occ.codes$HWFOccInc) <- "Female Occupational Income from Hauser & Warren 1997"
label(occ.codes$HWFSEI) <- "Female SEI from Hauser & Warren 1997";
label(occ.codes) <- "Updated Occupational Status/Prestige Scores.  See http://www.ssc.wisc.edu/~cfrederi/occ/OccCodes.html for any questions"


str(occ.codes)
summary(occ.codes)
