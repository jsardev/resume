%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Developer CV
% LaTeX Class
% Version 1.1 (February 24, 2025)
%
% This class originates from:
% https://www.LaTeXTemplates.com
%
% Authors:
% Jan Vorisek (jan@vorisek.me)
% Based on a template by Jan Küster (info@jankuester.com)
% Modified for LaTeX Templates by Vel (vel@LaTeXTemplates.com)
%
% License:
% The MIT License (see included LICENSE file)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%  CLASS CONFIGURATION
%----------------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{config}[2025/02/24 Developer CV class v1.1]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions\relax

\LoadClass{extarticle}

%----------------------------------------------------------------------------------------
%  PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------

\pdfminorversion=5
% \pdfcompresslevel=9
% \pdfobjcompresslevel=3
% \input{glyphtounicode}
% \pdfgentounicode=1

\setlength{\parindent}{0mm}

\usepackage[hidelinks]{hyperref}

\pagestyle{empty}

\usepackage{moresize}

\usepackage{ifthen}

%----------------------------------------------------------------------------------------
%  PAGE LAYOUT
%----------------------------------------------------------------------------------------

\usepackage{geometry}

\geometry{
  paper=a4paper,
  top=1.75cm,
  bottom=1.75cm,
  left=2cm,
  right=2cm,
  headheight=0.75cm,
  footskip=1cm,
  headsep=0.5cm,
}

%----------------------------------------------------------------------------------------
%  FONTS
%----------------------------------------------------------------------------------------

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}

\usepackage[default]{raleway}

\usepackage{fontawesome5}

\newcommand{\icon}[3]{%
  \vcenteredhbox{\colorbox{black}{\makebox(#2, #2){\textcolor{white}{\large\csname fa#1\endcsname}}}}%
  \hspace{0.2cm}%
  \vcenteredhbox{\textcolor{black}{#3}}%
}

%----------------------------------------------------------------------------------------
%  GRAPHICS DEFINITIONS
%----------------------------------------------------------------------------------------

\usepackage{tikz}
\usetikzlibrary{shapes, backgrounds}
\tikzset{x=1cm, y=1cm}

\newcommand{\vcenteredhbox}[1]{%
  \begingroup%
  \setbox0=\hbox{#1}\parbox{\wd0}{\box0}%
  \endgroup%
}

%----------------------------------------------------------------------------------------
%  CUSTOM SECTIONS
%----------------------------------------------------------------------------------------

\newcommand{\cvsect}[2]{%
  \vspace{24pt}
  \colorbox{black}{\textcolor{white}{\MakeUppercase{\textbf{#1}}}}\hspace{6pt}\textcolor{gray}{#2}\\%
}

%----------------------------------------------------------------------------------------
%  ENTRY LIST
%----------------------------------------------------------------------------------------

\usepackage{longtable}
\setlength{\LTpre}{0pt}
\setlength{\LTpost}{0pt}

\setlength{\tabcolsep}{0pt}

\newenvironment{entrylist}{
  \renewcommand*{\arraystretch}{1.5}
  \begin{longtable}[H]{@{}p{0.2\textwidth}p{0.8\textwidth}@{}}
  }{
  \end{longtable}
}

\newcommand{\entry}[5]{
  #1 &
  \begin{minipage}[t]{\linewidth}
    \textbf{#2}\hfill
    {\footnotesize \textbf{\textcolor{black}{#3}}}
    \ifthenelse{\equal{#4}{}}{
    }{
      \vspace{6pt}\\
    }
    #4
    \ifthenelse{\equal{#5}{}}{
    }{
      \vspace{6pt}\\
    }
    #5
    \ifthenelse{\equal{#5}{}}{}{
      \\\\
    }
  \end{minipage}
  \\
}

\newcommand{\slashsep}{\hspace{3mm}/\hspace{3mm}}