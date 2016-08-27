#!/bin/bash
awk '
BEGIN {
        count=0;
        FS = ":";
        plang= $1;
        total[count] = "";
        lang[count] = "";
}
{
        clang=$1;
        amount=$2;
        #print lang[count];
        if (clang == lang[count] || lang[count]=="") {
           lang[count] = clang;
           total[count] += amount;
                #print "";
        t}
        else {
         lang[count] = clang;
         total[count] = amount;        
         count++;
            }
        
        #print clang, total[count];

}
END {
        for(x in lang){
            print lang[x], total[x];
            }
        #print "Total Amount = $";
}
' cleanedup2
