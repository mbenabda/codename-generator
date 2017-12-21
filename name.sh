
pushd $(dirname $0) > /dev/null
echo "$(shuf -n 1 adjectives) $(shuf -n 1 foods)"
popd > /dev/null