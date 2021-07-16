git clone git@github.com:RP-luizberto/RP-luizberto.github.io.git
echo "Cloned repo"
ls -la target/pit-reports
cp -r target/pit-reports/* RP-luizberto.github.io
cd RP-luizberto.github.io || echo "Failed to CD into repo folder" && exit
git add .
git commit -m "Add pitest report"
git push
# TODO index html
