ORG=RP-luizberto
REPO=RP-luizberto.github.io
git clone "https://${GITHUB_TOKEN}@github.com/${ORG}/${REPO}.git" && echo "Cloned repo" || exit
folders=$(echo target/pit-reports/*)
foldername=$(basename "${folders[0]}")

echo "Execution=$foldername"
cp -r target/pit-reports/* $REPO
cd $REPO || exit

git add .
git commit -m "Add pitest report ($foldername)"
printf '%s\n%s\n' "$ORG" "$GITHUB_TOKEN" | ../push.sh
# TODO index html
