#!/bin/bash
awk '
BEGIN {
        count=0;
        FS = ":";
        plang= $1;
        total[count] = "";
        lang[count] = "";
        final = 0;
}
{
        clang=$1;
        amount=$2;
        #print lang[count];
        if (clang == lang[count] || lang[count]=="") {
           lang[count] = clang;
           total[count] += amount;
           final +=amount;
                print final, lang[count];
        }
        else {
         
         count++;
         lang[count] = clang;
         total[count] = amount;        
         final+=amount;

                print final, lang[count];
            }
        
        #print clang, total[count];

}
END {
        print final;
        for(x in lang){
            c = (total[x]/final)*100;
            print lang[x], total[x], c;
            }
        #print "Total Amount = $";
}
' cleanedup2
