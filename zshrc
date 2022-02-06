PROMPT='%B%F{blue}%1~%f %F{178}$%f  %b'

function gc() {
    git add .
    if [ "$1" != "" ]
    then
        git commit -m "$1"
    else
        git commit -m update # default commit message is `update`
    fi # closing statement of if-else block
}

function gpo() {
    git add .
    if [ "$1" != "" ]
    then
        git push origin $1
    else
        echo "Branch name not given!"
    fi # closing statement of if-else block
}
