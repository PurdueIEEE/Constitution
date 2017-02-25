\NeedsTeXFormat{LaTeX2e}[1994/06/01] % Originally from https://gist.github.com/eyliu/166080

\ProvidesClass{constitution}[2009/05/15 v0.0.1 Document class for typesetting a constitution]

\LoadClass{report}

\RequirePackage[letterpaper,margin=1in]{geometry}
\RequirePackage[colorlinks=false,linktoc=section,linkcolor=blue,urlcolor=blue]{hyperref}
%\usepackage{hyperref}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{paralist}
\RequirePackage{parskip}

%\newcommand{\bylaw}[1]{\part{#1} \setcounter{section}{0}}
%\renewcommand{\partname}{Bylaw}

\renewcommand*\rmdefault{lmr} % Use Latin Modern Roman as a Times New Roman substitute
\renewcommand*\sfdefault{lmss} % Use Latin Modern Sans Serif as Verdana substitute

\makeatletter
\newcommand*{\titlecontentspage}{
    % Title
    \makeatletter
    \begin{center}
        \includegraphics[width=0.50\textwidth]{ieee_mb_blue_4c}
        
        \vspace{20pt}
        
        \includegraphics[height=0.20\textheight,width=0.50\textwidth,keepaspectratio]{ComputerSocietyLogo-CMYK-stacked}
        
        \vspace{16pt}
        
        \fontsize{18pt}{18pt}\selectfont
        \textbf{\@title}
        
        \vspace{24pt}
        
        \fontsize{12pt}{12pt}\selectfont
        \textbf{\textit{\@author}}
        
        \vspace{10pt}
    \end{center}
    \fontsize{10pt}{10pt}\selectfont
    \makeatother
    
    % Table of Contents
    \setcounter{tocdepth}{0} % Change to 0 for articles only or 1 for articles and sections
    \fontsize{16pt}{16pt}\selectfont
    \textbf{Contents}
    \fontsize{10pt}{10pt}\selectfont
    \vspace{10pt}
    \@starttoc{toc}
    \newpage
}
\makeatother

\titleclass\article{straight}[\part]
\titleformat{\article}[display]{\filcenter\normalfont\bfseries}{Article \thearticle}{0pt}{\filcenter\normalfont\bfseries}
\titlespacing*{\article}{0mm}{*4}{*2.3}[0mm]
\newcounter{article}
\renewcommand\thearticle{\Roman{article}}

\titlecontents{article}
[1.5em]
{\bfseries}
{\contentslabel{2.3em}}
{\hspace*{-2.3em}}
{\titlerule*[1pc]{.}\contentspage}

%\makeatletter
%\renewcommand\section{\@startsection
%{section}{1}{0mm}%
%{-\baselineskip}%
%{-0.5\baselineskip}%
%{\normalfont\normalsize\bfseries}}%
%\makeatother
\makeatletter
\@addtoreset{section}{article}
\makeatother
\titleformat{\section}[hang]{\normalfont\scshape}
{Bylaw \thesection.}{0.5em}{}[\vspace{-12pt}] % hang is the best shaped

\renewcommand{\thesection}{\arabic{section}} 
\renewcommand{\theenumi}{\alph{enumi}}
\renewcommand{\theenumii}{\roman{enumii}}
