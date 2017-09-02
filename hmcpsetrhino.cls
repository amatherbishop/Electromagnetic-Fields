% HMC Math dept HW class file
% v0.04 by Eric J. Malm, 10 Mar 2005
% v0.041 Modified by Calvin Leung, 8 Nov 2013.
%v0.042 Modified by Andrew Bishop 19 Sep 2016.
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
    \tikz \fill [scale=-1ex/75,yscale=1] svg "m 1004.7638,422.10818 c -4.7511,-0.5896 -4.1283,-2.73165 2.677,-9.20717 3.2599,-3.10192 6.2014,-6.749 6.5367,-8.10464 0.3353,-1.35563 -0.077,-4.71479 -0.9162,-7.46479 -0.8393,-2.75 -1.5307,-5.96372 -1.5367,-7.14159 -0.01,-1.47038 -0.8295,-2.34707 -2.623,-2.7972 -1.4367,-0.36059 -5.2018,-3.37709 -8.3669,-6.70334 l -5.75488,-6.04774 -4.88303,3.7485 c -8.84235,6.78793 -14.65115,8.88357 -25.72613,9.2812 -8.60064,0.30879 -10.76637,0.0256 -17.15737,-2.24321 -4.02284,-1.42814 -7.51632,-2.59662 -7.76329,-2.59662 -1.46365,0 -1.61076,14.7294 -0.20754,20.77996 1.45974,6.29426 1.44567,6.76757 -0.23876,8.03043 -1.09051,0.81757 -3.25525,1.15399 -5.53993,0.86093 -2.69894,-0.34619 -3.75,-0.10727 -3.75,0.85241 0,4.04932 -5.93585,5.26242 -18.75,3.83191 -6.72355,-0.75059 -7.03394,-3.0528 -1,-7.41706 6.12006,-4.42656 6.99832,-6.54542 5.34883,-12.90438 -0.85991,-3.31505 -2.60567,-6.51872 -4.82963,-8.86294 -1.91561,-2.01919 -4.94064,-5.84029 -6.7223,-8.49132 -2.16729,-3.22483 -3.73103,-4.63139 -4.72493,-4.25 -0.81705,0.31353 -1.66249,0.57006 -1.87876,0.57006 -0.21626,0 -0.10996,1.41623 0.23622,3.14717 0.6137,3.06846 0.5568,3.12793 -2.275,2.37802 -7.39352,-1.95792 -7.71271,-1.83368 -13.4676,5.24212 -11.43782,14.06315 -23.26608,23.23269 -29.96905,23.23269 -1.37693,0 -4.1591,-1.125 -6.18259,-2.5 -2.0235,-1.375 -4.32668,-2.5 -5.1182,-2.5 -2.10548,0 -4.66699,-6.13399 -4.66699,-11.17596 0,-3.90258 -0.49462,-4.83916 -4.59183,-8.69479 -6.1086,-5.74841 -8.37104,-10.9389 -8.33811,-19.12925 l 0.0261,-6.5 2.85831,5.5 c 3.43944,6.61823 7.09597,10.14047 12.82501,12.35397 3.99725,1.5444 4.45024,1.54159 6.86797,-0.0426 3.86803,-2.53443 6.16493,-8.81516 5.88104,-16.08133 -0.23684,-6.06172 -0.3056,-6.19594 -5.13429,-10.02092 -2.69183,-2.1323 -5.56571,-4.69157 -6.3864,-5.68728 -1.37095,-1.66332 -1.31827,-1.75518 0.6486,-1.13092 7.66153,2.43168 15.90421,4.38058 16.63002,3.932 0.47006,-0.29051 0.55585,-2.29683 0.19065,-4.45848 -1.17252,-6.94006 4.35504,-11.7976 7.81071,-6.86394 1.32899,1.89739 1.47943,1.91028 2.91792,0.25 0.83417,-0.9628 2.68141,-3.77554 4.10496,-6.25054 1.42355,-2.475 7.67351,-9.69593 13.88879,-16.0465 10.58504,-10.81547 11.86303,-11.78673 20.18532,-15.34081 6.44933,-2.75422 9.60168,-3.60586 11.5,-3.10685 1.43835,0.37811 10.80626,1.12548 20.81757,1.66085 16.32318,0.87289 19.73308,0.75967 33.02919,-1.09665 8.15476,-1.13852 17.08619,-2.07004 19.84763,-2.07004 2.76144,0 5.49493,-0.47413 6.07442,-1.05362 0.73817,-0.73817 2.07051,-0.60626 4.45005,0.44058 1.868,0.82181 5.9753,2.25485 9.1273,3.18452 5.6905,1.6784 21.8853,11.10123 29.2408,17.01365 2.111,1.69682 3.9022,3.95473 3.9805,5.01758 0.078,1.06285 0.3995,2.37454 0.7137,2.91487 0.3143,0.54033 0.8849,2.78242 1.2681,4.98242 0.3832,2.2 1.5542,6.81758 2.6023,10.2613 1.432,4.70527 1.6583,6.91159 0.9107,8.87805 -0.7663,2.01529 -0.5196,3.88734 1.0732,8.14447 1.4711,3.93189 1.7588,5.83711 0.9965,6.59946 -1.6113,1.61127 -4.3968,-0.54758 -5.1485,-3.99022 -0.7951,-3.64155 -0.9536,-3.19879 -1.2915,3.60694 -0.374,7.53108 -2.4114,13.61143 -5.7631,17.19952 -3.2202,3.44715 -3.4799,5.61137 -1.2023,10.01585 1.0953,2.11803 1.4479,4.58434 1.1011,7.70034 -0.447,4.01562 -1.2009,5.21346 -6.0774,9.65628 -5.1938,4.73185 -5.5285,5.30981 -4.9916,8.61815 0.3988,2.4579 0.046,4.35383 -1.149,6.17801 -1.658,2.53038 -2.0574,2.62568 -10.3595,2.47181 -4.7492,-0.088 -10.0975,-0.34153 -11.885,-0.56336 z";%
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
