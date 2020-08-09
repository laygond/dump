# Dumps given directory into this shell file directory
# if given single argument "-g" then it pushes to github
# By Bryan Laygond @laygond

if [[ $# -eq 2 ]]
then
    # Get Location of this running shell file
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
    echo "[INFO] This shell file is running at $DIR"

    if [[ -d $1 && ! -d $2  ]]
    #if source directory exist and 'new name folder' is not repeated 
    then
        cp -r $1 $DIR/$2
        echo "[INFO] Transfer complete"
    else
        echo "[ERROR] Error in arguments given"
        echo "        First argument  : location of source folder"
        echo "        Second argument : new name of source folder" 
    fi    
# elif [[$# -eq 1 ]]
# then
#     echo $#
#     # #Push to github
#     # cd $DIR
#     # git add -A
#     # git commit -m ":sparkles: New Directory Added"
#     # echo "[INFO] Pushing to GitHub..."
#     # git push
else
    echo "[ERROR] Error in arguments given"
    echo "        First argument  : location of source folder"
    echo "        Second argument : new name of source folder" 
fi
