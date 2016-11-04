# MATH PLUS Series Classfile

*変更履歴*
* 2016/11/04 beta3 「ガロアとガロア理論」入稿に伴い指定にあったノンブル書体をgeorgiaへ．章見出しに影を追加．
* 2016/11/01 beta2 パッケージロードのバージョンチェックを追加（組版変更なし）
* 2016/10/21 beta1 見本組


```
mathpulus.cls     クラスファイル
macrosMP.sty      シリーズ用マクロセット
shadowtext.sty    章見出し装飾補助
fontmap.sty       フォント設定
otf.sty           フォント設定
multicol.sty      ^*
uline--.sty       underline macropackage
base.tex          latexプリアンブルの雛形
georgia.sty       Georgiaをノンブル書体へ適応させるpackage
fontmap/
            lm.fdd               lmodernサイズ補正
            otf-ipaex.map        ipexのmap
            otf-up-ipaex.map
            ptex-ipaex.map
            uptex-ipaex.map

```
 `^*` texlive2015で収録されているものはpLaTeXのtombowオプションと相性が悪いため正常に動くものを念のために添付

章見出しと節見出しに~~小塚ゴシックProB~~游ゴシックMとLを割り当てている．これは，プリアンブルで設定できるように表に出してある．

従属欧文は，TTC形式の設定に問題があるので，MにはMelvetica (phv)，LにはCMBraight (cmbr)を割り当てた．

```
\newcommand{\YugothM}{:0:YUGOTHM.TTC}
\newcommand{\YugothMaj}{:0:YUGOTHM.TTC/AJ16}
\newcommand{\YugothL}{:0:YUGOTHL.TTC}
\newcommand{\YugothLaJ}{:0:YUGOTHL.TTC/AJ16}
\usepackage{fontmap}
```

TTC用のPrefixとAJ1用のPostfixを付加して名前置換マクロを定義してその名前で，fontmap.styでmappingするようにした．
後日変更の可能性があるため，他の実フォントへの切り替えを明示するようしている．
fontmap.styでは，ipexへのmap割り当ても行っている．

### プリアンブル例

```latex
\documentclass[4x6t/12Q,gtsf,%
%              uplatex,%% LaTeX文書がutf8の場合
              useotf,dvipdfmx]{mathpulus}
\usepackage{graphicx,xcolor}
\usepackage{amsmath,amssymb}
%\usepackage[utf8]{inputenc}%% LaTeX文書がutf8の場合
\usepackage{textcomp}
\usepackage[LY1,TS1,OT1,T1]{fontenc}
\usepackage{lmodern}
\usepackage[deluxe,scale=1]{otf}[2013/11/17]
\usepackage{makeidx,multicol}
\usepackage{comment}%*
\usepackage{okumacro}%*
\usepackage{fancybox}%*
\usepackage{ascmac}%*
\usepackage{uline--,macrosMP}

%% 游フォント設定
\newcommand{\YugothM}{:0:YUGOTHM.TTC}
\newcommand{\YugothMaj}{:0:YUGOTHM.TTC/AJ16}
\newcommand{\YugothL}{:0:YUGOTHL.TTC}
\newcommand{\YugothLaJ}{:0:YUGOTHL.TTC/AJ16}
\usepackage{fontmap}

\includeonly{
	Chap01,
	}

\begin{document}
\include{Chap01}
\end{document}
```
* `%*`以外は最低限必要な設定
* otfパッケージは`scale`オプションが必須なので，`2013/11/17`以降のバージョンが必要．


~~`\def\KozuGo{KozGoPro-Bold.otf}` では章見出しに割り当てる小塚ゴシックの**ファイル名**を指定する．
小塚ゴシックは，章見出しでつかうため，本文のipaexのゴシックよりは太いものを使いたいが，
処理するPCに入っている小塚ゴシックが不明なため，マクロで入れ替えられるようにした．~~



