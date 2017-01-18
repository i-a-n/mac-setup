# See README for instructions on how to install this

for f in "$@"
do
	# Retrieve just the last part of the full file path
	b=$(basename -s $f)

	# Copy it to the clipboard with the URL prefixed; Feel free to replace the URL with
	# a custom one
	echo "https://union.io/images/repo/$b" | pbcopy
done
