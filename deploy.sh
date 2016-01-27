dir=`mktemp -d -t temp`

cp -r dist/* $dir

pushd $dir>/dev/null

git init
git add -A .
git commit -am "seed familysearchelements.github.io"
git remote add origin https://github.com/FamilySearchElements/familysearchelements.github.io.git
git push origin +master

popd >/dev/null

rm -rf $dir