# clear terminal window
clear

# remove /build
if [ -d "build" ]; then
    echo 'removing /build'
    rm -r build
else
    echo "/build does not exist"
fi

# if codeCoverage is being run
if [ $1 ] && [ $1 = true ]; then
    echo 'constructing /build'

    # should match launch.json->files object
    # "files": [
    #     "manifest",
    #     "source/**/*.*",
    #     "components/**/*.*",
    #     "images/**/*.*",
    #     "theme/**/*.*"
    # ]
    mkdir -p -v build
    cp -R manifest build
    cp -R source build
    cp -R components build
    # cp -R images build
    # cp -R theme build
fi

echo ""
echo "rooibosC version:"; rooibosC --version
echo "rooibosDist.brs version:"; sed '3!d' source/tests/rooibos/rooibosDist.brs
echo ""