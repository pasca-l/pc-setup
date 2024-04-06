#!/usr/bin/perl

# $pdf_mode, pdf output mode
$pdf_mode = 3;
# "3", generates dvi file from $latex, and pdf file from $dvipdf

# $max_repeat, maximum compile iterations
$max_repeat = 5;

# optional designations (latexmk will autocomplete if necessary)
# %S is the placeholder for source file
# %O is the placeholder for options
# %D is the placeholder for output file

# $latex, command for compiling tex file to dvi file
$latex = "platex %S %O -halt-on-error -file-line-error -synctex=1";
# -halt-on-error, stops compiling on error
# -file-line-error, shows error line
# -synctex=1, allows jump from preview to code

# $bibtex, command for running bibtex for biblatex backend
$bibtex = "bibtex %S %O";

# $biber, command for running biber for bibtex backend
$biber = "biber %S %O --bblencoding=utf8 -u -U --output_safechars";
# --bblencoding=utf8, utf-8 for bbl file
# -u, utf-8 for input file
# -U, utf-8 for output file
# --output_safechars, encode unicodes by latex commands

# $dvipdf, command for converting dvi file to pdf file
$dvipdf = "dvipdfmx %S %O -o %D";

# $pvc_view_file_via_temporary, auto re-compile with -pvc option
$pvc_view_file_via_temporary = 0;
# "0", does not keep any old files
