% HMC Math dept HW class file
% v0.04 by Eric J. Malm, 10 Mar 2005
% v0.041 Modified by Calvin Leung, 8 Nov 2013.
%%% IDENTIFICATION --------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}[1995/01/01]
\ProvidesClass{hmcpset}
    [2005/03/10 v0.04 HMC Math Dept problem set class]

%%% INITIAL CODE ----------------------------------------------------------

% test whether the document is being compiled with PDFTeX
\RequirePackage{ifpdf}
\usepackage{tikz}
\usetikzlibrary{svg.path}
\newcommand{\Dolphin}[1][]{%
    \tikz \fill [scale=1ex/500,yscale=-1] svg "M 240,792 C 236.7964,782.29301 227.32595,769.18429 218.95458,762.8695 C 210.58318,756.55478 193.07658,741.91749 180.05096,730.34232 L 156.36806,709.29648 L 141.17601,721.53827 C 132.82037,728.27131 116.86485,736.20204 105.71929,739.16215 C 94.57372,742.12228 76.825609,750.15889 66.279001,757.02126 C 42.749986,772.33104 35.286663,768.91329 39.793018,744.89235 C 49.786747,691.62137 86.56609,637.47901 123.0161,622.38091 C 133.32885,618.10921 138.97291,610.6592 143.54681,595.28094 C 156.31386,552.35575 185.13223,485.10659 210.50659,439.02657 C 285.62548,302.61033 377.12604,221.91941 502.90248,181.17368 L 545.4538,167.38902 L 523.9559,153.16241 C 512.13201,145.33777 493.01385,137.67119 481.47106,136.12559 C 441.72739,130.80384 454.06939,100.38528 495.97229,100.38528 C 525.1625,100.38528 588.32595,117.28333 612.47161,131.55225 C 631.20187,142.62093 638.05903,143.46536 711.12662,143.70143 C 826.20118,144.07318 875.39668,159.99674 936.18511,216.548 C 957.70508,236.568 977.32088,249.47994 997.76359,257.08148 C 1037.1384,271.7229 1050.5601,280.83354 1050.5601,292.92001 C 1050.5601,304.96929 1043.1872,306.72156 979.27795,309.86153 C 937.41314,311.91844 922.54209,315.36478 870.35529,335.10414 C 837.1142,347.67736 806.21965,359.09969 801.70072,360.48707 C 797.18181,361.87448 788.5903,373.11962 782.60856,385.47631 C 769.33352,412.89887 732.8923,450.74636 708.71893,462.21739 C 687.47223,472.29962 645.39097,477.58347 636.22902,471.31951 C 626.59388,464.73198 633.77941,451.7414 651.00501,444.60631 C 668.76327,437.2506 688.54805,412.99772 693.73219,392.22992 L 697.39133,377.57125 L 659.92998,381.16743 C 639.32621,383.14537 594.48504,391.40641 560.28293,399.5254 C 408.28252,435.60753 289.59011,503.28314 223.04114,591.81285 L 199.83212,622.68772 L 222.77838,652.2359 C 249.05732,686.07569 265.30365,731.48301 265.30365,771.09095 C 265.30365,810.05728 250.10447,822.61677 240,792 M 885.93164,242.20228 C 889.77822,235.9783 875.83562,229.90601 868.33788,234.5399 C 865.37262,236.37259 864.25805,239.99423 865.8612,242.58811 C 869.72788,248.8446 881.97191,248.60916 885.93164,242.20228 z";%
}

%%% DECLARATION OF OPTIONS ------------------------------------------------
%% Header Options: header*, no header
\newif\ifhmcpset@header

% no header block in upper right hand corner
\DeclareOption{noheader}{%
    \hmcpset@headerfalse%
}

% do print header block
\DeclareOption{header}{%
    \hmcpset@headertrue%
}

%% Font Options: palatino*, cm
\newif\ifhmcpset@palatino

% use palatino fonts
\DeclareOption{palatino}{%
    \hmcpset@palatinotrue%
}

% use compuer modern fonts
\DeclareOption{cm}{%
    \hmcpset@palatinofalse%
}

