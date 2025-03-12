for i in {1..100}; do    
    if [ $i -eq 11 ]; then
        echo "Stopping loop at $i"
        break
    fi
    echo "Number: $i"
done