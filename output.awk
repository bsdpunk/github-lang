#!/bin/bash
awk '
BEGIN {
    count=0;
    FS = ":";
    total[count] = "";
    lang[count] = "";
    final = 0;
}
{
    clang=$1;
    amount=$2;
    if (clang == lang[count] || lang[count]=="") {
        lang[count] = clang;
        total[count] += amount;
        final +=amount;
    }
    else {

        count++;
        lang[count] = clang;
        total[count] = amount;        
        final+=amount;

    }


}
END {
    #print "Total LoC: " final;
    print "language, LoC";
    for(x in lang){
        #c = (total[x]/final)*100;
        print lang[x],"," total[x];
    }
}
' clean
