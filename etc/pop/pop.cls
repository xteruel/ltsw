\LoadClass[11pt, a4paper, twoside]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{etc/pop/pop}[2015/11/11 POP Project class]

\usepackage{hyperref}
\usepackage{xcolor}
\hypersetup{
    colorlinks,
    linkcolor={black!50!black},
    citecolor={blue!50!black},
    urlcolor={blue!80!black}
}

\RequirePackage{color}
\RequirePackage{colortbl}
\RequirePackage{fancyhdr}
\RequirePackage{fullpage}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage[small]{titlesec}
\RequirePackage{xspace}
\RequirePackage{hyphenat}

% Title commands
\renewcommand{\title}[1]{\def\@title{#1}}
\newcommand{\devnum}[1]{\def\@devnum{#1}}
\newcommand{\version}[1]{\def\@version{#1}}
\newcommand{\deadline}[1]{\def\@deadline{#1}}
\newcommand{\level}[1]{\def\@level{#1}}
\newcommand{\nature}[1]{\def\@nature{#1}}
\newcommand{\authors}[1]{\def\@authors{#1}}
\newcommand{\contributors}[1]{\def\@contributors{#1}}
\newcommand{\reviewers}[1]{\def\@reviewers{#1}}
\newcommand{\keywords}[1]{\def\@keywords{#1}}

\renewcommand\maketitle{
    \thispagestyle{empty}
    \begin{center}
    \begin{figure}[h]
    \centering
    \hspace{1cm}\includegraphics[width=12cm]{./etc/pop/logo-pop.png}
    \end{figure}
    \end{center}

    \vspace{1cm}

    \begin{center}
    \Large\bf\color[rgb]{0.44, 0.71, 0.04}
    \textsf{D\@devnum -- \@title} \\
    \textsf{Version \@version}
    \end{center}

    \vspace{2cm}

    \begin{flushleft}
    \Large\bf\color[rgb]{0.44, 0.71, 0.04}
    \textsf{Document Information}
    \end{flushleft}

    \begin{table}[h]
    \begin{center}
    \begin{tabular}{|l|p{0.7\textwidth}|}
    \hline
    \color[rgb]{0.14, 0.25, 0.38}Contract Number & 824080 \\ \hline
    \color[rgb]{0.14, 0.25, 0.38}Project Website & \url{www.pop-coe.eu} \\ \hline
    \color[rgb]{0.14, 0.25, 0.38}Contractual Deadline & M\@deadline \\ \hline
    \color[rgb]{0.14, 0.25, 0.38}Dissemination Level & \@level \\ \hline
    \color[rgb]{0.14, 0.25, 0.38}Nature & \@nature \\ \hline
    \color[rgb]{0.14, 0.25, 0.38}Authors & \@authors \\ \hline
    \color[rgb]{0.14, 0.25, 0.38}Contributors & \@contributors \\ \hline
    \color[rgb]{0.14, 0.25, 0.38}Reviewers & \@reviewers \\ \hline
    \color[rgb]{0.14, 0.25, 0.38}Keywords & \@keywords \\ \hline
    \end{tabular}
    \end{center}
    \end{table}


    {\footnotesize
    \noindent\textbf{Notices:}
    The research leading to these results has received funding from the
    European Union's Horizon 2020 research and innovation programme under grant
    agreement n$^o$824080. } \\ \\

    {\footnotesize\noindent\copyright 2019 POP Consortium Partners. All rights reserved.}
}

\newcommand{\frontmatter}{
    \newpage
    \vspace*{-0.9cm}
    \tableofcontents
    \newpage
}

\renewenvironment{abstract}{
    \newpage
    \section*{Executive Summary}
    \addcontentsline{toc}{section}{Executive Summary}
    }{
    \vfill
    \newpage
    }

\newenvironment{changelog}{
    \newpage
    \begin{flushleft}
    \LARGE\bf\color[rgb]{0.14, 0.25, 0.38}
    \vspace*{0.5cm}
    \textsf{Change Log}
    \end{flushleft}

    \begin{center}
    \begin{tabular}{|p{0.1\textwidth}|p{0.2\textwidth}|p{0.6\textwidth}|}
    \hline
    \rule[-0.3cm]{0mm}{0.8cm} \centering \bf \textsf{Version} & \centering \bf \textsf{Author} & \centering \bf \textsf{Description of Change} \tabularnewline
    } {
    \hline
    \end{tabular}
    \end{center}
    \newpage
    }

\newcommand{\change}[3]{
    \hline
    \rule[-0.3cm]{0mm}{0.8cm} \centering #1 & #2 & #3 \\ 
}

\titleformat{\section}[hang]{\huge\bfseries\sffamily\color[rgb]{0.14, 0.25, 0.38}}{\thesection}{1em}{}
\titleformat{\subsection}[hang]{\Large\bfseries}{\thesubsection}{1em}{}

\newcommand{\fixme}[1]{\textcolor{red}{\textit{FIXME $->$ #1 $<-$}}}
\newcommand{\todo}[1]{\textcolor{red}{\textbf{TODO: #1}}}
\newcommand{\eg}{e.g.,\xspace}
\newcommand{\ie}{i.e.,\xspace}
\newcommand{\etc}{etc.\@\xspace}
\newcommand{\etal}{et.\ al.\xspace}
\newcommand{\vs}{vs.\xspace}
\newcommand{\IO}{I\slash O\xspace}

\newcommand{\slogo}{\includegraphics[width=2cm]{./etc/pop/logo-pop.png}}

\AtBeginDocument{
    \headheight=20pt
    \pagestyle{fancy}
    \fancyhf{}
    \headsep 2ex
    \footskip 4ex
    \rhead[\slogo]{\slogo}
    \lhead[\scriptsize{D\@devnum} - {\@title}{\\Version \@version}]{\scriptsize{D\@devnum} - {\@title}{\\Version \@version}}
    \cfoot{\thepage}

    \renewcommand{\sectionmark}[1]{\markboth{#1}{}}
    \renewcommand{\subsectionmark}[1]{\markright{#1}{}}
}
