#!/bin/sh

set -e

if [ $# -eq 0 ]; then
  echo "No TAG supplied. Usage: ./update.sh 0.0.1.alpha"
  exit 1
fi

TOP_DIR='tmp'

TAG=$1
FILE_NAME="$TOP_DIR/threejs-$TAG.tar.gz"
RELEASE_URL="https://github.com/mrdoob/three.js/archive/$TAG.zip"
RELEASE_PATH="$TOP_DIR/three.js-$TAG"
echo "Fetching $RELEASE_URL"
VENDOR_JS_PATH="vendor/assets/javascripts"

#wget -O $FILE_NAME $RELEASE_URL
mkdir -p $TOP_DIR
#unzip $FILE_NAME -d $TOP_DIR

cp "$RELEASE_PATH/build/three.js" $VENDOR_JS_PATH
cp "$RELEASE_PATH/build/three.min.js" $VENDOR_JS_PATH

# for file in "$RELEASE_PATH/src/i18n/"*; do
#   base_name=$(basename "$file")
#   final_name="three.$(echo $base_name)"
#   cp $file "$VENDOR_JS_PATH/$final_name"
# done

#rm -rf $FILE_NAME $TOP_DIR
