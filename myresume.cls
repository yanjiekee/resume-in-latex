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

% For more symbols
\RequirePackage{amssymb}

% ====== Options: ===================================================
\DeclareOption*{PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% ====== More declaration: ==========================================

% Setting up the layout of document
\geometry{a4paper,
ignoreheadfoot,
hscale=0.72, vscale=0.82,
hcentering, vcentering,}
\setlength{\parindent}{0pt}
\setlength{\parskip}{10pt}
% \renewcommand{\baselinestretch}{.9}

% Font customising
\renewcommand{\normalfont}{\fontsize{10pt}{12pt}}
\newcommand{\largefont}{\fontsize{12pt}{14pt}}

% Numbering (diasabled)
\setcounter{secnumdepth}{0}
\pagenumbering{gobble}

\titleformat{\section}
  {\centering\largefont\bfseries\MakeUppercase}
  {\thesection}
  {0pt}
  %{\vspace{0em}}
  {$\Diamond$\hspace{1.5ex}\vspace{0em}}
  [\vspace{-1.2em}]

\renewcommand{\hrulefill}{\leavevmode\leaders\hrule height .2pt\hfill\kern\z@}

\titleformat{\subsection}
  {\normalfont\normalsize\bfseries}
  {\thesubsection}
  {0pt}
  {}

% Setting for hyperlinks
\hypersetup{colorlinks, breaklinks, urlcolor=Blue, linkcolor=Blue}

% Define colours
\definecolor{TextColour}{RGB}{0, 0, 0}
\definecolor{HighlightColour}{RGB}{102, 0, 0}
\definecolor{DehighlightColor}{RGB}{128, 128, 128}

% Define text styles
\newcommand{\ParagraphStyle}{\normalfont\upshape\color{TextColour}}
\newcommand{\ItemStyle}{\normalfont\upshape\color{TextColour}}
\newcommand{\HeaderStyle}[1]{\fontsize{17.28pt}{21pt}\upshape\color{TextColour}{#1}\vspace{4mm}}
\newcommand{\SubheaderStyle}[1]{\normalfont\upshape\color{TextColour}{#1}\vspace{1mm}}

\newcommand{\PositionStyle}[1]{\normalfont\upshape\color{TextColour}{#1}}
\newcommand{\DateStyle}[1]{\normalfont\upshape\color{DehighlightColor}{#1}}
\newcommand{\TitleStyle}[1]{\normalfont\bfseries\color{TextColour}{#1}}
\newcommand{\LocationStyle}[1]{\notmalfont\upshape\color{DehighlightColor}{#1}}
\newcommand{\DescriptionStyle}[1]{\normalfont\upshape\color{TextColour}{#1}}

% New environments
\newenvironment{cvHeader}{\renewcommand{\arraystretch}{0.3}}{\par}
% {\begin{center}}
% {\end{center}\par}

\newenvironment{cvParagraph}
{\vspace{2mm}
\ParagraphStyle}
{\par}

\setlength{\tabcolsep}{0pt}
\newcommand{\tabitem}{\hspace{2ex}$\bullet$\hspace{1.3ex}} % Allow use of list inside table

\newcommand{\cvEntry}[4]
{\begin{tabular*}{\textwidth}{l@{\extracolsep{\fill}}l}%
% @{\extracolsep{\fill}}
% \setlength{\leftmargin{3ex}}%
\TitleStyle{#1}&\DateStyle{#2}\\
\multicolumn{2}{l@{\extracolsep{\fill}}}{\PositionStyle{#3}}%
\end{tabular*}%
\begin{cvItems}\newline\DescriptionStyle{#4}\end{cvItems}\vspace{1.5ex}}

\newcommand{\cvEntryTwo}[3]
{\begin{tabular*}{\textwidth}{l@{\extracolsep{\fill}}l}%
\TitleStyle{#1}&\DateStyle{#2}\\
\end{tabular*}%
\begin{cvItems}\newline\DescriptionStyle{#3}\end{cvItems}\vspace{1.5ex}}

\newenvironment{cvItems}
{\RaggedRight\setlength{\parskip}{2pt}}
{}

\newenvironment{cvEntryEnv}
{\setlength{\leftmargin{3ex}}}{}
