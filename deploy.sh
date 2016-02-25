dir=`mktemp -d -t temp`

cp -r dist/* $dir

pushd $dir>/dev/null

git init
git add -A .
git commit -am "seed fs-webdev.github.io"
git remote add origin https://github.com/fs-webdev/fs-webdev.github.io.git
git push origin +master

popd >/dev/null

rm -rf $dir