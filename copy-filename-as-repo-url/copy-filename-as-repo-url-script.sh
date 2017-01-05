# see readme for how to install this

for f in "$@"
do
    # retrieve just the last part of the full file path
    b=$(basename -s $f)

    # now copy it to the clipboard with the URL prefixed
    echo "https://union.io/images/repo/$b" | pbcopy
done
