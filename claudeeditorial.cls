% ╔═══════════════════════════════════════════════════════════════════════════╗
% ║  claudeeditorial.cls — Claude-inspired editorial LaTeX class              ║
% ║  v1.1 · 2026-05-05 · public-domain template                               ║
% ║  Compile with XeLaTeX or LuaLaTeX (fontspec required)                      ║
% ╚═══════════════════════════════════════════════════════════════════════════╝
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{claudeeditorial}[2026/05/05 v1.1 Claude-inspired editorial template]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[11pt,a4paper]{article}

% ── Paquetes base ────────────────────────────────────────────────────────────
\RequirePackage[a4paper,margin=26mm,top=23mm,bottom=23mm,headheight=14pt,headsep=8mm,footskip=12mm,marginparwidth=23mm,marginparsep=4mm]{geometry}
\RequirePackage{fontspec}
\RequirePackage[spanish]{babel}
\RequirePackage{microtype}
\RequirePackage{graphicx}
\RequirePackage{calc}
\RequirePackage[table]{xcolor}
\RequirePackage{colortbl}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{longtable}
\RequirePackage{array}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{siunitx}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{tcolorbox}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{ragged2e}
\RequirePackage{xparse}
\RequirePackage{tikz}
\RequirePackage{etoolbox}
\RequirePackage{newunicodechar}
\RequirePackage{needspace}
\RequirePackage{lettrine}
\RequirePackage{multicol}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{varwidth}
\RequirePackage{eso-pic}
\RequirePackage{marginnote}
\RequirePackage{changepage}
\RequirePackage{caption}
\RequirePackage{fancyvrb}
\RequirePackage{listings}
\RequirePackage[normalem]{ulem}
\IfFileExists{upquote.sty}{\RequirePackage{upquote}}{}

\tcbuselibrary{skins,breakable,raster,listings}
\usetikzlibrary{arrows.meta,positioning,calc,shapes.geometric,shapes.misc,shapes.multipart,fit,backgrounds,fadings,patterns,matrix,shadows,decorations.markings}

% ── Penalizaciones tipográficas (anti-viudas, anti-huérfanas) ───────────────
\widowpenalty=10000
\clubpenalty=10000
\displaywidowpenalty=10000
\brokenpenalty=10000
\hyphenpenalty=400
\exhyphenpenalty=400
\tolerance=2000
\emergencystretch=3em
\raggedbottom

\hbadness=10000
\hfuzz=1pt
\vfuzz=1pt

% ── Hyphenation: no partir palabras cortas ──────────────────────────────────
\lefthyphenmin=3
\righthyphenmin=3

% ── Caracteres Unicode mapeados a math/símbolos ─────────────────────────────
\newunicodechar{→}{\ensuremath{\rightarrow}}
\newunicodechar{↔}{\ensuremath{\leftrightarrow}}
\newunicodechar{←}{\ensuremath{\leftarrow}}
\newunicodechar{★}{\ensuremath{\bigstar}}
\newunicodechar{☆}{\ensuremath{\star}}

% ── Tipografías ─────────────────────────────────────────────────────────────
% TeX Gyre ships with most modern TeX distributions and keeps the template
% portable across Windows, macOS, Linux and CI.
\setmainfont{TeX Gyre Pagella}
\setsansfont{TeX Gyre Heros}
\setmonofont{Latin Modern Mono}[Scale=0.92]

% ── Paleta Claude editorial ─────────────────────────────────────────────────
\definecolor{claudeParchment}{HTML}{F5F4ED}
\definecolor{claudeIvory}{HTML}{FAF9F5}
\definecolor{claudeTerracotta}{HTML}{C96442}
\definecolor{claudeCoral}{HTML}{D97757}
\definecolor{claudeInk}{HTML}{141413}
\definecolor{claudeCharcoal}{HTML}{30302E}
\definecolor{claudeWarmText}{HTML}{4D4C48}
\definecolor{claudeOliveGray}{HTML}{5E5D59}
\definecolor{claudeStone}{HTML}{87867F}
\definecolor{claudeBorder}{HTML}{E8E6DC}
\definecolor{claudeBorderSoft}{HTML}{F0EEE6}
\definecolor{claudeWarmSilver}{HTML}{B0AEA5}
\definecolor{claudeForest}{HTML}{5A6E63}
\definecolor{claudeError}{HTML}{B53333}
\definecolor{claudeAmbar}{HTML}{D97706}
\definecolor{claudeDeepInk}{HTML}{0A0A09}
\definecolor{claudeGold}{HTML}{B8860B}

% Paleta PulseID (extensión técnica)
\definecolor{pulseIdentidad}{HTML}{1F5D6B}
\definecolor{pulseIdentidadSoft}{HTML}{D4E3E6}
\definecolor{pulseContinuidad}{HTML}{8A4A1F}
\definecolor{pulseContinuidadSoft}{HTML}{EBD9C3}
\definecolor{pulseDecision}{HTML}{5B3A72}
\definecolor{pulseConformal}{HTML}{4A5E2A}
\definecolor{pulseConformalSoft}{HTML}{DBE3C7}
\definecolor{pulseOK}{HTML}{2A5D3A}
\definecolor{pulseOKbg}{HTML}{D6E4D4}
\definecolor{pulseWarn}{HTML}{8A6814}
\definecolor{pulseWarnBg}{HTML}{ECE1BD}
\definecolor{pulseBad}{HTML}{7A2B29}
\definecolor{pulseBadBg}{HTML}{EBCFCA}
\definecolor{pulseNeutral}{HTML}{4A5260}
\definecolor{pulseNeutralBg}{HTML}{DBDDE2}
\definecolor{pulseRule}{HTML}{D6D1C0}

% Paleta para codigo y salida tecnica
\definecolor{claudeCodeBg}{HTML}{F1EFE7}
\definecolor{claudeCodeBgSoft}{HTML}{F7F5EE}
\definecolor{claudeCodeRule}{HTML}{DDD8C8}
\definecolor{claudeCodeText}{HTML}{252522}
\definecolor{claudeCodeComment}{HTML}{6F746B}
\definecolor{claudeCodeKeyword}{HTML}{5B3A72}
\definecolor{claudeCodeString}{HTML}{8A4A1F}
\definecolor{claudeCodeNumber}{HTML}{1F5D6B}
\definecolor{claudeCodeFunction}{HTML}{1F4F7A}
\definecolor{claudeCodeWarning}{HTML}{8A6814}

% Alias de migración para documentos técnicos heredados.
\colorlet{mainColor}{claudeDeepInk}
\colorlet{secondColor}{pulseDecision}
\colorlet{lightGrey}{claudeBorderSoft}
\colorlet{middleGrey}{claudeWarmSilver}
\colorlet{darkGrey}{claudeStone}
\colorlet{lightGray}{lightGrey}
\colorlet{middleGray}{middleGrey}
\colorlet{darkGray}{darkGrey}
\colorlet{tableLineOne}{claudeCodeBgSoft}
\colorlet{tableLineTwo}{claudeIvory}

\pagecolor{claudeParchment}

% ── Metadatos por defecto ──────────────────────────────────────────────────
% Documents can override any of these with \renewcommand.
\providecommand{\DocKicker}{Claude Editorial}
\providecommand{\DocTitle}{Documento editorial}
\providecommand{\DocSubtitle}{Plantilla LaTeX cálida para informes y propuestas}
\providecommand{\DocAuthor}{Tu Nombre}
\providecommand{\DocRole}{Autor}
\providecommand{\DocDate}{\today}
\providecommand{\DocRef}{CLAUDE-LATEX}
\providecommand{\DocFooter}{claudeeditorial}
\providecommand{\InterviewQuestionLabel}{Entrevistador}
\providecommand{\InterviewAnswerLabel}{Respuesta}

% ── Páginación ──────────────────────────────────────────────────────────────
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyfoot[L]{\UIFont\scriptsize\color{claudeStone}\DocFooter}
\fancyfoot[R]{\UIFont\scriptsize\color{claudeStone}\thepage\,/\,\pageref*{LastPage}}

% ── Portada editorial reutilizable ──────────────────────────────────────────
\NewDocumentCommand{\ClaudeCover}{O{}}{%
  \begin{titlepage}
  \thispagestyle{empty}
  \AddToShipoutPictureBG*{%
    \begin{tikzpicture}[remember picture,overlay]
      \fill[claudeParchment] (current page.south west) rectangle (current page.north east);
      \fill[claudeTerracotta]
        ([xshift=0pt,yshift=-34pt]current page.north west)
        rectangle ([xshift=4.5pt,yshift=-128pt]current page.north west);
      \fill[claudeBorderSoft]
        ([xshift=26mm,yshift=-58pt]current page.north west)
        rectangle ([xshift=\dimexpr\paperwidth-26mm\relax,yshift=-59pt]current page.north west);
      \fill[claudeIvory]
        ([xshift=26mm,yshift=26mm]current page.south west)
        rectangle ([xshift=\dimexpr\paperwidth-26mm\relax,yshift=26.7mm]current page.south west);
    \end{tikzpicture}%
  }%
  \vspace*{10mm}
  {\UIFont\small\bfseries\color{claudeTerracotta}\MakeUppercase{\DocKicker}}\par
  \vspace{7mm}
  {\DisplayFont\fontsize{42}{46}\selectfont\bfseries\color{claudeInk}\DocTitle\par}
  \vspace{5mm}
  {\UIFont\fontsize{15}{20}\selectfont\color{claudeWarmText}\DocSubtitle\par}
  \vspace{9mm}
  {\color{claudeTerracotta}\rule{34mm}{1.4pt}}\par
  \vfill
  #1
  \vspace{11mm}
  {\UIFont\small\color{claudeStone}
    \DocAuthor\hspace{1em}\textperiodcentered\hspace{1em}%
    \DocRole\hspace{1em}\textperiodcentered\hspace{1em}%
    \DocDate\par}
  \vspace{2mm}
  {\UIFont\scriptsize\color{claudeWarmSilver}\DocRef\par}
  \end{titlepage}%
}

