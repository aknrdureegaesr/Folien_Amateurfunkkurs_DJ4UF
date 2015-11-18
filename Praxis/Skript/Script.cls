%%****************************************
%%*                                      *
%%* TU Berlin                            *
%%* MDT                                  *
%%*                                      *
%%****************************************
%% LaTeX-class for writing scripts
%%**************************************************************
%% Version: filename    rev date       time     last modified by
%%     $Id: MDT-Script.cls 107 2008-12-09 06:57:06Z dietmarw $
%%**************************************************************
%% (The "Id" tag above is updated automatically if
%% 	svn propset svn:keywords "Id" <filename>
%% was set.)
%%*******************************************
% -------------------------------Identification------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MDT-Script}[2007/01/31 Vorlage fuer TU Berlin MDT Skripte]

% Workaround for MiKTeX 2.5 \ifpdfoutput handling
\let\doifdefined\relax

% --------------------------- declaration of options ------------------------------------
% nologo-option
\newif\if@nologo
\@nologofalse
\DeclareOption{nologo} {%
  \@nologotrue%
  \renewcommand{\MDTlogo}{}%
  \renewcommand{\TUlogo}{}%
}%

% english-option Umschaltung auf Englisch (genauer britisches Englisch)
\newif\if@english
\@englishfalse
\DeclareOption{english} {%
  \@englishtrue%
  \PassOptionsToClass{british}{scrbook}
}%

% onlytoc-option
\newif\if@onlytoc
\@onlytocfalse
\DeclareOption{onlytoc}{\@onlytoctrue}

