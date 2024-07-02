#!/bin/bash

if cd flutter; then 
    git pull && cd .. 
else 
    git clone https://github.com/flutter/flutter.git && 
    cd flutter && 
    git checkout 3.22.0 && 
    cd ..
fi && 
ls && 
flutter/bin/flutter doctor && 
flutter/bin/flutter clean && 
flutter/bin/flutter config --enable-web