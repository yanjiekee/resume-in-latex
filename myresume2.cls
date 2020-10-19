% ====== Identification: ============================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myresume2}

% ====== Preliminary declaration: ===================================
\LoadClass{article}

\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{geometry}

% Introduce hyperlinks
\RequirePackage{hyperref}

% Text alignment and introduce hypenation
\RequirePackage{ragged2e}

% Formating sections title: \titleformat
\RequirePackage[explicit]{titlesec}

% For more symbols
\RequirePackage{amssymb}

% Tabular with fixed column width
\RequirePackage{tabularx}

% To use the <{decl.} and >{decl.} operator ofr tabulars
\RequirePackage{array}

% Customise itemize environment easily - all the itemize optional parameters
\RequirePackage{enumitem}

% For mathematics operation
\RequirePackage{calc}

% ====== Options: ===================================================
\DeclareOption*{PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Geometry of the paper size and text size:
% Size of A4 is 8.27 × 11.69 inches
\geometry{a4paper,
total = {6.5in, 10in}}
\setlength{\parindent}{0pt}

% Redefine the font size:
\renewcommand{\normalfont}{\fontsize{10pt}{12pt}}
\newcommand{\verylargefont}{\fontsize{12pt}{14pt}}
\newcommand{\largefont}{\fontsize{11pt}{13pt}}

% Numbering (diasabled):
% Suppress the section numbering for that with section depth greater than 0
\setcounter{secnumdepth}{0}
% Disable page numbering at the foot
\pagenumbering{gobble}

% Formatting the section title style:
\titleformat{\section}
  {\verylargefont\bfseries\MakeUppercase}
  {\thesection}
  {0pt} % Spacing between label and title
  {$\Diamond$~~#1~\hrulefill}

\titlespacing*{\section} % * indicates that the paragraph following section is not indented
  {0pt} % Horizontal spacing from left leftmargin
  {25pt} % Vertical spacing before title
  {10pt} % Vertical spacing after title

% A rule that fill up the remaining horizontol space
% Used in the \titleformat
% \renewcommand{\hrulefill}{\leavevmode\leaders\hrule height .5pt\hfill\kern\z@}

% Setting for hyperlinks:
\hypersetup{colorlinks, breaklinks, urlcolor=Blue, linkcolor=Blue}

% Define colours:
\definecolor{TextColour}{RGB}{0, 0, 0} % Black
\definecolor{HighlightColour}{RGB}{102, 0, 0} % Maroon
\definecolor{DehighlightColor}{RGB}{128, 128, 128} % Gray

% Define text styles
\newcommand{\ParagraphStyle}{\normalfont\upshape\color{TextColour}}
\newcommand{\textStyle}[1]{\normalfont\upshape\color{TextColour}{#1}}
\newcommand{\HeaderStyle}[1]{\largefont\color{TextColour}\textbf{#1}}
% \newcommand{\SubheaderStyle}[1]{\largefont\upshape\color{TextColour}{#1}}
\newcommand{\TheHeaderStyle}[1]{\huge\color{TextColour}\textbf{\textit{#1}}}
\newcommand{\dateStyle}[1]{\normalfont\color{TextColour}\textsl{#1}}

\newcommand{\s}{~\textbf{$\cdot$}~}
\newcommand{\bigs}{~\s~}

% Help setting up tabularx
% \tracingtabularx

\newcommand{\paragraphEntry}[1]
{\ParagraphStyle#1}

\newcommand{\twocolumnEntry}[2]
{\setlength{\tabcolsep}{0pt}% Such that the width of the table for \smallheadEntry can be determined correctly in \projectEntry
\begin{tabularx}{\textwidth}
  {@{}% This is to remove the margin to the left of tabular
  >{\hsize=0.3\hsize\linewidth=\hsize}X%
  >{\hsize=1.7\hsize\linewidth=\hsize}X%
  @{}}
\textStyle{\textit{#1}}&\textStyle{#2}\\
\end{tabularx}\vspace{2pt}}



\newcommand{\headEntry}[4]
{\begin{tabular*}{\textwidth}{@{}l@{\extracolsep{\fill}}r@{}}
\HeaderStyle{#1}&\dateStyle{\textbf{#2}}\\
\textStyle{#3}&\dateStyle{\textbf{#4}}\\
\end{tabular*}\vspace{10pt}}


\newcommand{\smallheadEntry}[3]
{\begin{tabularx}{#3}{lXr}
\textStyle{\textbf{#1}}&\dotfill&\dateStyle{#2}\\
\end{tabularx}}


\newcommand{\itemEntry}[1]
{\begin{itemize}[itemsep=0pt,
  % align=left,
  leftmargin=6ex,
  labelsep=5pt,
  label=$\triangleright$,
  itemsep=2pt,
  topsep=0pt,
  parsep=0pt]
\textStyle{#1}%
\end{itemize}}


\newcommand{\projectEntry}[4]
{\smallheadEntry{#1}{#2}{0.85\textwidth}\vspace{5pt}
\itemEntry{#3}\vspace{5pt}
\textStyle{#4}\vspace{15pt}}


\newcommand{\simpleEntry}[3]
{\smallheadEntry{#1}{#2}{\textwidth}\vspace{5pt}
\itemEntry{#3}\vspace{10pt}}


\newcommand{\theHeader}[3]
{\begin{tabular*}{\textwidth}
  {@{}p{0.6\textwidth}p{0.1\textwidth}p{0.3\textwidth}@{}}
\TheHeaderStyle{#1}&Email:\newline Phone No:&#2\newline#3\\
\end{tabular*}}
