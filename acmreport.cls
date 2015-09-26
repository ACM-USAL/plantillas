\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{acmreport}[2015/09/25 ACM Report Class]

\def\baseclass{article}

% All options are passed to the base class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}

\ProcessOptions\relax % Required to process the options
\LoadClass{\baseclass}

% Common features of all documents
\RequirePackage{acmusal}

% Basic packages
\RequirePackage{float}
\RequirePackage{hyphenat} % Used to avoid hyphenation in certain parts of the document

\RequirePackage[pdfpagemode={UseOutlines},
                     bookmarks=true,
                     bookmarksopen=true,
                     bookmarksopenlevel=0,
                     bookmarksnumbered=true,
                     hypertexnames=false,
                     colorlinks=true,
                     linkcolor={acmblue},
                     citecolor={acmblue},
                     urlcolor={acmblue},
                     anchorcolor={acmblue},
                     filecolor={acmblue},
                     pdfstartview={FitV},
                     unicode,
                     breaklinks=true]{hyperref}


%% Pages 
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}


\RequirePackage{wallpaper}


% Sections tweaking
\RequirePackage[explicit]{titlesec}%
\titleformat{\section}
    {\Large\color{acmblue}}
    {\thesection}
    {1em}
    {#1}

\titleformat{\subsection}
{\large\color{acmblue}}
{\thesubsection}
{1em}
{#1}

\titleformat{\subsubsection}
{\large\color{acmblue}}
{\thesubsubsection}
{1em}
{#1}

% Cover

\AtBeginDocument{
     \thispagestyle{empty}
     \begin{titlepage}
            \ThisCenterWallPaper{1}{img/portada}
            \vspace*{-5cm}
            {\hspace{7cm}\parbox{80mm}{\color{acmwhite} \nohyphens {\@date}}}\\[15cm]
            {\hspace{0mm}\parbox{80mm}{\color{acmwhite}\LARGE \nohyphens {\MakeUppercase \@title} \\*\vspace{1mm}}}\\ 
            {\hspace{0mm}\parbox{80mm}{\color{acmwhite}\LARGE \nohyphens {\@author} \\* \vspace{5mm}}}
            
     \end{titlepage}

    %Colours of the TOC are different from those of the rest of the document
    {
        \hypersetup{linkcolor=acmorange}
        \titleformat{\section}
        {\Large\color{acmorange}}
        {\thesection}
        {1em}
        {#1}
        \tableofcontents
    }
    \clearpage
     %\mainmatter
     %\thispagestyle{empty}
     %\tableofcontents
     %\cleardoublepage
     %\pagestyle{empty}
     %\setcounter{page}{1}
     %\pagestyle{fancy}

}

% The geometry of the page is defined after the cover.
\RequirePackage[paperwidth=210mm,paperheight=297mm,top=5.4cm,left=2.5cm, right=3.0cm, bottom=4.0cm,marginparsep=0pt%, showframe% uncomment to draw a frame showing the page layout
]{geometry}
\setlength{\headsep}{3.5cm}
\geometry{a4paper}

% Auxiliar title. Useful when a cover is not desired
\renewcommand\maketitle{
    \hypersetup{pdftitle={\@title}, 
                pdfauthor={\@authornames},
                pdfproducer=XeLaTeX
                }
    \thispagestyle{empty}
    \begin{titlepage}
        \center
        \vfill
        \setlength{\parskip}{0pt}
        {\huge \@title \par}
        \bigskip
        {\center \includegraphics[width=0.3\textwidth]{img/chapterlogo} \par}
        \smallskip
        {\large\textbf{\@acmchaptername} \par}
        \smallskip
        {\large\@date \par}
        \par
        \vfil
    \end{titlepage}
    \cleardoublepage
}

% Itemize uses circles instead of dots

\renewcommand{\labelitemi}{$\circ$}
\renewcommand{\labelitemii}{$\circ$}
\renewcommand{\labelitemiii}{$\circ$}
\renewcommand{\labelitemiv}{$\circ$}

% Background for the rest of the page
\CenterWallPaper{1}{img/left-page}

% Headers and footers
\pagestyle{fancy}
\fancyhf{}

\renewcommand{\sectionmark}[1]{\markboth{#1}{}}

\lhead{\color{white} \parbox{25mm}{\nohyphens \footnotesize \leftmark}}
\rhead{\color{acmblue} \@title}
\rfoot{\color{acmblue} Página {\thepage} de \pageref{LastPage}}

\renewcommand{\footrulewidth}{0.4pt}% Line width default is 0pt
\renewcommand{\headrulewidth}{0pt}

% Header/footer bar color change
\RequirePackage{etoolbox}

\newcommand{\headrulecolor}[1]{\patchcmd{\headrule}{\hrule}{\color{#1}\hrule}{}{}}
\newcommand{\footrulecolor}[1]{\patchcmd{\footrule}{\hrule}{\color{#1}\hrule}{}{}}

%\headrulecolor{acmblue} % Uncomment to use a blue bar
\footrulecolor{acmblue}

\title{}
\date{}
\authors{}
