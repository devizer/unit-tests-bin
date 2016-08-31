#!/bin/bash
work=/d2/.tests
app=Universe.MediaProbe
rm -rf $work/$app
mkdir -p $work/$app
rm -f $work/.$app.7z
wget --no-check-certificate -O $work/.$app 'https://raw.githubusercontent.com/devizer/unit-tests-bin/master/Universe.MediaProbe(non-windows).7z'
7za x -y -o$work $work/.$app
cd $work && cd 'Universe.MediaProbe(non-windows)'
pdb2mdb Universe.MediaProbe.Tests.dll
pdb2mdb Universe.MediaProbe.dll

nu-c Universe.MediaProbe.Tests.dll



