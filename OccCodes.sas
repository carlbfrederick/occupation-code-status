/* OccCodes.sas -- Carl Frederick -- 12 February 2008 

   See http://www.ssc.wisc.edu/~cfrederi/occ/OccCodes.html for any questions regarding these data.

   This file imports the comma separated file OccCodeTable.csv into sas and labels the variables
   and prints out a the contents and means of the dataset.

   Simply change "DIRECTORY" below to the path (including the terminal / or \) pointing to these 
   files and the file should work.  
   
   Be sure to save the file when you are done if you  want to.
*/

libname dir "DIRECTORY";
filename fil "OccCodeTable.csv";

data occcodes;
  infile dir.fil DLM=',' firstobs=2;
  input Census2002 HasNew $ SOC2000 $ SCTSEI SCMSEI NTPrestige NTTSEI HWTOccEd HWTOccInc HWTSEI HWMOccED HWMOccInc HWMSEI HWFOccEd HWFOccInc HWFSEI ;

  
  label Census2002="Census 2002 Occupation Code"
        HasNew="Updated Scores based on some proportion of occs new to Census 2000 scheme"
        SOC2000="SOC 2000 Occupation Code"
        SCTSEI="Total SEI from Stevens & Cho 1985"
        SCMSEI="Male SEI from Stevens & Cho 1985"
        NTPrestige="Prestige Scores from Nakao & Treas 1994"
        NTTSEI="Total SEI from Nakao & Treas 1994"
        HWTOccEd="Total Occupational Education from Hauser & Warren 1997"
        HWTOccInc="Total Occupational Income from Hauser & Warren 1997"
        HWTSEI="Total SEI from Hauser & Warren 1997"
        HWMOccED="Male Occupational Education from Hauser & Warren 1997"
        HWMOccInc="Male Occupational Income from Hauser & Warren 1997"
        HWMSEI="Male SEI from Hauser & Warren 1997"
        HWFOccEd="Female Occupational Education from Hauser & Warren 1997"
        HWFOccInc="Female Occupational Income from Hauser & Warren 1997"
        HWFSEI="Female SEI from Hauser & Warren 1997";
run;

proc contents;
run;

proc means;
run;