% Comprobacion robusta para argumentos opcionales vacios.
\providecommand{\IfNoValueOrEmptyTF}[3]{%
  \IfNoValueTF{#1}{#2}{\ifstrequal{#1}{}{#2}{#3}}%
}

% Ajuste de imagen por area minima: llena ancho o alto sin deformar.
\newlength{\ClaudeFitImageMeasuredHeight}
\NewDocumentCommand{\ClaudeFitImage}{O{} m m m}{%
  \IfNoValueOrEmptyTF{#1}{%
    \settototalheight{\ClaudeFitImageMeasuredHeight}{\includegraphics[width=#2]{#4}}%
  }{%
    \settototalheight{\ClaudeFitImageMeasuredHeight}{\includegraphics[width=#2,#1]{#4}}%
  }%
  \ifdim\ClaudeFitImageMeasuredHeight<#3
    \IfNoValueOrEmptyTF{#1}{\includegraphics[height=#3]{#4}}{\includegraphics[height=#3,#1]{#4}}%
  \else
    \IfNoValueOrEmptyTF{#1}{\includegraphics[width=#2]{#4}}{\includegraphics[width=#2,#1]{#4}}%
  \fi
}

% Cabeceras del documento con metadatos estandar.
\NewDocumentCommand{\ClaudeRunningHeader}{O{\DocKicker} O{\DocRef}}{%
  \fancyhead[L]{\UIFont\footnotesize\color{claudeWarmText}#1}%
  \fancyhead[R]{\UIFont\footnotesize\color{claudeStone}#2}%
}

% Apertura fuerte de capitulo/seccion larga, inspirada en revista tecnica.
\NewDocumentCommand{\ClaudeChapterPage}{m m m}{%
  \clearpage
  \thispagestyle{empty}
  \ClaudeVerticalBand{claudeTerracotta}%
  \vspace*{22mm}
  \begin{tikzpicture}[remember picture,overlay]
    \coordinate (mark) at ([xshift=-27mm,yshift=-44mm]current page.north east);
    \fill[claudeTerracotta] (mark) circle (17mm);
    \fill[claudeTerracotta!65!black,opacity=0.38] (mark) circle (12mm);
    \node[font=\DisplayFont\fontsize{25}{25}\selectfont\bfseries,text=claudeIvory] at (mark) {#1};
  \end{tikzpicture}
  {\UIFont\small\bfseries\color{claudeTerracotta}\MakeUppercase{\DocKicker}}\par
  \vspace{5mm}
  {\DisplayFont\fontsize{34}{39}\selectfont\bfseries\color{claudeInk}#2\par}
  \vspace{4mm}
  {\UIFont\fontsize{13}{18}\selectfont\color{claudeWarmText}#3\par}
  \vspace{6mm}
  {\color{claudeTerracotta}\rule{32mm}{1.3pt}}\par
  \vspace{16mm}
}

% Permitir párrafo final con badness lower
\setlength{\parskip}{0.4em plus 0.1em minus 0.1em}
\setlength{\parindent}{0pt}

% ── Fuentes auxiliares ──────────────────────────────────────────────────────
\newcommand{\BodyCopy}{\color{claudeOliveGray}}
\newcommand{\DisplayFont}{\rmfamily}
\newcommand{\UIFont}{\sffamily}

% ── Estrellas (rating) ──────────────────────────────────────────────────────
\newcommand{\StarFull}{\textcolor{claudeTerracotta}{\ensuremath{\bigstar}}}
\newcommand{\StarEmpty}{\textcolor{claudeBorder}{\ensuremath{\bigstar}}}
\newcommand{\RatingFive}{\StarFull\StarFull\StarFull\StarFull\StarFull}
\newcommand{\RatingFour}{\StarFull\StarFull\StarFull\StarFull\StarEmpty}
\newcommand{\RatingThree}{\StarFull\StarFull\StarFull\StarEmpty\StarEmpty}
\newcommand{\RatingTwo}{\StarFull\StarFull\StarEmpty\StarEmpty\StarEmpty}
\newcommand{\RatingOne}{\StarFull\StarEmpty\StarEmpty\StarEmpty\StarEmpty}

% ── Estado/zona ─────────────────────────────────────────────────────────────
\newcommand{\StatusDone}{\textcolor{claudeForest}{\UIFont\small\bfseries Cerrado}}
\newcommand{\StatusWIP}{\textcolor{claudeAmbar}{\UIFont\small\bfseries En curso}}
\newcommand{\StatusOpen}{\textcolor{claudeStone}{\UIFont\small Pendiente}}
\newcommand{\ZoneGreen}{\tikz[baseline=-0.6ex]\fill[claudeForest](0,0)circle(0.36em);\,}
\newcommand{\ZoneAmber}{\tikz[baseline=-0.6ex]\fill[claudeAmbar](0,0)circle(0.36em);\,}
\newcommand{\ZoneRed}{\tikz[baseline=-0.6ex]\fill[claudeError](0,0)circle(0.36em);\,}

% ── Delta ───────────────────────────────────────────────────────────────────
\NewDocumentCommand{\DeltaUp}{m}{%
  \tcbox[on line,colback=claudeForest!12,colframe=claudeForest,
    boxrule=0.4pt,arc=2mm,left=4pt,right=4pt,top=1pt,bottom=1pt]%
  {\UIFont\scriptsize\bfseries\color{claudeForest}#1}%
}
\NewDocumentCommand{\DeltaFlat}{m}{%
  \tcbox[on line,colback=claudeStone!12,colframe=claudeStone,
    boxrule=0.4pt,arc=2mm,left=4pt,right=4pt,top=1pt,bottom=1pt]%
  {\UIFont\scriptsize\bfseries\color{claudeStone}#1}%
}
\NewDocumentCommand{\DeltaDown}{m}{%
  \tcbox[on line,colback=claudeError!12,colframe=claudeError,
    boxrule=0.4pt,arc=2mm,left=4pt,right=4pt,top=1pt,bottom=1pt]%
  {\UIFont\scriptsize\bfseries\color{claudeError}#1}%
}

% ── Cajas temáticas (todas BREAKABLE por defecto) ───────────────────────────
\newtcolorbox{claudehero}{
  enhanced,breakable,
  colback=claudeIvory, colframe=claudeBorderSoft, boxrule=0.8pt, arc=4mm,
  left=14pt, right=14pt, top=14pt, bottom=14pt,
  borderline west={2.5pt}{0pt}{claudeTerracotta}, coltext=claudeWarmText,
  before skip=0.6em, after skip=0.6em
}
\newtcolorbox{claudenote}{
  enhanced,breakable, colback=claudeIvory, colframe=claudeBorder,
  borderline west={1.6pt}{0pt}{claudeTerracotta}, coltext=claudeWarmText,
  before skip=0.5em, after skip=0.5em
}
\newtcolorbox{claudequote}{
  enhanced,breakable, colback=claudeIvory, colframe=claudeBorderSoft,
  borderline west={1.6pt}{0pt}{claudeCoral}, coltext=claudeInk,
  before skip=0.5em, after skip=0.5em
}
\newtcolorbox{claudecard}{
  enhanced,breakable, colback=claudeIvory, colframe=claudeBorder,
  coltext=claudeWarmText,
  before skip=0.4em, after skip=0.4em
}
\newtcolorbox{claudeaside}[1]{
  enhanced,breakable, colback=claudeIvory, colframe=claudeBorder,
  title=\UIFont\bfseries\color{claudeInk}#1,
  coltitle=claudeInk, coltext=claudeWarmText,
  before skip=0.5em, after skip=0.5em
}
\newtcolorbox{claudecallout}[1]{
  enhanced,breakable, colback=claudeIvory, colframe=claudeBorder,
  title={\UIFont\bfseries\color{claudeInk}#1},
  coltitle=claudeInk, coltext=claudeInk,
  before skip=0.6em, after skip=0.6em
}
\newtcolorbox{claudedecision}[1]{
  enhanced,breakable, colback=claudeIvory, colframe=claudeTerracotta, boxrule=0.8pt,
  title={\UIFont\bfseries\color{claudeInk}#1},
  coltitle=claudeInk, coltext=claudeWarmText,
  borderline west={2pt}{0pt}{claudeTerracotta},
  before skip=0.6em, after skip=0.6em
}
\newtcolorbox{claudechecklist}[1]{
  enhanced,breakable, colback=claudeIvory, colframe=claudeBorderSoft,
  title={\UIFont\bfseries\color{claudeInk}#1},
  coltitle=claudeInk, coltext=claudeWarmText,
  borderline west={2pt}{0pt}{claudeForest},
  before skip=0.6em, after skip=0.6em
}
\newtcolorbox{claudewarning}[1]{
  enhanced,breakable, colback=claudeIvory, colframe=claudeAmbar, boxrule=0.6pt,
  title={\UIFont\bfseries\color{claudeInk}#1},
  coltitle=claudeInk, coltext=claudeWarmText,
  borderline west={2pt}{0pt}{claudeAmbar},
  before skip=0.6em, after skip=0.6em
}
\newtcolorbox{claudedarkpanel}[1]{
  enhanced,breakable, colback=claudeInk, colframe=claudeCharcoal, boxrule=0.6pt, arc=4mm,
  title={\UIFont\bfseries\color{claudeIvory}#1},
  coltitle=claudeIvory, coltext=claudeWarmSilver,
  left=14pt, right=14pt, top=14pt, bottom=14pt,
  before skip=0.7em, after skip=0.7em
}
\newtcolorbox{claudepart}[1]{
  enhanced,breakable, colback=claudeCharcoal, colframe=claudeCharcoal,
  boxrule=0pt, arc=5mm,
  title={\UIFont\small\color{claudeWarmSilver}\MakeUppercase{#1}},
  coltitle=claudeWarmSilver, coltext=claudeWarmSilver,
  left=14pt, right=14pt, top=10pt, bottom=10pt,
  before skip=0.4em, after skip=0.6em
}
\newtcolorbox{claudephi}{
  enhanced,breakable, colback=claudeIvory, colframe=claudeGold, boxrule=0.6pt, arc=4mm,
  borderline west={2.5pt}{0pt}{claudeGold}, coltext=claudeWarmText,
  left=14pt, right=14pt, top=12pt, bottom=12pt,
  before skip=0.7em, after skip=0.7em
}
\newtcolorbox{claudepullquote}{
  enhanced,breakable, colback=claudeParchment, colframe=claudeBorderSoft, boxrule=0pt,
  borderline west={2.6pt}{0pt}{claudeTerracotta},
  coltext=claudeInk, left=18pt, right=14pt, top=10pt, bottom=10pt,
  before skip=0.6em, after skip=0.6em
}
\newtcolorbox{claudelatin}{
  enhanced,breakable, colback=claudeDeepInk, colframe=claudeDeepInk, boxrule=0pt, arc=4mm,
  coltext=claudeIvory,
  left=18pt, right=18pt, top=18pt, bottom=18pt,
  before skip=1em, after skip=0.8em
}

% ── Reglas decorativas ──────────────────────────────────────────────────────
\newcommand{\ClaudeRule}{\par\noindent{\color{claudeBorder}\rule{\linewidth}{0.6pt}}\par}
\newcommand{\ClaudeSubtleRule}{\par\noindent{\color{claudeBorderSoft}\rule{\linewidth}{0.4pt}}\par}

% ── Macros editoriales ──────────────────────────────────────────────────────
\NewDocumentCommand{\ClaudeBadge}{O{claudeTerracotta} m}{%
  \tcbox[on line,colback=claudeIvory,colframe=claudeBorderSoft,
    boxrule=0.5pt,arc=2.5mm,left=6pt,right=6pt,top=3pt,bottom=3pt]%
  {\UIFont\scriptsize\color{#1}#2}%
}
\NewDocumentCommand{\ClaudeLead}{+m}{%
  \needspace{4\baselineskip}%
  {\fontsize{12.6}{18.5}\selectfont\color{claudeWarmText}#1\par}%
}
\NewDocumentCommand{\ClaudeStat}{m m m}{%
  \begin{tcolorbox}[colback=claudeIvory,colframe=claudeBorderSoft,
    boxrule=0.6pt,arc=3mm,left=10pt,right=10pt,top=10pt,bottom=10pt,
    valign=center,halign=flush left,height fill]
  {\UIFont\scriptsize\color{claudeStone}#1\par}
  \vspace{0.25em}
  {\DisplayFont\fontsize{20}{24}\selectfont\color{claudeInk}\hyphenpenalty=10000\exhyphenpenalty=10000\relax #2\par}
  \vspace{0.25em}
  {\fontsize{8.6}{11}\selectfont\color{claudeWarmText}\RaggedRight #3\par}
  \end{tcolorbox}%
}
\NewDocumentCommand{\ClaudeFact}{m m}{%
  {\DisplayFont\large\color{claudeInk}#1\par}%
  {\UIFont\small\color{claudeStone}#2\par}%
}
\NewDocumentCommand{\ClaudeTimelineItem}{m m m}{%
  {\UIFont\scriptsize\color{claudeStone}\MakeUppercase{#1}}\par
  {\DisplayFont\large\color{claudeInk}#2\par}
  {\small\color{claudeWarmText}#3\par}\vspace{0.4em}%
}
\NewDocumentCommand{\ClaudeSignature}{m m}{%
  {\DisplayFont\large\color{claudeInk}#1\par}
  {\UIFont\small\color{claudeStone}#2\par}
}
\NewDocumentCommand{\ClaudeInvariant}{m +m +m}{%
  \par\noindent
  {\UIFont\scriptsize\color{claudeTerracotta}\MakeUppercase{Invariante #1}}
  \hspace{0.5em}
  {\DisplayFont\normalsize\bfseries\color{claudeInk}#2}
  \par{\small\color{claudeWarmText}#3}\vspace{0.6em}%
}

% ── Macros entrevista ───────────────────────────────────────────────────────
\NewDocumentCommand{\EntrevistaQ}{+m}{%
  \needspace{5\baselineskip}%
  \par\vspace{0.85em}\noindent
  {\UIFont\scriptsize\bfseries\color{claudeTerracotta}\MakeUppercase{\InterviewQuestionLabel}}\par
  \vspace{0.18em}
  {\DisplayFont\itshape\color{claudeOliveGray}#1\par}%
  \vspace{0.55em}%
}
\NewDocumentCommand{\EntrevistaA}{+m}{%
  \needspace{5\baselineskip}%
  \noindent
  {\UIFont\scriptsize\bfseries\color{claudeForest}\MakeUppercase{\InterviewAnswerLabel}}\par
  \nopagebreak\vspace{0.18em}
  {\color{claudeWarmText}#1\par}%
  \vspace{0.7em}%
}
\NewDocumentCommand{\EntrevistaSubsec}{m}{%
  \needspace{4\baselineskip}%
  \par\vspace{0.6em}\noindent
  {\UIFont\scriptsize\color{claudeStone}\MakeUppercase{#1}}\par
  \vspace{0.1em}\noindent{\color{claudeBorder}\rule{2em}{0.4pt}}\par\vspace{0.35em}%
}
\NewDocumentCommand{\EntrevistaCapitulo}{m m}{%
  \needspace{8\baselineskip}%
  \par\vspace{0.9em}\noindent
  {\UIFont\scriptsize\color{claudeTerracotta}\MakeUppercase{Capítulo #1}}\par
  \vspace{0.15em}
  {\DisplayFont\Large\color{claudeInk}\MakeUppercase{#2}\par}
  \vspace{0.2em}\noindent{\color{claudeBorderSoft}\rule{\linewidth}{0.6pt}}\par
  \vspace{0.7em}%
}

% ── Macros PulseID ──────────────────────────────────────────────────────────
\NewDocumentCommand{\PulseChip}{m m m}{%
  \tcbox[on line, colback=#2, colframe=#3, boxrule=0.5pt, arc=1.6mm,
    left=4pt, right=4pt, top=1.5pt, bottom=1.5pt]%
  {\UIFont\scriptsize\bfseries\color{#3}#1}%
}
\NewDocumentCommand{\PulseChipOK}{m}{\PulseChip{#1}{pulseOKbg}{pulseOK}}
\NewDocumentCommand{\PulseChipWarn}{m}{\PulseChip{#1}{pulseWarnBg}{pulseWarn}}
\NewDocumentCommand{\PulseChipBad}{m}{\PulseChip{#1}{pulseBadBg}{pulseBad}}
\NewDocumentCommand{\PulseChipNeutral}{m}{\PulseChip{#1}{pulseNeutralBg}{pulseNeutral}}

\NewDocumentCommand{\PulseGate}{m m m}{%
  \def\gatecolor{pulseOK}\def\gatebg{pulseOKbg}%
  \ifstrequal{#3}{warn}{\def\gatecolor{pulseWarn}\def\gatebg{pulseWarnBg}}{}%
  \ifstrequal{#3}{bad}{\def\gatecolor{pulseBad}\def\gatebg{pulseBadBg}}{}%
  \par\noindent
  \begin{tcolorbox}[colback=\gatebg, colframe=\gatecolor, boxrule=0.5pt,
    arc=1.5mm, left=8pt, right=8pt, top=4pt, bottom=4pt, width=\linewidth, halign=flush left,
    before skip=0.15em, after skip=0.15em]
    {\UIFont\small\bfseries\color{\gatecolor}#1}\hfill
    {\UIFont\small\color{claudeWarmText}#2}
  \end{tcolorbox}%
}

\NewDocumentCommand{\PulseGauge}{m m m m}{%
  \def\gaugefg{pulseOK}%
  \ifstrequal{#4}{warn}{\def\gaugefg{pulseWarn}}{}%
  \ifstrequal{#4}{bad}{\def\gaugefg{pulseBad}}{}%
  \ifstrequal{#4}{aux}{\def\gaugefg{claudeStone}}{}%
  \begin{tikzpicture}[scale=0.35]
    \draw[line width=1.2mm, color=pulseRule, line cap=round]
      (180:1.5) arc[start angle=180, end angle=0, radius=1.5];
    \pgfmathsetmacro{\arcend}{180 - (#1 * 1.8)}
    \draw[line width=1.2mm, color=\gaugefg, line cap=round]
      (180:1.5) arc[start angle=180, end angle=\arcend, radius=1.5];
    \node[font=\UIFont\bfseries\fontsize{8}{8}\selectfont, color=claudeInk] at (0,0.45) {#2};
    \node[font=\UIFont\fontsize{5}{5}\selectfont, color=claudeStone] at (0,-0.1) {\MakeUppercase{#3}};
  \end{tikzpicture}%
}

\NewDocumentCommand{\PulseDistBar}{O{6} m m m}{%
  % #1 = total width in cm (default 6, fits half-page minipage)
  \begin{tikzpicture}[baseline=0pt]
    \pgfmathsetmacro{\totalw}{#1}
    \pgfmathsetmacro{\cohw}{#2*\totalw/100}
    \pgfmathsetmacro{\indw}{#3*\totalw/100}
    \pgfmathsetmacro{\brcw}{#4*\totalw/100}
    \fill[pulseOK] (0,0) rectangle (\cohw,0.45);
    \fill[pulseWarn] (\cohw,0) rectangle (\cohw+\indw,0.45);
    \fill[pulseBad] (\cohw+\indw,0) rectangle (\totalw,0.45);
    \draw[pulseRule, line width=0.3pt] (0,0) rectangle (\totalw,0.45);
  \end{tikzpicture}%
}

% ── Columna Y de tabularx con raggedright (anti-huecos justificación) ──────
\newcolumntype{Y}{>{\RaggedRight\arraybackslash}X}
\newcolumntype{C}{>{\Centering\arraybackslash}X}

% ═══════════════════════════════════════════════════════════════════════════
%  EXTENSIÓN yReport — sidenotes, capitulares, hexágonos, theorems, bigNumber
% ═══════════════════════════════════════════════════════════════════════════

% ── Capitulares (lettrine) ──────────────────────────────────────────────────
\renewcommand{\LettrineFontHook}{\DisplayFont\bfseries\color{claudeTerracotta}}
\setcounter{DefaultLines}{3}
\setlength{\DefaultFindent}{0.4em}
\setlength{\DefaultNindent}{0pt}

% ── Theorems (en estilo editorial Claude) ───────────────────────────────────
\newtheoremstyle{claudethm}
  {0.6em}{0.4em}
  {}                          % cuerpo en redonda
  {0pt}                       % indent
  {\UIFont\bfseries\color{claudeTerracotta}}  % cabecera
  { · }                       % separador después de label
  {0.4em}                     % espacio tras label
  {\thmname{#1}\thmnumber{ #2}\thmnote{ \mdseries\itshape\color{claudeWarmText}#3}}

\theoremstyle{claudethm}
\newtheorem{axioma}{Axioma}
\newtheorem{teorema}{Teorema}
\newtheorem{proposicion}{Proposición}
\newtheorem{corolario}{Corolario}
\newtheorem{lema}{Lema}
\newtheorem{definicion}{Definición}
\newtheorem{ejemplo}{Ejemplo}

% Símbolo Halmos al final de demostración
\renewcommand{\qedsymbol}{\textcolor{claudeTerracotta}{$\blacksquare$}}

% ── Side macros (notas en margen) ───────────────────────────────────────────
% Nota: el documento base usa márgenes simétricos sin marginpar muy ancho.
% Para sidenotes plenos, se requiere geometría ad-hoc; aquí se ofrece una
% versión compacta que cae en el cuerpo como aside.
\NewDocumentCommand{\sideMark}{O{claudeTerracotta} m}{%
  {\color{#1}\UIFont\scriptsize\bfseries#2}%
}
\NewDocumentCommand{\sideTitle}{m}{{\UIFont\bfseries\small\color{claudeInk}#1}}
\NewDocumentCommand{\sideTitleColor}{m}{{\UIFont\bfseries\small\color{claudeTerracotta}#1}}
\NewDocumentCommand{\sideTech}{m}{\par{\UIFont\scriptsize\color{claudeTerracotta}\textbf{#1}}\par}
\NewDocumentCommand{\sideDate}{m}{\par{\UIFont\small\bfseries\color{claudeInk}#1}\par}
\NewDocumentCommand{\sideVersion}{m}{\par{\UIFont\scriptsize\color{claudeStone}#1}\par}

% \sideNote{texto}: se renderiza como aside lateral (claudeaside compacta)
\NewDocumentCommand{\sideNote}{+m}{%
  \marginpar{%
    \RaggedRight\footnotesize\color{claudeWarmText}%
    \UIFont
    #1\par
  }\unskip%
}

% \sideQuote[autor]{texto}: cita con marca grande de comillas en margen
\NewDocumentCommand{\sideQuote}{O{} +m}{%
  \marginpar{%
    \RaggedRight\footnotesize%
    {\fontsize{2.4cm}{0mm}\selectfont\color{claudeBorder}\rmfamily``}\par
    \vspace{-1.2cm}
    {\itshape\color{claudeOliveGray}#2\par}%
    \IfNoValueOrEmptyTF{#1}{}{%
      \vspace{0.2em}
      {\UIFont\scriptsize\color{claudeTerracotta}\hfill — #1\par}%
    }%
  }\unskip%
}

% \sideNumber{N}{descripción}: número grande en margen + regla
\NewDocumentCommand{\sideNumber}{m +m}{%
  \marginpar{%
    \RaggedRight%
    {\DisplayFont\fontsize{1.2cm}{1.44cm}\selectfont\bfseries\color{claudeStone}#1}\par
    {\color{claudeTerracotta}\rule{1.5cm}{1.6pt}}\par
    \vspace{0.2em}
    {\UIFont\scriptsize\color{claudeWarmText}#2\par}%
  }\unskip%
}

% \bigNumber: número grande + regla, alineado al baseline
\NewDocumentCommand{\bigNumber}{O{claudeTerracotta} m}{%
  {\DisplayFont\bfseries\fontsize{1.4cm}{1.6cm}\selectfont\color{claudeInk}#2}\par
  {\color{#1}\rule{1.6cm}{1.6pt}}\par
}

% ── Hexágono TikZ ───────────────────────────────────────────────────────────
\NewDocumentCommand{\Hexagon}{O{claudeTerracotta} m m O{}}{%
  \fill [#1, #4]
    ($ (#2) + (0:#3) $)   --
    ($ (#2) + (60:#3) $)  --
    ($ (#2) + (120:#3) $) --
    ($ (#2) + (180:#3) $) --
    ($ (#2) + (240:#3) $) --
    ($ (#2) + (300:#3) $) --
    cycle;
}

% ── Banda vertical exterior (background of page) ────────────────────────────
% \ClaudeVerticalBand{color} llamado dentro de página; usa eso-pic
\newcommand{\ClaudeVerticalBand}[1]{%
  \AddToShipoutPictureBG*{%
    \begin{tikzpicture}[remember picture, overlay]
      \fill[#1] (current page.south east)
        rectangle ++(-7mm, \paperheight);
    \end{tikzpicture}%
  }%
}

% ── whole environment: ocupa textwidth + marginparwidth (para spreads) ──────
\newenvironment{whole}{%
  \par\noindent
  \begin{adjustwidth*}{0pt}{-\marginparwidth}%
}{%
  \end{adjustwidth*}\par%
}

% ── Items con bullet de color ───────────────────────────────────────────────
\setlist[itemize]{
  leftmargin=1.4em, itemsep=0.3em, topsep=0.3em,
  label={\textcolor{claudeTerracotta}{\textbullet}}
}
\setlist[enumerate]{
  leftmargin=1.6em, itemsep=0.3em, topsep=0.3em,
  label={\textcolor{claudeTerracotta}{\bfseries\arabic*.}}
}

% ── Multi-column resumen ────────────────────────────────────────────────────
\setlength{\columnsep}{1.4em}
\setlength{\columnseprule}{0.4pt}
\renewcommand{\columnseprulecolor}{\color{claudeBorder}}

% ── Caja de demostración con regla naranja ──────────────────────────────────
\newtcolorbox{claudeproof}{
  enhanced,breakable, colback=claudeIvory, colframe=claudeBorderSoft, boxrule=0pt,
  borderline west={1.6pt}{0pt}{claudeTerracotta}, coltext=claudeWarmText,
  before skip=0.4em, after skip=0.4em, left=10pt, right=10pt, top=4pt, bottom=4pt
}

% ── Macro inColor: realce semántico ─────────────────────────────────────────
\NewDocumentCommand{\inColor}{m}{\textbf{\textcolor{claudeTerracotta}{#1}}}

% ═══════════════════════════════════════════════════════════════════════════
%  TIER 1 ── Mejoras editoriales avanzadas
% ═══════════════════════════════════════════════════════════════════════════

% ── Iconos vectoriales TikZ ─────────────────────────────────────────────────
\NewDocumentCommand{\IconCheck}{O{pulseOK}}{%
  \tikz[baseline=-0.5ex]{%
    \draw[#1, line width=1.4pt, line cap=round, line join=round]
      (-0.18em,0.05em) -- (-0.05em,-0.12em) -- (0.22em,0.18em);%
  }%
}
\NewDocumentCommand{\IconCross}{O{pulseBad}}{%
  \tikz[baseline=-0.5ex]{%
    \draw[#1, line width=1.4pt, line cap=round]
      (-0.18em,-0.18em) -- (0.18em,0.18em);
    \draw[#1, line width=1.4pt, line cap=round]
      (-0.18em,0.18em) -- (0.18em,-0.18em);%
  }%
}
\NewDocumentCommand{\IconWarn}{O{pulseWarn}}{%
  \tikz[baseline=-0.5ex]{%
    \draw[#1, line width=1pt, line join=round, fill=#1!20]
      (0,0.22em) -- (0.22em,-0.18em) -- (-0.22em,-0.18em) -- cycle;
    \draw[#1, line width=1pt, line cap=round]
      (0,0.06em) -- (0,-0.06em);
    \fill[#1] (0,-0.13em) circle (0.025em);%
  }%
}
\NewDocumentCommand{\IconArrow}{O{claudeStone}}{%
  \tikz[baseline=-0.5ex]{%
    \draw[#1, line width=1pt, -{Latex[length=0.18em,width=0.18em]}, line cap=round]
      (-0.22em,0) -- (0.22em,0);%
  }%
}
\NewDocumentCommand{\IconStar}{O{claudeTerracotta}}{%
  \tikz[baseline=-0.5ex]{%
    \fill[#1] (90:0.22em) -- (162:0.09em) -- (234:0.22em) --
              (306:0.09em) -- (18:0.22em) -- (90:0.09em) -- cycle;%
  }%
}
\NewDocumentCommand{\IconInfo}{O{pulseIdentidad}}{%
  \tikz[baseline=-0.5ex]{%
    \draw[#1, line width=0.7pt] (0,0) circle (0.22em);
    \fill[#1] (0,0.10em) circle (0.03em);
    \draw[#1, line width=1pt, line cap=round] (0,0.04em) -- (0,-0.10em);%
  }%
}
\NewDocumentCommand{\IconLock}{O{claudeOliveGray}}{%
  \tikz[baseline=-0.5ex]{%
    \draw[#1, line width=0.8pt] (-0.13em,-0.05em) rectangle (0.13em,-0.22em);
    \draw[#1, line width=0.8pt] (-0.08em,-0.05em) -- (-0.08em,0.06em)
       arc[start angle=180, end angle=0, radius=0.08em] -- (0.08em,-0.05em);%
  }%
}
\NewDocumentCommand{\IconDot}{O{claudeTerracotta}}{%
  \tikz[baseline=-0.5ex]{\fill[#1] (0,0) circle (0.16em);}% 
}

% ── Banners, info boxes y tarjetas editoriales ─────────────────────────────
\NewDocumentCommand{\ClaudeBanner}{O{claudeTerracotta} m}{%
  \par\noindent\begin{center}
  \begin{tikzpicture}[inner sep=0pt, outer sep=0pt]
    \node[rectangle, fill=#1, text=claudeIvory, inner xsep=10mm, inner ysep=2.5mm,
      font=\UIFont\small\bfseries, align=center] (banner) {#2};
    \path[fill=#1!72!black] (banner.south west) -- ++(6mm,0) -- ++(0,-3mm) -- cycle;
    \path[fill=#1!72!black] (banner.south east) -- ++(-6mm,0) -- ++(0,-3mm) -- cycle;
    \path[fill=#1]
      ([xshift=-10mm,yshift=-3mm]banner.north west) --
      ([xshift=6mm,yshift=-3mm]banner.north west) --
      ([xshift=6mm,yshift=-3mm]banner.south west) --
      ([xshift=-10mm,yshift=-3mm]banner.south west) --
      ([xshift=-6mm]banner.west) -- cycle;
    \path[fill=#1]
      ([xshift=10mm,yshift=-3mm]banner.north east) --
      ([xshift=-6mm,yshift=-3mm]banner.north east) --
      ([xshift=-6mm,yshift=-3mm]banner.south east) --
      ([xshift=10mm,yshift=-3mm]banner.south east) --
      ([xshift=6mm]banner.east) -- cycle;
    \draw[#1!30!white,line width=0.3pt] (banner.north west) -- (banner.south west) -- (banner.south east) -- (banner.north east);
  \end{tikzpicture}
  \end{center}\par
}

\newtcolorbox{ClaudeInfoBox}[3][]{
  enhanced, breakable,
  colback=#2!8,
  colframe=#2,
  boxrule=0.55pt,
  arc=2mm,
  borderline west={2pt}{0pt}{#2},
  title={\UIFont\bfseries\color{claudeInk}#3},
  fonttitle=\UIFont\bfseries,
  left=10pt,
  right=10pt,
  top=6pt,
  bottom=6pt,
  coltext=claudeWarmText,
  #1
}

\NewDocumentEnvironment{ClaudeInfo}{O{Información}}%
  {\begin{ClaudeInfoBox}{pulseIdentidad}{\IconInfo[pulseIdentidad]\hspace{0.35em}#1}}%
  {\end{ClaudeInfoBox}}
\NewDocumentEnvironment{ClaudeWarning}{O{Atención}}%
  {\begin{ClaudeInfoBox}{pulseWarn}{\IconWarn[pulseWarn]\hspace{0.35em}#1}}%
  {\end{ClaudeInfoBox}}
\NewDocumentEnvironment{ClaudeCritical}{O{Crítico}}%
  {\begin{ClaudeInfoBox}{pulseBad}{\IconCross[pulseBad]\hspace{0.35em}#1}}%
  {\end{ClaudeInfoBox}}
\NewDocumentEnvironment{ClaudeTip}{O{Consejo}}%
  {\begin{ClaudeInfoBox}{pulseDecision}{\IconStar[pulseDecision]\hspace{0.35em}#1}}%
  {\end{ClaudeInfoBox}}
\NewDocumentEnvironment{ClaudeCheck}{O{Validación}}%
  {\begin{ClaudeInfoBox}{pulseOK}{\IconCheck[pulseOK]\hspace{0.35em}#1}}%
  {\end{ClaudeInfoBox}}
\NewDocumentEnvironment{ClaudeQuestion}{O{Pregunta}}%
  {\begin{ClaudeInfoBox}{claudeTerracotta}{\IconInfo[claudeTerracotta]\hspace{0.35em}#1}}%
  {\end{ClaudeInfoBox}}

\newtcolorbox{ClaudeCard}[2][]{
  enhanced, breakable,
  colback=claudeIvory,
  colframe=claudeBorder,
  boxrule=0.5pt,
  arc=2mm,
  title={\UIFont\bfseries\color{claudeInk}#2},
  fonttitle=\UIFont\bfseries,
  coltitle=claudeInk,
  colbacktitle=claudeBorderSoft,
  left=10pt,
  right=10pt,
  top=7pt,
  bottom=7pt,
  #1
}

\NewDocumentCommand{\ClaudeCardFooter}{m}{%
  \par\vspace{0.45em}{\color{claudeBorder}\hrule}\vspace{0.4em}%
  {\UIFont\scriptsize\color{claudeStone}#1\par}%
}

\NewDocumentCommand{\ClaudeMarginAbstract}{O{pulseIdentidad} m m}{%
  \marginpar{%
    \RaggedRight\footnotesize\UIFont
    \begin{tcolorbox}[enhanced,breakable,colback=#1!8,colframe=#1,
      boxrule=0.45pt,arc=1.2mm,left=4pt,right=3pt,top=3pt,bottom=3pt,
      borderline west={1.5pt}{0pt}{#1}]
      {\UIFont\scriptsize\bfseries\color{claudeInk}#2}\par
      \vspace{0.2em}
      {\UIFont\scriptsize\color{claudeWarmText}#3}
    \end{tcolorbox}%
  }\unskip%
}
\NewDocumentCommand{\ClaudeMarginInfo}{O{Información} m}{\ClaudeMarginAbstract[pulseIdentidad]{\IconInfo[pulseIdentidad]\hspace{0.2em}#1}{#2}}
\NewDocumentCommand{\ClaudeMarginWarn}{O{Atención} m}{\ClaudeMarginAbstract[pulseWarn]{\IconWarn[pulseWarn]\hspace{0.2em}#1}{#2}}
\NewDocumentCommand{\ClaudeMarginTip}{O{Consejo} m}{\ClaudeMarginAbstract[pulseDecision]{\IconStar[pulseDecision]\hspace{0.2em}#1}{#2}}
\NewDocumentCommand{\ClaudeMarginCheck}{O{Ejemplo} m}{\ClaudeMarginAbstract[pulseOK]{\IconCheck[pulseOK]\hspace{0.2em}#1}{#2}}
\NewDocumentCommand{\ClaudeMarginQuestion}{O{Pregunta} m}{\ClaudeMarginAbstract[claudeTerracotta]{\IconInfo[claudeTerracotta]\hspace{0.2em}#1}{#2}}
\NewDocumentCommand{\ClaudeMarginCritical}{O{Crítico} m}{\ClaudeMarginAbstract[pulseBad]{\IconCross[pulseBad]\hspace{0.2em}#1}{#2}}

% ── Project engineering daily work system ──────────────────────────────────
\providecommand{\ProjectName}{Proyecto}
\providecommand{\ProjectPhase}{Fase}
\providecommand{\ProjectOwner}{Equipo}
\providecommand{\ProjectStatus}{Activo}

\NewDocumentCommand{\ClaudeProjectHeader}{m m m m}{%
  \begin{tcolorbox}[enhanced,breakable,colback=claudeIvory,colframe=claudeBorder,
    boxrule=0.5pt,arc=3mm,left=12pt,right=12pt,top=10pt,bottom=10pt]
    {\UIFont\scriptsize\bfseries\color{claudeTerracotta}\MakeUppercase{Project operating note}}\par
    \vspace{0.2em}
    {\DisplayFont\fontsize{25}{29}\selectfont\bfseries\color{claudeInk}#1\par}
    \vspace{0.35em}
    {\UIFont\small\color{claudeWarmText}#2\par}
    \vspace{0.7em}
    \begin{ClaudeTable}{@{}lL@{}}
    \ClaudeTableHeader Campo & Valor \\
    \toprule
    Fecha & #3 \\
    Estado & #4 \\
    Responsable & \ProjectOwner \\
    Fase & \ProjectPhase \\
    \bottomrule
    \end{ClaudeTable}
  \end{tcolorbox}%
}

\NewDocumentCommand{\ClaudeDecisionRecord}{O{Aprobada} m m m m}{%
  \begin{tcolorbox}[enhanced,breakable,colback=claudeIvory,colframe=claudeTerracotta,
    boxrule=0.65pt,arc=2.5mm,left=12pt,right=12pt,top=8pt,bottom=8pt,
    title={\UIFont\bfseries\color{claudeInk}#2\hfill\ClaudeBadge[claudeTerracotta]{#1}}]
    {\UIFont\scriptsize\bfseries\color{claudeStone}\MakeUppercase{Contexto}}\par
    {\color{claudeWarmText}#3\par}
    \vspace{0.55em}
    {\UIFont\scriptsize\bfseries\color{claudeStone}\MakeUppercase{Decisión}}\par
    {\color{claudeWarmText}#4\par}
    \vspace{0.55em}
    {\UIFont\scriptsize\bfseries\color{claudeStone}\MakeUppercase{Consecuencia}}\par
    {\color{claudeWarmText}#5\par}
  \end{tcolorbox}%
}

\NewDocumentCommand{\ClaudeActionItem}{m m m}{%
  \noindent\IconArrow[claudeTerracotta]\hspace{0.35em}%
  {\UIFont\small\bfseries\color{claudeInk}#1}%
  \hspace{0.45em}{\UIFont\scriptsize\color{claudeStone}#2}\par
  {\leftskip=1.45em\UIFont\small\color{claudeWarmText}#3\par}%
  \vspace{0.25em}
}

\newtcolorbox{ClaudeActionList}[1][]{
  enhanced,breakable,
  colback=claudeIvory,
  colframe=claudeBorder,
  boxrule=0.5pt,
  arc=2mm,
  title={\UIFont\bfseries\color{claudeInk}#1},
  left=10pt,
  right=10pt,
  top=7pt,
  bottom=7pt
}

\NewDocumentCommand{\ClaudeRiskRow}{m m m m}{%
  #1 & #2 & #3 & #4\\
}

% ── BigStat: número grande con kicker + descripción + delta ─────────────────
\NewDocumentCommand{\BigStat}{O{} m m m}{%
  % [delta] {kicker} {value} {label}
  \begin{tcolorbox}[enhanced, colback=claudeIvory, colframe=claudeBorderSoft,
    boxrule=0.6pt, arc=3mm, left=12pt, right=12pt, top=10pt, bottom=10pt,
    valign=center, halign=flush left]
    {\UIFont\scriptsize\color{claudeStone}\MakeUppercase{#2}}\par
    \vspace{0.15em}
    {\DisplayFont\fontsize{32}{34}\selectfont\color{claudeInk}#3}%
    \IfNoValueOrEmptyTF{#1}{}{%
      \hspace{0.4em}{\UIFont\small\color{claudeForest}#1}%
    }\par
    \vspace{0.15em}
    {\UIFont\scriptsize\color{claudeWarmText}\RaggedRight #4\par}
  \end{tcolorbox}%
}

% ── KPI Card (más compacto que BigStat) ─────────────────────────────────────
\NewDocumentCommand{\KPICard}{m m m}{%
  % {label}{value}{trend}
  \begin{tcolorbox}[enhanced, colback=claudeIvory, colframe=claudeBorder,
    boxrule=0.5pt, arc=2mm, left=10pt, right=10pt, top=6pt, bottom=6pt]
    {\UIFont\fontsize{8}{10}\selectfont\color{claudeStone}\MakeUppercase{#1}}\par
    {\DisplayFont\fontsize{18}{22}\selectfont\color{claudeInk}#2}\par
    {\UIFont\scriptsize\color{claudeWarmText}#3}%
  \end{tcolorbox}%
}

% ── Timeline horizontal (TikZ) ──────────────────────────────────────────────
% Uso: \ClaudeTimelineHoriz{
%   {Apr 2026}{F0}{done}{Cimientos}
%   {Jun 2026}{F1}{wip}{Construcción}
%   {Oct 2026}{F2}{open}{Posicionamiento}
%   {Feb 2027}{F3}{open}{Lanzamiento}
% }
\NewDocumentEnvironment{ClaudeTimelineH}{}{%
  \par\noindent
  \begin{tikzpicture}[
    baseline=0pt,
    tlphase/.style={
      draw=claudeBorder, line width=0.5pt,
      fill=claudeIvory, rounded corners=2pt,
      minimum width=2.6cm, minimum height=1.4cm,
      align=center, inner sep=4pt,
      font=\UIFont\scriptsize, text=claudeWarmText
    },
    tldot/.style={circle, draw=claudeStone, line width=0.7pt, fill=claudeIvory,
      minimum size=8pt, inner sep=0pt},
    tldot_done/.style={circle, fill=pulseOK, draw=pulseOK, minimum size=8pt, inner sep=0pt},
    tldot_wip/.style={circle, fill=pulseWarn, draw=pulseWarn, minimum size=8pt, inner sep=0pt},
    tldot_open/.style={circle, draw=claudeStone, line width=0.7pt, fill=claudeIvory,
      minimum size=8pt, inner sep=0pt},
    tlconn/.style={draw=claudeBorder, line width=0.8pt}
  ]
}{%
  \end{tikzpicture}\par
}

% Helper más simple — timeline declarativo
\NewDocumentCommand{\TimelineDots}{m}{%
  % #1 = lista comma-separated de "fecha|label|status|desc"
  % status: done|wip|open
  \begin{tikzpicture}[baseline=0pt,
    every node/.style={font=\UIFont},
    dotdone/.style={circle, fill=pulseOK, draw=pulseOK, minimum size=10pt, inner sep=0pt},
    dotwip/.style={circle, fill=pulseWarn, draw=pulseWarn, minimum size=10pt, inner sep=0pt},
    dotopen/.style={circle, fill=claudeIvory, draw=claudeStone, line width=0.8pt, minimum size=10pt, inner sep=0pt}]
    \pgfmathsetmacro{\tlw}{15}
    \draw[claudeBorder, line width=1pt] (0,0) -- (\tlw,0);
    \foreach \entry [count=\i from 0] in {#1} {
      \pgfmathsetmacro{\xpos}{\i*\tlw/4}
      \edef\temp{\noexpand\TimelineDot{\xpos}{\entry}}\temp
    }
  \end{tikzpicture}%
}

\newcommand{\TimelineDot}[2]{%
  % This is a placeholder; for full functionality use ClaudeTimelineH manually
}

% ── Press Quote (cita editorial con comilla decorativa grande) ──────────────
\NewDocumentEnvironment{PressQuote}{O{}}{%
  \par\vspace{0.7em}
  \begin{tcolorbox}[enhanced, colback=claudeParchment, colframe=claudeBorderSoft,
    boxrule=0pt, arc=0pt,
    borderline west={2.6pt}{0pt}{claudeTerracotta},
    coltext=claudeInk, left=22pt, right=14pt, top=14pt, bottom=14pt,
    overlay={
      \node[anchor=north west, text=claudeBorder, font={\rmfamily\fontsize{4cm}{0pt}\selectfont}]
        at ([xshift=-0.4em,yshift=0.1em]frame.north west) {``};
    },
    breakable
  ]
  \DisplayFont\itshape\fontsize{13}{18}\selectfont
  \def\PressQuoteAuthor{#1}%
}{%
  \IfNoValueOrEmptyTF{\PressQuoteAuthor}{}{%
    \par\vspace{0.5em}\hfill
    {\upshape\UIFont\scriptsize\color{claudeTerracotta}— \PressQuoteAuthor}%
  }
  \end{tcolorbox}\par
}

% ── Definition list / glossary ──────────────────────────────────────────────
\NewDocumentCommand{\DefnEntry}{m +m}{%
  \par\vspace{0.4em}\noindent
  {\DisplayFont\bfseries\color{claudeInk}#1}\quad
  {\color{claudeBorder}\rule[0.4ex]{0.8em}{0.5pt}}\quad
  {\color{claudeWarmText}#2}%
  \par
}

% ── Severity badges (5 niveles) ─────────────────────────────────────────────
\NewDocumentCommand{\SevCritical}{m}{%
  \tcbox[on line, colback=pulseBadBg, colframe=pulseBad, boxrule=0.6pt, arc=1.6mm,
    left=5pt, right=5pt, top=2pt, bottom=2pt]%
  {\UIFont\scriptsize\bfseries\color{pulseBad}\MakeUppercase{Crítico} \,\IconWarn[pulseBad]\, #1}%
}
\NewDocumentCommand{\SevHigh}{m}{%
  \tcbox[on line, colback=claudeError!10, colframe=claudeError, boxrule=0.5pt, arc=1.6mm,
    left=5pt, right=5pt, top=2pt, bottom=2pt]%
  {\UIFont\scriptsize\bfseries\color{claudeError}\MakeUppercase{Alto}\, #1}%
}
\NewDocumentCommand{\SevMedium}{m}{%
  \tcbox[on line, colback=pulseWarnBg, colframe=pulseWarn, boxrule=0.5pt, arc=1.6mm,
    left=5pt, right=5pt, top=2pt, bottom=2pt]%
  {\UIFont\scriptsize\bfseries\color{pulseWarn}\MakeUppercase{Medio}\, #1}%
}
\NewDocumentCommand{\SevLow}{m}{%
  \tcbox[on line, colback=pulseOKbg, colframe=pulseOK, boxrule=0.5pt, arc=1.6mm,
    left=5pt, right=5pt, top=2pt, bottom=2pt]%
  {\UIFont\scriptsize\bfseries\color{pulseOK}\MakeUppercase{Bajo}\, #1}%
}
\NewDocumentCommand{\SevInfo}{m}{%
  \tcbox[on line, colback=pulseIdentidadSoft, colframe=pulseIdentidad, boxrule=0.5pt, arc=1.6mm,
    left=5pt, right=5pt, top=2pt, bottom=2pt]%
  {\UIFont\scriptsize\bfseries\color{pulseIdentidad}\MakeUppercase{Info}\, \IconInfo[pulseIdentidad]\, #1}%
}

% ── Reglas decorativas ──────────────────────────────────────────────────────
\newcommand{\OrnamentRule}{%
  \par\vspace{0.5em}\noindent
  \makebox[\linewidth]{%
    {\color{claudeBorder}\rule[0.5ex]{0.40\linewidth}{0.4pt}}%
    \hspace{0.5em}%
    \tikz[baseline=-0.2ex]{%
      \fill[claudeTerracotta] (0,0) circle (0.18em);
      \fill[claudeTerracotta] (-0.55em,0) circle (0.10em);
      \fill[claudeTerracotta] (0.55em,0) circle (0.10em);%
    }%
    \hspace{0.5em}%
    {\color{claudeBorder}\rule[0.5ex]{0.40\linewidth}{0.4pt}}%
  }\par\vspace{0.3em}%
}
\newcommand{\DoubleRule}{%
  \par\vspace{0.4em}\noindent
  {\color{claudeBorder}\rule{\linewidth}{0.6pt}}\par\vspace{0.4ex}
  {\color{claudeBorder}\rule{\linewidth}{0.3pt}}\par\vspace{0.3em}%
}
\newcommand{\ArtRule}{%
  \par\vspace{0.3em}\noindent
  {\color{claudeTerracotta}\rule{2em}{1pt}}%
  {\color{claudeBorder}\rule[0.35ex]{0.84\linewidth}{0.3pt}}\par\vspace{0.3em}%
}

% ── SectionOpener: número marca de agua + título + subtítulo ────────────────
\NewDocumentCommand{\SectionOpener}{m m m}{%
  % {número}{título}{subtítulo}
  \par\vspace{0.6em}
  \begin{tikzpicture}[baseline=0pt]
    \node[anchor=north west, text=claudeTerracotta!28,
      font={\DisplayFont\bfseries\fontsize{4.4cm}{0pt}\selectfont}, inner sep=0pt]
      (num) at (0,0) {#1};
    \node[anchor=west, text=claudeInk,
      font={\DisplayFont\bfseries\Large}, inner sep=0pt, xshift=0.4em]
      at (num.east|-num.center) {#2};
    \node[anchor=north west, text=claudeStone,
      font={\UIFont\small\itshape}, inner sep=0pt, xshift=0.4em, yshift=-0.4em]
      at (num.east|-num.south) {#3};
    % Filete vertical entre número y texto
    \draw[claudeTerracotta, line width=1.2pt]
      ([xshift=0.15em, yshift=-0.3em]num.north east) --
      ([xshift=0.15em, yshift=0.3em]num.south east);
  \end{tikzpicture}\par
  \vspace{0.5em}
  {\color{claudeBorder}\rule{\linewidth}{0.5pt}}\par
  \vspace{0.6em}%
}

% ── Comparison (A vs B side by side) ────────────────────────────────────────
\NewDocumentEnvironment{Comparison}{m m}{%
  % {títuloA}{títuloB}
  \def\CompTitleA{#1}\def\CompTitleB{#2}%
  \par\vspace{0.4em}
  \begin{tcbraster}[raster columns=2, raster equal height=rows,
    raster column skip=10pt,
    enhanced, colback=claudeIvory, colframe=claudeBorder, boxrule=0.5pt, arc=2mm,
    left=10pt, right=10pt, top=8pt, bottom=8pt,
    coltext=claudeWarmText]
}{%
  \end{tcbraster}\par
}
\NewDocumentCommand{\CompCol}{m +m}{%
  \begin{tcolorbox}[title={\UIFont\bfseries\color{claudeInk}#1},
    coltitle=claudeInk]
    #2
  \end{tcolorbox}%
}

% ── Page Corner Ribbon (etiqueta esquina superior derecha) ──────────────────
\NewDocumentCommand{\CornerRibbon}{O{claudeTerracotta} m}{%
  \begin{tikzpicture}[remember picture, overlay]
    \node[anchor=north east, xshift=-12mm, yshift=-10mm,
      fill=#1, text=claudeIvory, rotate=0, inner sep=4pt,
      font=\UIFont\scriptsize\bfseries]
      at (current page.north east) {\MakeUppercase{#2}};
  \end{tikzpicture}%
}

% ── DropCap (alternativa a lettrine, más controlable) ───────────────────────
\NewDocumentCommand{\DropCap}{m m}{%
  % {primera letra}{resto del párrafo}
  \lettrine[lines=3, findent=0.2em, nindent=0pt]{%
    \DisplayFont\bfseries\color{claudeTerracotta}#1}{}#2%
}

% ── Tag (etiqueta inline mínima) ────────────────────────────────────────────
\NewDocumentCommand{\Tag}{O{claudeStone} m}{%
  \tcbox[on line, colback=#1!10, colframe=#1, boxrule=0.4pt, arc=1mm,
    left=4pt, right=4pt, top=1pt, bottom=1pt]%
  {\UIFont\scriptsize\color{#1}#2}%
}

% ── Quotebox para epígrafes de capítulo ─────────────────────────────────────
\newtcolorbox{claudeepigraph}{
  enhanced, breakable, colback=claudeParchment, colframe=claudeParchment,
  boxrule=0pt, left=14pt, right=14pt, top=4pt, bottom=4pt,
  borderline west={1pt}{0pt}{claudeTerracotta},
  coltext=claudeOliveGray,
  fontupper=\itshape\DisplayFont\small,
  before skip=0.4em, after skip=0.6em
}

% ── Marca de espacio (rule de fondo gris para llamados) ─────────────────────
\NewDocumentCommand{\Highlight}{O{claudeTerracotta!18} m}{%
  \tikz[baseline=(X.base)]{\node[fill=#1, inner sep=1pt, outer sep=0pt] (X) {#2};}%
}

% ── Gridrule: para split de columnas inline ─────────────────────────────────
\newcommand{\GridSep}{\hspace{0.6em}{\color{claudeBorder}\textbar}\hspace{0.6em}}

% ── ChapterMark estilo journal ──────────────────────────────────────────────
\NewDocumentCommand{\ChapterMark}{m m}{%
  % {número}{título}
  \par\vspace{0.8em}
  {\UIFont\fontsize{8.5}{10}\selectfont\color{claudeStone}\MakeUppercase{Capítulo #1}}\par
  \vspace{0.1em}
  {\DisplayFont\bfseries\fontsize{20}{24}\selectfont\color{claudeInk}#2}\par
  \vspace{0.3em}
  {\color{claudeTerracotta}\rule{2em}{1.2pt}}\par
  \vspace{0.6em}%
}

% ═══════════════════════════════════════════════════════════════════════════
%  SOPORTE TÉCNICO ── código, tablas, UML/ER y compatibilidad Pandoc
% ═══════════════════════════════════════════════════════════════════════════

% ── Código: listings con paleta Claude editorial ───────────────────────────
\lstdefinestyle{claudeCode}{
  basicstyle=\ttfamily\small\color{claudeCodeText},
  keywordstyle=\bfseries\color{claudeCodeKeyword},
  keywordstyle=[2]\bfseries\color{claudeCodeFunction},
  keywordstyle=[3]\bfseries\color{pulseDecision},
  stringstyle=\color{claudeCodeString},
  commentstyle=\itshape\color{claudeCodeComment},
  identifierstyle=\color{claudeCodeText},
  numberstyle=\scriptsize\color{claudeStone},
  backgroundcolor=\color{claudeCodeBg},
  rulecolor=\color{claudeCodeRule},
  columns=fullflexible,
  keepspaces=true,
  showstringspaces=false,
  breaklines=true,
  breakatwhitespace=true,
  tabsize=2,
  numbers=left,
  numbersep=8pt,
  frame=single,
  framerule=0.4pt,
  framesep=6pt,
  xleftmargin=1.4em,
  framexleftmargin=1.2em,
  aboveskip=0.75em,
  belowskip=0.75em,
  captionpos=b,
  literate=
    {á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1
    {Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1
    {ñ}{{\~n}}1 {Ñ}{{\~N}}1 {¿}{{?`}}1 {¡}{{!`}}1
    {→}{{$\rightarrow$}}1 {←}{{$\leftarrow$}}1 {↔}{{$\leftrightarrow$}}1
    {≥}{{$\geq$}}1 {≤}{{$\leq$}}1 {…}{{\ldots}}1
}
\lstset{style=claudeCode}

\lstdefinelanguage{JavaScript}{
  morekeywords={async,await,break,case,catch,class,const,continue,debugger,default,delete,do,else,export,extends,finally,for,from,function,if,import,in,instanceof,let,new,of,return,static,super,switch,this,throw,try,typeof,var,void,while,yield},
  morekeywords=[2]{Array,Boolean,Date,Error,JSON,Map,Math,Number,Object,Promise,RegExp,Set,String,console,document,window},
  sensitive=true,
  morecomment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]",
  morestring=[b]'
}

\lstdefinelanguage{TypeScript}{
  morekeywords={abstract,any,as,async,await,boolean,break,case,catch,class,const,continue,debugger,declare,default,delete,do,else,enum,export,extends,false,finally,for,from,function,if,implements,import,in,infer,instanceof,interface,keyof,let,module,namespace,never,new,null,number,object,of,private,protected,public,readonly,return,static,string,super,switch,this,throw,true,try,type,typeof,undefined,unknown,var,void,while,yield},
  morekeywords=[2]{Array,Boolean,Date,Error,JSON,Map,Math,Number,Object,Promise,Record,RegExp,Set,String},
  sensitive=true,
  morecomment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]",
  morestring=[b]'
}

\lstdefinelanguage{JSON}{
  morestring=[b]",
  morekeywords={true,false,null},
  sensitive=true
}

\lstdefinelanguage{CSS}{
  morekeywords={align-items,background,background-color,border,border-color,border-radius,box-shadow,color,display,flex,font-family,font-size,font-weight,gap,grid,grid-template-columns,height,justify-content,line-height,margin,max-width,min-height,padding,position,text-align,text-transform,width},
  sensitive=true,
  morecomment=[s]{/*}{*/},
  morestring=[b]",
  morestring=[b]'
}

\lstdefinelanguage{HTML}{
  sensitive=false,
  morecomment=[s]{<!--}{-->},
  morestring=[b]",
  morestring=[b]',
  alsoletter={<>=-},
  morekeywords={html,head,body,main,section,article,aside,header,footer,nav,div,span,h1,h2,h3,h4,p,a,img,button,form,label,input,textarea,script,style,link,meta,table,thead,tbody,tr,th,td,ul,ol,li,code,pre},
  morekeywords=[2]{class,id,href,src,alt,title,type,name,value,role,aria-label,rel,content,charset,lang}
}

\lstdefinelanguage{XML}{
  sensitive=false,
  morecomment=[s]{<!--}{-->},
  morestring=[b]",
  alsoletter={<>=-},
  morekeywords={xml,root,node,item,entry,value,meta,field}
}

\lstdefinelanguage{SQL}{
  morekeywords={SELECT,FROM,WHERE,JOIN,LEFT,RIGHT,INNER,OUTER,ON,GROUP,BY,ORDER,HAVING,INSERT,INTO,VALUES,UPDATE,SET,DELETE,CREATE,ALTER,DROP,TABLE,VIEW,INDEX,PRIMARY,KEY,FOREIGN,REFERENCES,NOT,NULL,DEFAULT,AND,OR,AS,CASE,WHEN,THEN,ELSE,END,ASC,DESC,DISTINCT,IN,NOT,LIKE,BETWEEN,IS,COUNT,SUM,AVG,MAX,MIN,ROUND,TRUNC,FLOOR,CEIL,ABS,NVL,TO_DATE,MONTHS_BETWEEN,ADD_MONTHS,CURRENT_DATE,DUAL},
  sensitive=false,
  morecomment=[l]{--},
  morecomment=[s]{/*}{*/},
  morestring=[b]'
}

\lstdefinelanguage{VBA}{
  morekeywords={Dim,Set,Let,Get,New,Option,Explicit,Private,Public,Sub,Function,End,If,Then,Else,ElseIf,For,To,Next,Step,Select,Case,Do,While,Until,Loop,With,Wend,Exit,On,Error,Resume,GoTo,Call,Const,Enum,Property,Boolean,Integer,Long,Single,Double,String,Object,Variant},
  sensitive=false,
  morecomment=[l]{'},
  morestring=[b]"
}

\lstdefinelanguage{Java}{
  morekeywords={abstract,assert,break,case,catch,class,continue,default,do,else,enum,exports,extends,final,finally,for,if,implements,import,instanceof,interface,module,native,new,package,private,protected,public,requires,return,static,strictfp,super,switch,synchronized,this,throw,throws,transient,try,var,volatile,while},
  morekeywords=[2]{boolean,byte,char,double,float,int,long,short,String,Boolean,Byte,Character,Double,Float,Integer,Long,Short,Number,Object,Void,void},
  morekeywords=[3]{null,true,false},
  sensitive=true,
  morecomment=[l]{//},
  morecomment=[s]{/*}{*/},
  morecomment=[s]{/**}{*/},
  morestring=[b]",
  morestring=[b]'
}

\lstdefinelanguage{C}{
  morekeywords={auto,break,case,char,const,continue,default,do,double,else,enum,extern,float,for,goto,if,inline,int,long,register,restrict,return,short,signed,sizeof,static,struct,switch,typedef,union,unsigned,void,volatile,while},
  sensitive=true,
  morecomment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]"
}

\lstdefinelanguage{Cpp}{
  morekeywords={alignas,alignof,asm,auto,bool,break,case,catch,char,class,const,const_cast,constexpr,continue,decltype,default,delete,do,double,dynamic_cast,else,enum,explicit,export,extern,false,float,for,friend,goto,if,inline,int,long,mutable,namespace,new,noexcept,nullptr,operator,private,protected,public,register,reinterpret_cast,return,short,signed,sizeof,static,static_assert,static_cast,struct,switch,template,this,throw,true,try,typedef,typeid,typename,union,unsigned,using,virtual,void,volatile,wchar_t,while},
  sensitive=true,
  morecomment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]",
  morestring=[b]'
}

\lstdefinelanguage{CSharp}{
  morekeywords={abstract,as,base,bool,break,byte,case,catch,char,checked,class,const,continue,decimal,default,delegate,do,double,else,enum,event,explicit,extern,false,finally,fixed,float,for,foreach,goto,if,implicit,in,int,interface,internal,is,lock,long,namespace,new,null,object,operator,out,override,params,private,protected,public,readonly,ref,return,sbyte,sealed,short,sizeof,stackalloc,static,string,struct,switch,this,throw,true,try,typeof,uint,ulong,unchecked,unsafe,ushort,using,var,virtual,void,volatile,while},
  sensitive=true,
  morecomment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]"
}

\newtcblisting{ClaudeCode}[2][]{%
  enhanced, breakable, listing only,
  colback=claudeCodeBg, colframe=claudeCodeRule,
  boxrule=0.5pt, arc=2mm,
  left=4pt, right=4pt, top=4pt, bottom=4pt,
  borderline west={1.6pt}{0pt}{claudeTerracotta},
  listing options={style=claudeCode,language=#2},
  #1
}

\newtcblisting{ClaudeConsole}[1][]{%
  enhanced, breakable, listing only,
  colback=claudeDeepInk, colframe=claudeCharcoal,
  boxrule=0.5pt, arc=2mm,
  left=4pt, right=4pt, top=4pt, bottom=4pt,
  listing options={
    basicstyle=\ttfamily\small\color{claudeIvory},
    keywordstyle=\color{claudeIvory},
    commentstyle=\color{claudeWarmSilver},
    stringstyle=\color{claudeWarmSilver},
    columns=fullflexible,
    keepspaces=true,
    showstringspaces=false,
    breaklines=true,
    numbers=none
  },
  #1
}

\NewDocumentCommand{\CodeInline}{m}{%
  \tcbox[on line, colback=claudeCodeBg, colframe=claudeCodeRule,
    boxrule=0.3pt, arc=1mm, left=3pt, right=3pt, top=1pt, bottom=1pt]%
  {\ttfamily\scriptsize\color{claudeCodeText}#1}% 
}

\NewDocumentCommand{\SQLTerm}{m}{\CodeInline{#1}}

\newtcolorbox{ClaudeOutput}[1][]{
  enhanced,breakable,
  colback=claudeCodeBgSoft,
  colframe=claudeCodeRule,
  boxrule=0.45pt,
  arc=2mm,
  left=9pt,
  right=9pt,
  top=6pt,
  bottom=6pt,
  title={\UIFont\bfseries\color{claudeInk}Output},
  #1
}

\newtcolorbox{ClaudeExercise}[2][]{
  enhanced,breakable,
  colback=claudeIvory,
  colframe=claudeTerracotta,
  boxrule=0.55pt,
  arc=2mm,
  borderline west={2pt}{0pt}{claudeTerracotta},
  title={\UIFont\bfseries\color{claudeInk}#2},
  left=10pt,
  right=10pt,
  top=7pt,
  bottom=7pt,
  #1
}

\newtcolorbox{ClaudeSolution}[1][]{
  enhanced,breakable,
  colback=pulseOKbg!45,
  colframe=pulseOK,
  boxrule=0.45pt,
  arc=2mm,
  title={\UIFont\bfseries\color{claudeInk}Solución},
  left=10pt,
  right=10pt,
  top=7pt,
  bottom=7pt,
  #1
}

% ── Compatibilidad Pandoc Highlighting ─────────────────────────────────────
\providecommand{\VerbBar}{|}
\providecommand{\VERB}{\Verb[commandchars=\\\{\}]}
\DefineVerbatimEnvironment{Highlighting}{Verbatim}{breaklines,fontsize=\small,commandchars=\\\{\}}
\newenvironment{Shaded}{%
  \begin{tcolorbox}[enhanced,breakable,colback=claudeCodeBg,
    colframe=claudeCodeRule,boxrule=0.4pt,arc=2mm,
    left=6pt,right=6pt,top=5pt,bottom=5pt,
    borderline west={1.4pt}{0pt}{claudeTerracotta}]
}{\end{tcolorbox}}

\providecommand{\AlertTok}[1]{\textcolor{claudeError}{\textbf{#1}}}
\providecommand{\AnnotationTok}[1]{\textcolor{pulseIdentidad}{\textbf{\textit{#1}}}}
\providecommand{\AttributeTok}[1]{\textcolor{claudeCodeNumber}{#1}}
\providecommand{\BaseNTok}[1]{\textcolor{claudeCodeNumber}{#1}}
\providecommand{\BuiltInTok}[1]{#1}
\providecommand{\CharTok}[1]{\textcolor{claudeCodeString}{#1}}
\providecommand{\CommentTok}[1]{\textcolor{claudeCodeComment}{\textit{#1}}}
\providecommand{\CommentVarTok}[1]{\textcolor{claudeCodeComment}{\textbf{\textit{#1}}}}
\providecommand{\ConstantTok}[1]{\textcolor{claudeCodeString}{#1}}
\providecommand{\ControlFlowTok}[1]{\textcolor{claudeCodeKeyword}{\textbf{#1}}}
\providecommand{\DataTypeTok}[1]{\textcolor{pulseDecision}{#1}}
\providecommand{\DecValTok}[1]{\textcolor{claudeCodeNumber}{#1}}
\providecommand{\DocumentationTok}[1]{\textcolor{claudeCodeComment}{\textit{#1}}}
\providecommand{\ErrorTok}[1]{\textcolor{claudeError}{\textbf{#1}}}
\providecommand{\ExtensionTok}[1]{#1}
\providecommand{\FloatTok}[1]{\textcolor{claudeCodeNumber}{#1}}
\providecommand{\FunctionTok}[1]{\textcolor{claudeCodeFunction}{#1}}
\providecommand{\ImportTok}[1]{#1}
\providecommand{\InformationTok}[1]{\textcolor{pulseIdentidad}{\textbf{\textit{#1}}}}
\providecommand{\KeywordTok}[1]{\textcolor{claudeCodeKeyword}{\textbf{#1}}}
\providecommand{\NormalTok}[1]{#1}
\providecommand{\OperatorTok}[1]{\textcolor{claudeStone}{#1}}
\providecommand{\OtherTok}[1]{\textcolor{pulseDecision}{#1}}
\providecommand{\PreprocessorTok}[1]{\textcolor{claudeCodeWarning}{#1}}
\providecommand{\RegionMarkerTok}[1]{#1}
\providecommand{\SpecialCharTok}[1]{\textcolor{claudeCodeString}{#1}}
\providecommand{\SpecialStringTok}[1]{\textcolor{claudeCodeString}{#1}}
\providecommand{\StringTok}[1]{\textcolor{claudeCodeString}{#1}}
\providecommand{\VariableTok}[1]{\textcolor{claudeCodeFunction}{#1}}
\providecommand{\VerbatimStringTok}[1]{\textcolor{claudeCodeString}{#1}}
\providecommand{\WarningTok}[1]{\textcolor{claudeCodeWarning}{\textbf{\textit{#1}}}}
\providecommand{\tightlist}{\setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}
\providecommand{\passthrough}[1]{#1}

% ── Tablas técnicas planas ─────────────────────────────────────────────────
\newcolumntype{L}{>{\RaggedRight\arraybackslash}X}
\newcolumntype{R}{>{\RaggedLeft\arraybackslash}X}
\newcolumntype{P}[1]{>{\Centering\arraybackslash}p{#1}}
\newcolumntype{M}[1]{>{\Centering\arraybackslash}m{#1}}

\NewDocumentCommand{\ClaudeTableSetup}{}{%
  \rowcolors{2}{tableLineOne}{tableLineTwo}%
  \arrayrulecolor{claudeCodeRule}%
  \renewcommand{\arraystretch}{1.35}%
}
\NewDocumentCommand{\ClaudeTableHeader}{}{%
  \rowcolor{claudeBorderSoft}\bfseries\color{claudeTerracotta}%
}
\NewDocumentEnvironment{ClaudeTable}{m}{%
  \begingroup
  \ClaudeTableSetup
  \begin{tabularx}{\linewidth}{#1}
}{%
  \end{tabularx}
  \endgroup
}

% ── Diagramas: estilos nativos, sin depender de paquetes externos ──────────
\makeatletter
\pgfarrowsdeclare{claude crow}{claude crow}{%
  \pgfarrowsleftextend{+-.5\pgflinewidth}%
  \pgfarrowsrightextend{+.5\pgflinewidth}%
}{%
  \pgfutil@tempdima=0.5pt%
  \advance\pgfutil@tempdima by .25\pgflinewidth%
  \pgfsetdash{}{+0pt}%
  \pgfsetmiterjoin%
  \pgfpathmoveto{\pgfqpoint{0pt}{-6\pgfutil@tempdima}}%
  \pgfpathlineto{\pgfqpoint{-6\pgfutil@tempdima}{0pt}}%
  \pgfpathlineto{\pgfqpoint{0pt}{6\pgfutil@tempdima}}%
  \pgfusepathqstroke%
}
\makeatother

\tikzset{
  claude diagram canvas/.style={
    font=\UIFont\small,
    text=claudeWarmText,
    >=Latex
  },
  claude diagram node/.style={
    draw=claudeBorder,
    fill=claudeIvory,
    text=claudeInk,
    rounded corners=2pt,
    line width=0.5pt,
    align=center,
    inner sep=6pt
  },
  claude uml class/.style={
    rectangle split,
    rectangle split parts=3,
    rectangle split part align={center,left,left},
    draw=claudeBorder,
    fill=claudeIvory,
    text=claudeInk,
    rounded corners=2pt,
    line width=0.55pt,
    minimum width=3.5cm,
    font=\UIFont\small
  },
  claude uml interface/.style={
    claude uml class,
    fill=pulseIdentidadSoft
  },
  claude uml relation/.style={
    draw=claudeStone,
    line width=0.65pt,
    -Latex
  },
  claude uml inherit/.style={
    draw=claudeStone,
    line width=0.65pt,
    -{Triangle[open,length=5pt,width=6pt]}
  },
  claude uml dependency/.style={
    draw=claudeStone,
    line width=0.65pt,
    dashed,
    -Latex
  },
  claude er entity/.style={
    rectangle,
    draw=claudeBorder,
    fill=claudeIvory,
    text=claudeInk,
    very thick,
    minimum width=6em,
    minimum height=3em,
    align=center,
    font=\UIFont\small
  },
  claude er weak entity/.style={
    claude er entity,
    double,
    double distance=2pt
  },
  claude er attribute/.style={
    ellipse,
    draw=claudeBorder,
    fill=claudeCodeBgSoft,
    text=claudeWarmText,
    thick,
    minimum width=5em,
    minimum height=2em,
    align=center,
    font=\UIFont\small
  },
  claude er relationship/.style={
    diamond,
    draw=claudeTerracotta,
    fill=claudeTerracotta!10,
    text=claudeInk,
    thick,
    aspect=1.45,
    align=center,
    font=\UIFont\small
  },
  claude er isa/.style={
    isosceles triangle,
    isosceles triangle apex angle=60,
    shape border rotate=90,
    draw=pulseDecision,
    fill=pulseDecision!10,
    text=claudeInk,
    thick,
    minimum size=3em,
    align=center,
    font=\UIFont\small
  },
  claude er link/.style={
    draw=claudeStone,
    thick,
    -Latex
  },
  claude er total/.style={
    claude er link,
    double,
    double distance=1.5pt
  },
  claude er one to many/.style={
    claude er link,
    -claude crow
  },
  claude er many to one/.style={
    claude er link,
    claude crow-
  },
  claude er many to many/.style={
    claude er link,
    claude crow-claude crow
  }
}

\NewDocumentCommand{\ClaudeUMLClass}{O{} m m m}{%
  \node[claude uml class,#1] (#2)
    {\textbf{#2}\nodepart{second}\begin{tabular}{@{}l@{}}#3\end{tabular}
     \nodepart{third}\begin{tabular}{@{}l@{}}#4\end{tabular}};%
}
\NewDocumentCommand{\ClaudeUMLInterface}{O{} m m m}{%
  \node[claude uml interface,#1] (#2)
    {{\scriptsize\color{claudeStone}\textless\textless interface\textgreater\textgreater}\\\textbf{#2}
     \nodepart{second}\begin{tabular}{@{}l@{}}#3\end{tabular}
     \nodepart{third}\begin{tabular}{@{}l@{}}#4\end{tabular}};%
}
\NewDocumentCommand{\ClaudeUMLRelation}{O{claude uml relation} m m O{}}{%
  \draw[#1] (#2) -- node[midway, fill=claudeParchment, inner sep=2pt,
    font=\UIFont\scriptsize\color{claudeStone}] {#4} (#3);%
}

\NewDocumentCommand{\ClaudeEREntity}{O{} m m}{\node[claude er entity,#1] (#2) {#3};}
\NewDocumentCommand{\ClaudeERWeakEntity}{O{} m m}{\node[claude er weak entity,#1] (#2) {#3};}
\NewDocumentCommand{\ClaudeERAttribute}{O{} m m}{\node[claude er attribute,#1] (#2) {#3};}
\NewDocumentCommand{\ClaudeERRelationship}{O{} m m}{\node[claude er relationship,#1] (#2) {#3};}
\NewDocumentCommand{\ClaudeERIsa}{O{} m m}{\node[claude er isa,#1] (#2) {#3};}
\NewDocumentCommand{\ClaudeERLink}{O{claude er link} m m O{}}{%
  \draw[#1] (#2) -- node[midway, fill=claudeParchment, inner sep=2pt,
    font=\UIFont\scriptsize\color{claudeStone}] {#4} (#3);%
}
\NewDocumentCommand{\ClaudeEROneToMany}{m m O{}}{\ClaudeERLink[claude er one to many]{#1}{#2}[#3]}
\NewDocumentCommand{\ClaudeERManyToOne}{m m O{}}{\ClaudeERLink[claude er many to one]{#1}{#2}[#3]}
\NewDocumentCommand{\ClaudeERManyToMany}{m m O{}}{\ClaudeERLink[claude er many to many]{#1}{#2}[#3]}
\NewDocumentCommand{\ClaudeKey}{m}{\underline{#1}}
\NewDocumentCommand{\ClaudeWeakKey}{m}{\dashuline{#1}}

\newtcolorbox{ClaudeDiagram}[1][]{
  enhanced, breakable,
  colback=claudeIvory,
  colframe=claudeBorder,
  boxrule=0.5pt,
  arc=2mm,
  left=10pt,
  right=10pt,
  top=8pt,
  bottom=8pt,
  #1
}

% ╚═══════════════════════════════════════════════════════════════════════════╝
\endinput
