# clear /build
if [ -d "build" ] 
then
    echo 'removing /build'
    rm -r build
else
    echo "/build does not exist"
fi

# construct /build
# should match launch.json->files object
# "files": [
#     "manifest",
#     "source/**/*.*",
#     "components/**/*.*",
#     "images/**/*.*",
#     "theme/**/*.*"
# ]

echo 'constructing /build'
mkdir -p -v build
cp -R manifest build
cp -R source build
cp -R components build
# cp -R images build
# cp -R theme build