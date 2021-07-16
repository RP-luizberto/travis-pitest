ORG=RP-luizberto
REPO=RP-luizberto.github.io
git clone "https://${GITHUB_TOKEN}@github.com/${ORG}/${REPO}.git" && echo "Cloned repo" || exit
folders=$(echo target/pit-reports/*)
foldername=$(basename "${folders[0]}")

mv $REPO deploy_folder

echo "Execution=$foldername"
cp -r target/pit-reports/* deploy_folder
rm -rf deploy_folder/.git

echo "Removed git folder"
ls -la deploy_folder
# TODO index html
