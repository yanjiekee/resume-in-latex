% ====== Identification: ============================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myresume}[2019/11/13 Template for resume]

% ====== Preliminary declaration: ===================================
\LoadClass{article}

\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{geometry}
% Introduce hypenation (Not sure wanted to keep or not)
\RequirePackage{ragged2e}
% Introduce hyperlinks
\RequirePackage{hyperref}
\RequirePackage{titlesec}

% ====== Options: ===================================================
\DeclareOption*{PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% ====== More declaration: ==========================================

% Setting up the layout of document
\geometry{a4paper,
ignoreheadfoot,
hscale=0.7, vscale=0.8,
hcentering, vcentering,}
\setlength{\parindent}{0pt}
\setlength{\parskip}{10pt}

% Numbering
\setcounter{secnumdepth}{0}
\pagenumbering{gobble}

\titleformat{\section}
  {\normalfont\Large\bfseries}
  {\thesection}
  {0pt}
  {\vspace{-1em}}
  [\vspace{-1em}]

\titleformat{\subsection}
  {\normalfont\normalsize\bfseries}
  {\thesubsection}
  {0pt}
  {}

% Setting for hyperlinks
\hypersetup{colorlinks, breaklinks, urlcolor=Maroon, linkcolor=Maroon}

% Define colours
\definecolor{TextColour}{RGB}{0, 0, 0}
\definecolor{HighlightColour}{RGB}{102, 0, 0}

% Font customising
\renewcommand{\normalfont}{\fontsize{9pt}{10pt}}

% Define text styles
\newcommand{\ParagraphStyle}{\normalfont\upshape\color{TextColour}}
\newcommand{\ItemStyle}{\normalfont\upshape\color{TextColour}}
\newcommand{\HeaderStyle}[1]{\fontsize{20.74pt}{21pt}\upshape\color{HighlightColour}{#1}\vspace{4mm}}
\newcommand{\SubheaderStyle}[1]{\normalfont\upshape\color{HighlightColour}{#1}\vspace{2mm}}

% New environments
\newenvironment{cvHeader}
{\begin{center}}
{\end{center}\par}

\newenvironment{cvParagraph}
{\vspace{2mm}
\ParagraphStyle}
{\par}

% \newenvironment{cvItems}
% {}
% {}
