BEGIN {
    Device="";
}

{
    if ($1==".subckt") {
#.subckt T1030-600W A K G
        Device="";
        if ($3=="A")
            Device=$2;
    }
    else if ($1=="X1" && $5=="Triac_ST" && Device!="") {
#X1 A K G Triac_ST params:
        printf ("call :t %s\n", Device);
    }
}

END {
    printf ("goto :eof\n\n");

    printf (":t\n");
    printf ("gawk -v FILENAME=%%1 -f t.awk <triac >%%1.asy\n");
}
