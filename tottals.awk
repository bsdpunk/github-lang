BEGIN {
        total=0;
}
{
        lang=$1;
        book=$2;
        bookamount=$3*$4;
        total=total+bookamount;
        print itemno," ", book,"\t","$"bookamount;
}
END {
        print "Total Amount = $"total;
}

