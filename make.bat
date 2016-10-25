set path=c:\texlive\2015\bin\win32;%path%
platex --synctex=1 MathPlus-sample.tex
dvipdfmx MathPlus-sample.dvi

