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
% Define colours
\definecolor{TextColour}{RGB}{0, 0, 0}
\definecolor{HighlightColour}{RGB}{102, 0, 0}

% Font customising
\renewcommand{\normalfont}{\fontsize{9pt}{10pt}}

% Define styles
\newcommand{\ParagraphStyle}{\fontsize{9pt}{1em}\upshape\color{TextColour}}

% Setting up the layout of document
\geometry{a4paper,
ignoreheadfoot,
hscale=0.7, vscale=0.8,
hcentering, vcentering,}
\setlength{\parindent}{25pt}

% Remove sections numbering
\setcounter{secnumdepth}{0}

% Remove page numbering
\pagenumbering{gobble}

\titleformat{\section}
  {\normalfont\Large\bfseries}
  {\thesection}
  {0pt}
  {}

\titleformat{\subsection}
  {\normalfont\normalsize\bfseries}
  {\thesubsection}
  {0pt}
  {}

% Setting for hyperlinks
\hypersetup{colorlinks, breaklinks, urlcolor=Torquoise, linkcolor=Torquoise}

\newenvironment{cvParagraph}
{\vspace{2mm}
\ParagraphStyle}
{\par\vspace{2mm}}
%
% \newenvironment{cvsection}
% {\begin{tabular}
% }
% {\end{tabular}
% }
