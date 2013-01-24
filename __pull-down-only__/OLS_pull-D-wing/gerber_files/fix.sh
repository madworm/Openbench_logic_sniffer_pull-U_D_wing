#!/bin/bash

rename SilkS_Back  B_SilkS   *SilkS_Back*
rename SilkS_Front F_SilkS   *SilkS_Front*
rename Mask_Back   B_Mask    *Mask_Back*
rename Mask_Front  F_Mask    *Mask_Front*
rename PCB_Edges   Edge_Cuts *PCB_Edges*
rename Eco1        Eco1_User *Eco1*
rm *.pho

for file in `ls ./gerbv/*.gvp`
do
	perl -pi -e 's/PCB_Edges/Edge_Cuts/' $file
	perl -pi -e 's/SilkS_Back/B_SilkS/'  $file
	perl -pi -e 's/SilkS_Front/F_SilkS/' $file
	perl -pi -e 's/Mask_Back/B_Mask/'    $file
	perl -pi -e 's/Mask_Front/F_Mask/'   $file
	perl -pi -e 's/Eco1/Eco1_User/'      $file
	perl -pi -e 's/.*pho.*//'    	     $file
	perl -pi -e 's/^\n//' 		     $file        
done
