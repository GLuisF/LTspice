BEGIN {
#    printf ("FILENAME='%s'\n", FILENAME);
    t = FILENAME;
}

{
    s = $0;
    gsub ("XXX", t, s);
    print s;
}