%% Problem Boxing: boxed*, unboxed
\newif\ifhmcpset@boxed

% box problem statements
\DeclareOption{boxed}{%
    \hmcpset@boxedtrue%
}
   
% don't box problem statements
\DeclareOption{unboxed}{%
    \hmcpset@boxedfalse%
}
   
% pass remaining options to article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

%%% EXECUTION OF OPTIONS --------------------------------------------------
%% default to:
% including header, 
% loading mathpazo package for palatino fonts,
% boxing problem statements
\ExecuteOptions{header,palatino,boxed}

\ProcessOptions

%%% PACKAGE LOADING -------------------------------------------------------
%% based on std article class
\LoadClass{article}


%% Font loading: Palatino text/math fonts
\ifhmcpset@palatino
    \RequirePackage{mathpazo}
\fi

%% AMSLaTeX math environments and symbols
\RequirePackage{amsmath}
\RequirePackage{amssymb}

%% boxed minipage for boxed problem environment
\RequirePackage{boxedminipage}

%%% MAIN CODE -------------------------------------------------------------
%% Tell dvips/pdflatex correct page size
\ifpdf
  \AtBeginDocument{%
    \setlength{\pdfpageheight}{\paperheight}%
    \setlength{\pdfpagewidth}{\paperwidth}%
  }
\else
  \AtBeginDvi{\special{papersize=\the\paperwidth,\the\paperheight}}%
\fi


%% Problem set environments
% boxed problem environment
\newenvironment{problem}[1][]{%
  \ifhmcpset@boxed\def\hmcpset@probenv{boxed}\else\def\hmcpset@probenv{}\fi%
  \bigskip% put space before problem statement box %
  \noindent\begin{\hmcpset@probenv minipage}{\columnwidth}%
  \def\@tempa{#1}%
  \ifx\@tempa\empty\else%
    \hmcpset@probformat{#1}\hspace{0.5em}%
  \fi%
}{%
  \end{\hmcpset@probenv minipage}%
}
% display optional argument to problem in bold
\let\hmcpset@probformat\textbf

% solution environment with endmark and optional argument
\newenvironment{solution}[1][]{%
  \begin{trivlist}%
  \def\@tempa{#1}%
  \ifx\@tempa\empty%
    \item[]%
  \else%
    \item[\hskip\labelsep\relax #1]%
  \fi%
}{%
  \mbox{}\penalty10000\hfill\hmcpset@endmark%
  \end{trivlist}%
}
%  \mbox{}\penalty10000\hfill\hmcpset@endmark%
% default endmark was small black square
% Endmark is now a dolphin (20 Oct 1013).
% Figured out different font sizes and non-default margins (8 Nov 2013).
\def\hmcpset@endmark{\Dolphin}

%% Problem set list, for top of document
\newcommand{\problemlist}[1]{\begin{center}\large\sffamily{#1}\end{center}}

%% commands for upper-right id header block
\newcommand{\headerblock}{%
\begin{flushright}
\mbox{\hmcpset@name}\protect\\
\mbox{\hmcpset@class}\protect\\
\mbox{\hmcpset@assignment}\protect\\
\hmcpset@duedate%
\ifx\hmcpset@extraline\empty\else\protect\\\hmcpset@extraline\fi%
\end{flushright}%
}

% put id header block at start of document
\ifhmcpset@header\AtBeginDocument{\headerblock}\fi

% internal state for headerblock
\def\hmcpset@name{}
\def\hmcpset@class{}
\def\hmcpset@assignment{}
\def\hmcpset@duedate{}
\def\hmcpset@extraline{}

% commands to set header block info
\newcommand{\name}[1]{\def\hmcpset@name{#1}}
\newcommand{\class}[1]{\def\hmcpset@class{#1}}
\newcommand{\assignment}[1]{\def\hmcpset@assignment{#1}}
\newcommand{\duedate}[1]{\def\hmcpset@duedate{#1}}
\newcommand{\extraline}[1]{\def\hmcpset@extraline{#1}}