\newcommand{\extraBookmark}[2]{\ifpdfoutput{\pdfbookmark[1]{#1}{#2}}{}}
\newif\if@print
\@printfalse
\DeclareOption{print}{%
    \@printtrue%
%	\renewcommand{\extraBookmark}[2]{}% deactivated since we have references to some bookmarks!
}%

% index-option
\newcommand{\RequireIndex}{}
\newif\if@index
\@indexfalse
\DeclareOption{index} {%
  \@nologotrue%
  \renewcommand{\RequireIndex}{\RequirePackage{makeidx}\makeindex}%
}%

% Alle uebrigen Optionen werden an scrbook weitergereicht
\DeclareOption*{%
    \typeout{Option \CurrentOption\space is passed to package scrbook!}
    \PassOptionsToClass{\CurrentOption}{scrbook}
}%

% --------------------------- execution of options ------------------------------------
\ProcessOptions\relax
\LoadClass[halfparskip,DIV13,BCOR2cm]{scrbook}

% ----------------------------- package loading ---------------------------------------

%Behandlung der pdf-Option. Dies wird eingefuehrt, um Uebersetzungszeit
%zu sparen, wenn nur ein .ps erzeugt werden soll.
\ifpdfoutput{
    \RequirePackage[pdftex]{graphicx}
}{%\else
    \RequirePackage[dvips]{graphicx}
}%\fi
\graphicspath{{logos/}{Bilder/}}
\newcommand{\linkeslogo}{\includegraphics[height=2cm]{DK0TU}}
\newcommand{\TUlogo}{\includegraphics[height=2cm]{TU-logo}}
\ifpdfoutput{
    \if@print
        \RequirePackage[pdftex,plainpages=false,pdfpagelabels,pdfborder={0 0 0},hyperfootnotes=false]{hyperref}
        \renewcommand{\TUlogo}{\includegraphics[height=2cm]{TU-logo_sw}}
    \else
        \RequirePackage[pdftex,colorlinks=true,linkcolor=blue,urlcolor=blue,plainpages=false,pdfpagelabels,hyperfootnotes=false]{hyperref}
    \fi
}{%\else
    \RequirePackage[dvips]{hyperref}
        \if@print\renewcommand{\TUlogo}{\includegraphics[height=2cm]{TU-logo_sw}}\else\fi
}%\fi
\ifpdfoutput{}{%
    \IfFileExists{Bilder/DK0TU}%
        {}%
        {\renewcommand{\linkeslogo}{\fbox{\parbox[b][2cm][c]{2cm}{Logo\\}}}}%
    \IfFileExists{Bilder/TU-logo}%
        {}%
        {\renewcommand{\TUlogo}{\fbox{\parbox[b][2cm][c]{2cm}{Logo\\TU Berlin}}}}%
}%
\RequirePackage{lmodern}
\RequirePackage[T1]{fontenc}
\RequirePackage{mathptmx}
\RequirePackage[utf8]{inputenc}
\RequirePackage{ifthen}
\RequirePackage{url}
\RequirePackage[automark]{scrpage2}
\RequirePackage[\if@english british\else ngerman\fi]{babel}
%\RequirePackage{lastpage}
%\RequirePackage[ngerman,num]{isodate}
\RequirePackage{longtable}
\RequirePackage{caption} % fuer mehr Caption-Optionen
\RequirePackage{setspace} % fuer Zeilenabstandsanpassung
%Umbruch auch an Unterstrichen
\usepackage{amssymb}
%Literaturverzeichnis
\usepackage{natbib}
%für Bilder im Text
\usepackage{wrapfig}
% Bilder mit [H] an eine feste position setzen
\usepackage{float}
\usepackage{colortbl} %% 
\usepackage{tikz}
%\lccode`\_=`\_
\RequireIndex

\addtolength{\voffset}{0.7cm}
\usepackage{color}
\usepackage{listings}
\usepackage{subfigure}

\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
 
\lstset{ %
  language=Scilab,                % the language of the code
  basicstyle=\footnotesize,           % the size of the fonts that are used for the code
  numbers=left,                   % where to put the line-numbers
  numberstyle=\tiny\color{gray},  % the style that is used for the line-numbers
  stepnumber=1,                   % the step between two line-numbers. If it's 1, each line 
                                  % will be numbered
  numbersep=5pt,                  % how far the line-numbers are from the code
  backgroundcolor=\color{white},      % choose the background color. You must add \usepackage{color}
  showspaces=false,               % show spaces adding particular underscores
  showstringspaces=false,         % underline spaces within strings
  showtabs=false,                 % show tabs within strings adding particular underscores
  frame=single,                   % adds a frame around the code
  rulecolor=\color{black},        % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
  tabsize=2,                      % sets default tabsize to 2 spaces
  captionpos=t,                   % sets the caption-position to top
  breaklines=true,                % sets automatic line breaking
  breakatwhitespace=false,        % sets if automatic breaks should only happen at whitespace
  title=\lstname,                   % show the filename of files included with \lstinputlisting;
                                  % also try caption instead of title
  keywordstyle=\color{blue},          % keyword style
  commentstyle=\color{dkgreen},       % comment style
  stringstyle=\color{mauve},         % string literal style
  escapeinside={\%*}{*)},            % if you want to add LaTeX within your code
  morekeywords={*,...},              % if you want to add more keywords to the set
  deletekeywords={...}              % if you want to delete keywords from the given language
}

%Redefinitionen---------------------------------
%Literaturverzeichnis statt nur Literatur
%\renewcommand{\refname}{Literaturverzeichnis}
\if@english \else \AtBeginDocument{\renewcommand*\figurename{Bild}}\fi

%Umgebungen------------------------------------
\newcommand{\includeBild}[3]%
{\ifthenelse%
        {\equal{#1}{}}%
        {\mbox{\parbox[b][5cm][c]{0.7\textwidth}{\begin{center}no picture\end{center}}}}%
        {\ifpdfoutput%
            {\mbox{\includegraphics[#3]{#1}}}%
            {\IfFileExists%
                {Bilder/#1.eps}%
                {\mbox{\includegraphics[#3]{#1}}}%
                {\fbox{\parbox[b][5cm][c]{0.7\textwidth}{%
                    \begin{center}%
                        \path{#1.eps} nicht gefunden,\bigskip\\
                        {\footnotesize\path{#1.{pdf,png,jpg}}\\
                        (\ldots wird nicht in \jobname.dvi angezeigt!)}%
                    \end{center}%
                        }%
                }%
            }%
        }%
}%
    \captionsetup{indent=0pt,width=.9\textwidth}%
    \caption{#2}%
          \ifthenelse%
        {\equal{#1}{}}%
        {}%
        {\label{fig:#1}}%
}

\newcommand{\bild}[4][htb]{%
\begin{figure}[#1]%
    \centering%
    \includeBild{#2}{#3}{#4}
\end{figure}%
}

\newcommand{\bildhier}[3]{%
\begin{figure}[!ht]%
    \centering%
    \includeBild{#1}{#2}{#3}
\end{figure}%
}

\newcommand{\doppelbild}[7][htb]{%
\begin{figure}[#1]%
\begin{minipage}[t]{.45\textwidth}%
\centering%
  \includeBild{#2}{#3}{#4}%
\end{minipage}%
~\hfill~%
\begin{minipage}[t]{.45\textwidth}%
  \includeBild{#5}{#6}{#7}%
\end{minipage}%
\end{figure}%
}



%\newcommand{\maxHight}{0.925\textheight}
%\newcommand{\maxWidth}{0.5\textheight}


%\newcommand{\var}[1]{'\texttt{#1}'}
%\newcommand{\myitem}[1]{\item \textbf{#1}}


% Zähler für Zeilennnummerierungen in Tablellen
\newcounter{internal_tbl_cnt}[table]
\newcommand{\tblrow}{\refstepcounter{internal_tbl_cnt}\arabic{internal_tbl_cnt}.}

% [#1] Autor
% #2 Titel
% #3 Untertitel
% #4 Jahr
\newcommand{\titelseite}[4][]{%
% pdf document settings:
      \hypersetup{%
        pdftitle = {#2},%
        pdfsubject = {#3},%
        pdfauthor = {#1},%
        pdfcreator = {\LaTeX\ with package \flqq hyperref\frqq}%
    }%
    \extraBookmark{Titelseite}{titleanc}%
    \thispagestyle{empty}
    \begin{titlepage}
        \linkeslogo\hfill\TUlogo\\
    \vfill%
    \begin{center}%
      %Titel und Untertitel%
    \begin{spacing}{2}
      {\textbf{{\Huge #2}\ifthenelse{\equal{#3}{}}{}{\\{\vspace*{3ex}\Large #3}}}}%
          \\[6ex]
    \end{spacing}%
            %{\Large #1}\\
            \includegraphics[scale=0.35]{Bilder/Helios_Voltmeter}
        \vfill
            {\LARGE #4}
                \vfill
                    {%\Large%
                    \if@english
                        Technische Universität Berlin\\%
                        School of Electrical Engineering and Computer Science\\%
                        Department of Energy and Automation Technology\\%
                        Chair of Electronic Measurement and Diagnostic Technology%
                    \else
                        \textbf{Technische Universität Berlin\\%
                        Fakultät IV -- Elektrotechnik und Informatik\\%
                        Institut für Hochfrequenz- und Halbleiter-Systemtechnologien\\%
                        Fachgebiet Hochfrequenztechnik}\\%
                     \fi%
                    }%
        \end{center}%

        \end{titlepage}
    %\newpage
    \makeHead{#4}
}


\newcommand{\inhaltsverzeichnis}
{%
    \tableofcontents%
    \extraBookmark{\if@english Contents\else Inhaltsverzeichnis\fi}{tocanc}%
    \if@onlytoc\clearmydoublepage\else\fi%
}

\newcommand{\makeHead}[1]
{%
    \clearscrheadfoot%
    %\renewcommand{\headfont}{\normalfont\sffamily\bfseries}%
    \lehead{\leftmark}%
        \rohead{\rightmark}%
        \ifoot{#1}
    \ofoot{\pagemark}%
    %\setheadsepline{.4pt}%
    %\automark{subsection}%
    \pagestyle{scrheadings}%
    \deftripstyle{myChapterStyle}{}{}{}{#1}{}{\pagemark}
    \renewcommand*{\chapterpagestyle}{myChapterStyle}
}

\newcommand{\clearmydoublepage}{\newpage{\pagestyle{myChapterStyle}\cleardoublepage}}

\newlength{\FormelTabellenWeite}
\newenvironment{formelzeichen}[1][0.1]
{%
    \@openrightfalse%
    \setlength{\FormelTabellenWeite}{\textwidth}%
    \addtolength{\FormelTabellenWeite}{-#1\textwidth}%
    \addchap*{\if@english Symbols\else Formelzeichen\fi}%
    \extraBookmark{\if@english Symbols\else Formelzeichen\fi}{formulaanc}%
    \begin{longtable}{p{#1\textwidth}p{\FormelTabellenWeite}}
}{%
    \end{longtable}%
    \@openrighttrue%
    \clearmydoublepage
}%

\newenvironment{abkuerzungen}[1][0.2]
{%
    \@openrightfalse%
    \setlength{\FormelTabellenWeite}{\textwidth}%
    \addtolength{\FormelTabellenWeite}{-#1\textwidth}%
    \addchap*{\if@english Glossary\else Glossar\fi}%
    \extraBookmark{\if@english Glossary\else Glossar\fi}{abranc}%
    \begin{longtable}{p{#1\textwidth}p{\FormelTabellenWeite}}
}{%
    \end{longtable}%
    \@openrighttrue%
    \clearmydoublepage
}%

\newenvironment{literaturverzeichnis}
{\begin{thebibliography}{99}%
    \addcontentsline{toc}{chapter}{\if@english Bibliography\else Literatur\fi}%
%	\extraBookmark{\if@english Bibliography\else Literatur\fi}{litanc}
}
{\end{thebibliography}}

\newcommand{\indexverzeichnis}{%
    %\ifthenelse{\equal{\RequireIndex}{}}
        %{Fehler erzeugen, oder nix}
        %{untenstehende Befehle}
    \cleardoublepage%
    \phantomsection%
    \addcontentsline{toc}{chapter}{Index}%
    \printindex%
}

% Abstand der Paragraphen
\setlength{\parindent}{0pt}
\setlength{\parskip}{1.5mm }

%erste Version (abgeleitet von wise/ TU Dresden).
%
