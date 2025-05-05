mkdir -p build
cd src

pdflatex -output-directory=../build -jobname=compiled main.tex

gs \
    -sDEVICE=pdfwrite \
    -dCompatibilityLevel=1.5 \
    -dPDFSETTINGS=/default \
    -dNOPAUSE \
    -dQUIET \
    -dBATCH \
    -sOutputFile=../build/jakub-sarnowski-cv.pdf \
    -dFastWebView=true \
    ../build/compiled.pdf

rm -rf ../build/compiled.*
