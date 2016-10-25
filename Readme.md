# 東京図書 MathPlus series classfile
```
mathpulus.cls     クラスファイル
macrosMP.sty     シリーズ用マクロセット
shadowtext.sty   章見出し装飾補助
fontmap.sty        フォント設定
otf.sty                 フォント設定
multicol.sty         texlive2015用
make.bat            latex処理用のscript sample
main.tex             latexプリアンブルの雛形
fontmap/
            lm.fdd                   lmodernサイズ補正
            otf-ipaex.map        和文map
            otf-up-ipaex.map
            ptex-ipaex.map
            uptex-ipaex.map

```


### プリアンブル例

```latex
\documentclass[4x6t/12Q,gtsf,%
%              uplatex,%% LaTeX文書がutf8の場合
                 useotf,dvipdfmx]{mathpulus}

\usepackage{graphicx,xcolor}
% \usepackage[utf8]{inputenc}%% LaTeX文書がutf8の場合
\usepackage[LY1,TS1,OT1,T1]{fontenc}
\usepackage{lmodern}
\usepackage[deluxe,scale=1]{otf}[2013/11/17]
\usepackage{makeidx,multicol}
\usepackage{macrosMP}

%% ipaexと小塚フォント設定
\def\KozuGo{KozGoPro-Bold.otf}%% 章見出しに割り当てる小塚ゴシックのファイル名
\usepackage{fontmap}

\includeonly{
	Chap01,
	}

\begin{document}
\include{Chap01}
\end{document}

```
`\def\KozuGo{KozGoPro-Bold.otf}` では章見出しに割り当てる小塚ゴシックの**ファイル名**を指定する．
小塚ゴシックは，章見出しでつかうため，本文のipaexのゴシックよりは太いものを使いたいが，
処理するPCに入っている小塚ゴシックが不明なため，マクロで入れ替えられるようにした．



