use strict;
while(<>) {
    s!6/6/09!4/7/09!;
    s!13/6/09!11/7/09!;
    s!20/6/09!1/8/09!;
    s!27/6/09!15/8/09!;
    print;
}
# Run as:
# > perl -ibak changedates.pl Cadet.blw Lark.blw Ok.blw Wayfarer.blw Dragonfly.blw Laser.blw Squib.blw
