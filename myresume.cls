% Identification:
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myresume}[2019/11/13 Template for resume]

% Preliminary declaration:
\LoadClass{article}
\RequirePackage{xcolor}

% Options:
\DeclareOption*{PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% More declaration:
\renewcommand{\normalsize}{\fontsize{9pt}{10pt}}
\setlength{\textwidth}{17.5cm}
\setlength{\textheight}{22cm}
\setcounter{secnumdepth}{0}
