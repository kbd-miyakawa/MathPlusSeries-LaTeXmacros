set path=c:\texlive\2015\bin\win32;%path%
platex --synctex=1 base.tex
dvipdfmx base.dvi


