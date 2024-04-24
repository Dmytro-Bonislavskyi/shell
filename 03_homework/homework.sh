
for dir in dir1 dir2 dir3 dir4 dir5; do
    ls "$dir"
done

# 5. How would you append to one of the existing files " and machine learning!"?
echo " and machine learning!" >> dir5/file5.txt

# 6. How would you verify that the text was indeed appended to the existing file?
cat dir5/file5.txt

# 7. How would you delete all files except for the one with the appended text?
dirToKeepFile="dir5"
fileToKeep="file5.txt"
for dir in dir1 dir2 dir3 dir4 dir5; do
    cd "$dir"
    for i in {1..5}; do
        if [ "file$i.txt" == "$fileToKeep" ] && [ "$dir" == "$dirToKeepFile" ]; then
            echo "I will not delete $dir/file$i.txt"
        else
	    rm "file$i.txt"
            echo "delete $dir/file$i.txt"
        fi
    done
    cd ..
done
cd dir5

# 8. How would you navigate back to the parent directory containing all the directories?
cd ..

# 9. How would you remove each directory along with its contents?
rm -r dir1 dir2 dir3 dir4 dir5

# 10. How would you verify that all directories and files have been deleted?
ls -la

