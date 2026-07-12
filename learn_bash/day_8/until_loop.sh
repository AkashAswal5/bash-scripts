# Wait until a file exists
until [[ -f "ready.txt" ]]; do
    echo "Waiting for file..."
    sleep 2
done
echo "File found!"
