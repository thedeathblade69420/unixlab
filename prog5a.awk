#!/usr/bin/awk -f
    {
        split($0, arr, "-");
    if (arr[1]>31 || arr[1]<0 || arr[2]>12 || arr[2]<0)
    {
        print "invalid date"
        exit(0);
    }
    else {
        print arr[1]
        if (arr[2]==1)
        print "january"
        else if (arr[2]==2)
        print "february"
        else if (arr[2]==3)
        print "march"
        else if (arr[2]==4)
        print "april"
        else if (arr[2]==5)
        print "may"
        else if (arr[2]==6)
        print "june"
        else if (arr[2]==7)
        print "july"
        else if (arr[2]==8)
        print "august"
        else if (arr[2]==9)
        print "september"
        else if (arr[2]==10)
        print "october"
        else if (arr[2]==11)
        print "november"
        else if (arr[2]==12)
        print "december"
        else
        print "invalid month"
    }
    print arr[3]

}

    