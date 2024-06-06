/* OccCodes.do -- Carl Frederick -- 12 February 2008 

   See http://www.ssc.wisc.edu/~cfrederi/occ/OccCodes.html for any questions regarding these data.

   This file imports the comma separated file OccCodeTable.csv into stata and labels the variables
   and prints out a codebook.

   Simply change "DIRECTORY" below to the path (including the terminal / or \) pointing to these 
   files and the file should work.  
   
   Be sure to save the file when you are done if you  want to.
   
   !!!NOTE: THIS FILE CLEARS THE DATA IN MEMORY SO BE SURE TO SAVE WHAT YOU ARE DOING BEFOREHAND!!!
*/

local dir "DIRECTORY"

  insheet using "`dir'OccCodeTable.csv", comma clear
  
  label var Census2002 	"Census 2002 Occupation Code"
  label var HasNew	"Updated Scores based on some proportion of occs new to Census 2000 scheme"
  label var SOC2000	"SOC 2000 Occupation Code"
  label var SCTSEI	"Total SEI from Stevens & Cho 1985"
  label var SCMSEI	"Male SEI from Stevens & Cho 1985"
  label var NTPrestige	"Prestige Scores from Nakao & Treas 1994"
  label var NTTSEI	"Total SEI from Nakao & Treas 1994"
  label var HWTOccEd	"Total Occupational Education from Hauser & Warren 1997"
  label var HWTOccInc	"Total Occupational Income from Hauser & Warren 1997"
  label var HWTSEI	"Total SEI from Hauser & Warren 1997"
  label var HWMOccED	"Male Occupational Education from Hauser & Warren 1997"
  label var HWMOccInc	"Male Occupational Income from Hauser & Warren 1997"
  label var HWMSEI	"Male SEI from Hauser & Warren 1997"
  label var HWFOccEd	"Female Occupational Education from Hauser & Warren 1997"
  label var HWFOccInc	"Female Occupational Income from Hauser & Warren 1997"
  label var HWFSEI 	"Female SEI from Hauser & Warren 1997"
  
  codebook
