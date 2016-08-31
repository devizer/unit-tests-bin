#!/bin/bash
work=$HOME/.test
app=Universe.MediaProbe
rm -rf $work/$app
mkdir -p $work/$app
rm -f $work/.$app.7z
wget --no-check-certificates -O $work/$app 'https://raw.githubusercontent.com/devizer/unit-tests-bin/master/Universe.MediaProbe(non-windows).7z'
