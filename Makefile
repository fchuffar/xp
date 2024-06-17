all:
	pdflatex xp.tex
	pdflatex xp.tex
	#bibtex xp
	#bibtex xp
	#pdflatex xp.tex
	#pandoc -s xp.tex --bibliography=biblio.bib -o xp.html

clean:
	rm -Rf *.vrb *_ebook.pdf *.aux *.log *.nav *.out *.pdf *.snm *.toc

shrink:
	gs \
     -sDEVICE=pdfwrite \
     -dCompatibilityLevel=1.4 \
     -dHaveTransparency=true \
     -dFastWebView=true \
     -dPDFSETTINGS=/ebook \
     -dEmbedAllFonts=true \
     -dSubsetFonts=true \
     -dNOPAUSE \
     -dQUIET \
     -dBATCH \
     -sOutputFile=xp_ebook.pdf \
     xp.pdf

  

# values for 'quality' argument:
#
# 'prepress' is highest quality
# 'printer' or 'default' are 300dpi, both quite good
# 'ebook' is 150 dpi; still reasonable on screen
# 'screen' is 72dpi - looks poor

  
  