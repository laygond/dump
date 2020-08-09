if [[ $# -eq 2 ]]
then
    # Get Location of this running shell file
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
    
    if [[ -d $1 ]]
    #if source directory exist and 'new name folder' is not repeated 
    then
        cp -r "$1/*" $DIR/$2
    fi    
else
    echo "First argument  : location of source folder"
    echo "Second argument : new name of source folder" 
fi
