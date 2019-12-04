% ====== Identification: ============================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myresume2}

% ====== Preliminary declaration: ===================================
\LoadClass{article}

\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{geometry}

% Introduce hyperlinks
\RequirePackage{hyperref}

% Formating sections title: \titleformat
\RequirePackage{titlesec}

% For more symbols
\RequirePackage{amssymb}

% ====== Options: ===================================================
\DeclareOption*{PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Geometry of the paper size and text size
\geometry{a4paper,
total = {6.5in, 9in}}

% Redefine the font size
\renewcommand{\normalfont}{\fontsize{10pt}{12pt}}
\newcommand{\largefont}{\fontsize{12pt}{14pt}}

% Numbering (diasabled)
% Suppress the section numbering for that with section depth greater than 0
\setcounter{secnumdepth}{0}
% Disable page numbering at the foot
\pagenumbering{gobble}
