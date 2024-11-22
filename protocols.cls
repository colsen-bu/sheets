\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{protocol}[2024/11/14 Laboratory Protocol Class]
\LoadClass[11pt,a4paper]{article}

% Required packages
\RequirePackage[utf8]{inputenc}
\RequirePackage{xcolor}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{tcolorbox}
\RequirePackage{hyperref}
\RequirePackage[most]{tcolorbox}

% Color definitions inspired by the blue theme
\definecolor{protocolpurple}{RGB}{89, 41, 166}
\definecolor{protocolblue}{RGB}{0,157,220}
\definecolor{darkblue}{RGB}{0,71,133}
\definecolor{lightblue}{RGB}{232,246,255}

% Page geometry
\geometry{
    top=2.5cm,
    bottom=2.5cm,
    left=2.5cm,
    right=2.5cm,
    headheight=15pt
}

% Header and footer style
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{0.5pt}
\fancyhead[L]{\textcolor{protocolblue}{\rightmark}}
\fancyhead[R]{\textcolor{protocolblue}{\thepage}}
\fancyfoot[C]{\textcolor{darkblue}{\small Protocol ID: \@title}}

% Title formatting
\renewcommand{\maketitle}{
    \begin{center}
        \vspace*{1cm}
        \begin{tcolorbox}[
            colback=lightblue,
            colframe=protocolblue,
            arc=5mm,
            boxrule=1pt
        ]
        \centering
        \LARGE\textcolor{darkblue}{\textbf{\@title}}
        
        \vspace{0.5cm}
        \large\textcolor{darkblue}{\@author}
        
        \vspace{0.25cm}
        \normalsize\textcolor{darkblue}{\@date}
        \end{tcolorbox}
    \end{center}
}

% Section styling
\titleformat{\section}
    {\Large\bfseries\color{protocolblue}}
    {\thesection.}{1em}{}
\titleformat{\subsection}
    {\large\bfseries\color{darkblue}}
    {\thesubsection.}{1em}{}

% Custom environments
\newenvironment{materials}{
    \begin{tcolorbox}[
        title=Materials Required,
        colback=white,
        colframe=protocolblue,
        colbacktitle=protocolblue,
        coltitle=white,
        arc=0mm
    ]
    \begin{itemize}[leftmargin=*]
}{
    \end{itemize}
    \end{tcolorbox}
}

\newenvironment{safety}{
    \begin{tcolorbox}[
        title=Safety Considerations,
        colback=lightblue,
        colframe=darkblue,
        colbacktitle=darkblue,
        coltitle=white,
        arc=0mm
    ]
}{
    \end{tcolorbox}
}

\newenvironment{procedure}{
    \begin{enumerate}[leftmargin=*,label=\textcolor{protocolblue}{\arabic*.}]
}{
    \end{enumerate}
}

\newenvironment{days}[1][Day]{
    \begin{tcolorbox}[
        colback=white,
        colframe=protocolpurple,
        colbacktitle=protocolpurple,
        coltitle=white,
        title={\textbf{#1}},
        fonttitle=\large,
        sharp corners,
        left=10pt,
        right=10pt,
        top=20pt,
        bottom=10pt,
        overlay={
            \node[anchor=west,xshift=10pt,yshift=10pt] 
            at (frame.north west) 
            {\color{white}\large\textbf{#1}};
        }
    ]
    \begin{itemize}[leftmargin=*]
}{
    \end{itemize}

    \end{tcolorbox}
}

% Hyperref setup
\hypersetup{
    colorlinks=true,
    linkcolor=protocolblue,
    filecolor=darkblue,
    urlcolor=protocolblue,
    citecolor=darkblue
}