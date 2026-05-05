$pdf_mode = 5;
$xelatex = 'xelatex -interaction=nonstopmode -file-line-error -synctex=1 %O %S';
$bibtex_use = 2;
$biber = 'biber %O %B';
$out_dir = 'build';
$aux_dir = 'build';

@default_files = ('main.tex');

$clean_ext .= ' bbl bcf blg run.xml synctex.gz';
