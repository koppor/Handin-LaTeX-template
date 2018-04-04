cd $sourceDir;
echo "$mainDir";
function tex_compile(){
  pushd . >/dev/null;
  cd "$CTANDir"
  outHandle "Error in latexmk $1" latexmk -pdf "$1.tex" -outdir="./bin" --shell-escape -interaction=nonstopmode -f
  cp "bin/$1.pdf" ./
  rm -rf bin/
  popd >/dev/null;
}

# ---
# - handin.sty : The handin package
# - handin-doc.pdf : Description of how the package works
# - handin-doc.tex : Source of handin-doc.tex
# ^^ AUTO
# - example.tex : Contains example code
# - universityTromsoLogo.pdf : An image to be used in the example
add_to_CTANDir layout.tex example.tex img/universityTromsoLogo.pdf

# - example.pdf : Output of example.tex
tex_compile "example"
# - layout.pdf : Contains an overview on which macro goes where in the new \maketitle
tex_compile "layout"
# layout.tex is not going to CTAN
rm $CTANDir/layout.tex

# Get github README ready
mv ../README.md ../README.md.bak
echo -e "<!---\n DO NOT EDIT THIS FILE \n EDITS SHOULD BE DONE IN src/README.template.md \n-->" > ../README.md
cat README.template.md >> ../README.md
pushd . >/dev/null
cd ../
outHandle "Error when inserting package-variables to README.md-file" $perlDir/vars.pl -v $version -p $packagename -g $github -b $build README.md
popd >/dev/null

# Zip CTAN file
sleep 0.3
echo "Zipping CTAN"
rm haninCTAN.zip
zip handinCTAN.zip -r "$packagename/"
sleep 0.3
rm -rf "$mainDir/handin"
mv "$sourceDir/handinCTAN.zip" "$mainDir/"
mv "$CTANDir/" "$mainDir/$packagename"

echo "Tag as v${version}b$build"
