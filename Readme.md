# MATH PLUS Series Classfile

*変更履歴*
* 2016/11/30 v0.9  「ガロアとガロア理論」での設定を反映
* 2016/11/16 beta4 「ガロアとガロア理論」では版面変更 class option追加→ [Garoa]
* 2016/11/04 beta3 「ガロアとガロア理論」入稿に伴い指定にあったノンブル書体をgeorgiaへ．章見出しに影を追加．
* 2016/11/01 beta2  パッケージロードのバージョンチェックを追加（組版変更なし）
* 2016/10/21 beta1  見本組


| ファイル名 | 用途|
|--------|--------|
| mathpulus.cls  |    クラスファイル|
| macrosMP.sty   |     シリーズ用マクロセット| 
| shadowtext.sty  |    章見出し装飾補助| 
| fontmap.sty     |    フォント設定| 
| otf.sty         |    フォント設定| 
| multicol.sty   |     ^*| 
| uline--.sty     |   for linebreak underline| 
| georgia.sty   |   Georgiaをノンブル書体へ適応させるpackage| 
| a_ed3rjc.enc  |      ノンブル書体用のencファイル| 
| indexhead.sty   |    索引のヘッダ体裁|

`^*` texlive2015で収録されているものはpLaTeXのtombowオプションと相性が悪いため正常に動くものを念のために添付


| ファイル名 | 用途|
|--------|--------|
| main.tex       |     プリアンブルを記した元締ファイル（コンパイル対象）| 
| MathPlus-sample.tex |  sampleのtexファイル| 
| fontmap/ | フォントのmapファイル| 
| MathPlusLogo/  |    MathPlusのlogo | 






章見出しに小塚ゴシックB，節見出しに小塚ゴシックMを割り当てているが，
デフォルトでは，ipaexゴシックを割り当ててある．

fontmap.styでは，ipexへのmap割り当ても行っている．

### オプション[Garoa]新設

ガロアとガロア理論の体裁は，クラスオプションに `[Garoa]` を追加する．

** 例 **
```
\documentclass[gtsf,useotf,dvipdfmx,Garoa]{mathpulus}
```

### プリアンブル例（未完）

```latex
\documentclass[gtsf,useotf,dvipdfmx,%
%4x6t/12Q,%    見本組初期の設定
Garoa,%        ガロアの設定
%              uplatex,%% LaTeX文書がutf8の場合
              ]{mathpulus}
\usepackage{graphicx,xcolor}
\usepackage{amsmath,amssymb}
%\usepackage[utf8]{inputenc}%% LaTeX文書がutf8の場合
\usepackage{textcomp}
\usepackage[LY1,TS1,OT1,T1]{fontenc}
\usepackage{lmodern}
\usepackage[deluxe,scale=1]{otf}[2013/11/17]%% added by miya
\usepackage{makeidx,multicol}
\usepackage{comment}
\usepackage{okumacro}
\usepackage{fancybox}
\usepackage{ascmac}
\usepackage{uline--,macrosMP}%% added by miya

\makeatother

%% ノンブル書体
\usepackage{grm}%% georgia.ttf%% 環境によりエラーが出る．そのときはコメントアウトすればcmrが使われる．

%% 章，節見出し書体の設定（下では代替としてipaexgを使用）
\newcommand{\kbChapterFont}{ipaexg.ttf}          % 章見出し
\newcommand{\kbChapterFontaJ}{ipaexg.ttf/AJ16}   % 章見出し
\newcommand{\kbSectionFont}{ipaexg.ttf}          % 節見出し
\newcommand{\kbSectionFontaJ}{ipaexg.ttf/AJ16}   % 節見出し
\newcommand{\kbgaiji}{A-OTF-RyuminPr6N-Light.otf}% 異字体用
\newcommand{\kbdescriptionfont}{ipaexg.ttf}      % 本文引用箇所
\usepackage{fontmap}

\includeonly{
	Chap01,
%	Chap02,
%	Chap03,
	}

\begin{document}
\include{Chap01}
\include{Chap02}
\include{Chap03}
\end{document}
```
* otfパッケージは`scale`オプションが必須なので，`2013/11/17`以降のバージョンが必要．

