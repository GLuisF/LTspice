{
    if (toupper (substr ($1, 1, 1)) != "+" && toupper (substr ($1, 1, 1)) != ".")
    {
        if ($2 == "0") $2 = "N000";
        if ($3 == "0") $3 = "N000";
        if (toupper (substr ($1, 1, 1)) == "E" || toupper (substr ($1, 1, 1)) == "G")
        {
            if (toupper (substr ($4, 1, 4)) != "POLY")
            {
                if ($4 == "0") $4 = "N000";
                if ($5 == "0") $5 = "N000";
            }
        }
    }

    print;
}
