number=1
while [ $number -le 10 ]
do
  if [ $((number % 2)) -eq 0 ]; then
    echo "Skipping $number"
    ((number++))
    continue
  fi
  echo $number
  ((number++))
done

for file in *.jpg; do
  if [ -f "$file" ]; then
    mv "$file" "${file%.jpg}.png"
    echo "Renamed $file to ${file%.jpg}.png"
  fi
done
