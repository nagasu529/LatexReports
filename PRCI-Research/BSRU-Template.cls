\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{BSRU-Template}

\LoadClass[12pt,a4paper]{report}

% ----------------------------
% PAGE LAYOUT (STEP 8 ใส่ตรงนี้ ✅)
% ----------------------------
\RequirePackage[
left=3.75cm,
right=2.5cm,
top=3.75cm,
bottom=2.5cm
]{geometry}

% ----------------------------
% FONT (TH SARABUN)
% ----------------------------
\RequirePackage{fontspec}

\setmainfont{THSarabun}[
    Path = fonts/,
    Extension = .ttf,
    UprightFont = *,
    BoldFont = * Bold,
    ItalicFont = * Italic,
    BoldItalicFont = * BoldItalic
]

% ----------------------------
% SPACING (เหมือน Word)
% ----------------------------
\RequirePackage{setspace}
\setstretch{1.28}

% ขนาดตัวอักษร 16 pt
\renewcommand{\normalsize}{\fontsize{16}{20}\selectfont}
\normalsize

% ย่อหน้า
\setlength{\parindent}{1.27cm}
\setlength{\parskip}{0pt}

% justify
\RequirePackage{ragged2e}
\justifying

% ----------------------------
% PACKAGES พื้นฐาน
% ----------------------------
\RequirePackage{graphicx}
\RequirePackage{titlesec}
\RequirePackage{caption}

% ----------------------------
% CHAPTER FORMAT
% ----------------------------
\renewcommand{\chaptername}{บทที่}

\titleformat{\chapter}
{\centering\bfseries\fontsize{18}{22}\selectfont}
{บทที่ \thechapter}{1em}{}

\titleformat{\section}
{\bfseries\fontsize{16}{18}\selectfont}
{\thesection}{1em}{}

% ----------------------------
% TABLE / FIGURE
% ----------------------------
\renewcommand{\tablename}{ตารางที่}
\renewcommand{\figurename}{ภาพที่}

\captionsetup{
    font={small},
    labelfont=bf
}
% ----------------------------
% FIX OVERFLOW (สำคัญมาก)
% ----------------------------
\RequirePackage{microtype}

\setlength{\emergencystretch}{3em}

\tolerance=1000
\emergencystretch=1em
\hbadness=10000

\sloppy

\XeTeXlinebreaklocale "th"
\XeTeXlinebreakskip = 0pt plus 1pt

\RequirePackage{microtype}

% ปิด protrusion (ตัวการที่ทำให้ warning)
\microtypesetup{
    protrusion=false
}

% --- equation size ---


% --- spacing ---
\setlength{\jot}{10pt}