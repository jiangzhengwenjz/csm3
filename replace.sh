git add .
set -x
sed -i 's#newTxt#oldTxt#g' `git grep -rl 'oldTxt' . | egrep '\.(c|s|h|txt|inc|ld)'`
