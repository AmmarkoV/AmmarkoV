 #!/bin/bash
THISDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Changing to $THISDIR"
cd "$THISDIR"
 
#sudo apt-get install texlive-full texlive-latex-extra python-pygments pdftk
#biber --tool -V bib/Dissertation.bib 

#Refresh everything
#rm *.aux *.idx *.lof *.blg *.bbl *.log *.log *.toc


xelatex -shell-escape -output-directory=../pdf -jobname=Ammar_Qammaz_CV resume.tex
bibtex main # main.bib #bib/Dissertation.bib <- deactivated to speedup..
xelatex -shell-escape -output-directory=../pdf -jobname=Ammar_Qammaz_CV resume.tex
xelatex -shell-escape -output-directory=../pdf -jobname=Ammar_Qammaz_CV resume.tex #<- deactivated to speedup..


#gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=CVPR_compressed.pdf main.pdf


#Compress down file..
#gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=AmmarThesis.pdf MAIN.pdf

#Compress very bad quality
#gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=AmmarThesisBQ.pdf MAIN.pdf

#evince MAIN.pdf&

#pdflatex cameraready_abstract.tex
#evince cameraready_abstract.pdf&

exit 0
