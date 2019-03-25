@echo off

echo -n "Limpando arquivos auxiliares..."
del *.out *.lol *.aux *.alg *.acr *.dvi *.gls *.log *.bbl *.blg *.ntn *.not *.lof *.lot *.toc *.loa *.lsg *.nlo *.nls *.ilg *.ind *.ist *.glg *.glo *.xdy *.acn *.idx *.loq *~
echo "Compilando..."
pdflatex "documento.tex"
bibtex "documento"
makeglossaries "documento"
makeindex "documento"
pdflatex "documento.tex"
pdflatex "documento.tex"
echo -n "Limpando arquivos auxiliares..."
del *.out *.lol *.aux *.alg *.acr *.dvi *.gls *.log *.bbl *.blg *.ntn *.not *.lof *.lot *.toc *.loa *.lsg *.nlo *.nls *.ilg *.ind *.ist *.glg *.glo *.xdy *.acn *.idx *.loq *~
echo -n "Processo finalizado!"
pause
