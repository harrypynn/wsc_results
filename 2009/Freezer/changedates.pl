use strict;
while(<>) {
    s!2008!2009!;
    s!11/10/08!17/10/09!;
    s!25/10/08!24/10/09!;
    s!1/11/08!31/10/09!;
    s!8/11/08!7/11/09!;
    s!15/11/08!14/11/09!;
    s!22/11/08!21/11/09!;
    print;
}
# Run as:
# > perl -ibak changedates.pl Cadet.blw Lark.blw Ok.blw Wayfarer.blw Dragonfly.blw Laser.blw Squib.blw
