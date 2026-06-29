#!/bin/bash
whois "$1" | awk -F': ' '
BEGIN {
    split("Registrant Admin Tech", g);
    split("Name Organization Street City State/Province Postal Code Country Phone Phone Ext: Fax Fax Ext: Email", f);
}
{
    gsub(/^[ \t]+|[ \t]+$/, "", $1);
    gsub(/^[ \t]+|[ \t]+$/, "", $2);
    d[$1] = $2;
}
END {
    for (i=1; i<=3; i++) {
        for (j=1; j<=12; j++) {
            k = g[i] " " f[j]; sub(/ Ext:/, "", k);
            v = d[k];
            if (f[j] == "Street" && v) v = v " ";
            printf "%s%s,%s", (m++ ? "\n" : ""), g[i] " " f[j], v;
        }
    }
}' > "$1.csv"
