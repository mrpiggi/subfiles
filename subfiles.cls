%%
%% This is file `subfiles.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% subfiles.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright 2002, 2012 Federico Garcia; 2018, 2019 Gernot Salzer
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Gernot Salzer (salzer@logic.at).
%% 
%% This work consists of the files subfiles.dtx and subfiles.ins
%% and the derived files subfiles.sty and subfiles.pdf
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{subfiles}[2019/10/25 v1.4 Multi-file projects (class)]
\DeclareOption*{\typeout{Preamble taken from file `\CurrentOption'}%
    \let\preamble@file\CurrentOption}
\ProcessOptions
\let\subfiles@documentclass\documentclass
\let\documentclass\LoadClass\relax
\RequirePackage{verbatim}
\let\subfiles@comment\comment
\let\subfiles@endcomment\endcomment
\RequirePackage{import}
\def\subfiles@split#1{%
  \edef\subfiles@filename{#1}%
  \def\subfiles@dir{}%
  \def\subfiles@base{}%
  \def\subfiles@sep{}%
  \expandafter\subfiles@split@\subfiles@filename/\@nil/%
}
\def\subfiles@split@#1/{%
  \def\tmp{#1}%
  \ifx\tmp\@nnil
    \let\subfiles@next\relax
  \else
    \edef\subfiles@dir{\subfiles@dir\subfiles@base\subfiles@sep}%
    \def\subfiles@base{#1}%
    \def\subfiles@sep{/}%
    \let\subfiles@next\subfiles@split@
  \fi
  \subfiles@next
}
\subfiles@split{\preamble@file}
\subimport{\subfiles@dir}{\subfiles@base}
{\catcode`\@=11
\global\let\document\subfiles@document
\global\let\enddocument\subfiles@enddocument
\global\let\documentclass\subfiles@documentclass
\global\let\subfiles@document\undefined
\global\let\subfiles@enddocument\undefined
\global\let\subfiles@documentclass\undefined
}
\endinput
%%
%% End of file `subfiles.cls'.