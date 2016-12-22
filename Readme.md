# MATH PLUS Series Classfile

*変更履歴*

* 2016/12/21 V0.91： 版面のデフォルト設定を決定，クラスオプションVDN（頁減少用）とVUP（頁増加用）を追加．（ただし詳細未決定） 
「網掛け」(shadelinebox)と「ラウンド罫」(screenbox)の環境を追加（macroMP.sty）
* 2016/12/14
ガロア設定のときでも ``\newcounter{section}[part]`'  -> `'\newcounter{section}[chapter]`'のように修正（ベルヌーイ家の数学にて）
* 2016/12/02 Bigfix: \@endpart jsclass側で持っていたbugをそのまま踏襲していたため修正．
この修正で[openany]指定時の\part，\chapter間の白ページが出現しなくなる．
* 2016/11/30 v0.9  「ガロアとガロア理論」での設定を反映
* 2016/11/16 beta4 「ガロアとガロア理論」では版面変更 class option追加→ [Galois]
* 2016/11/04 beta3 「ガロアとガロア理論」入稿に伴い指定にあったノンブル書体をgeorgiaへ．章見出しに影を追加．
* 2016/11/01 beta2  パッケージロードのバージョンチェックを追加（組版変更なし）
* 2016/10/21 beta1  見本組


| ファイル名 | 用途|
|--------|--------|
| mathplus.cls  |    クラスファイル|
| macrosMP.sty   |     シリーズ用マクロセット| 
| shadowtext.sty  |    章見出し装飾補助| 
| otf.sty         |    フォント設定（多書体及びAJ1用）| 
| fontmap.sty     |    フォント設定（多書体と代替およびノンブル書体）| 
| gms.sty   |   Georgiaをノンブル書体へ適応| 
| a_ed3rjc.enc  |      ノンブル書体用のエンコードファイル| 
| uline--.sty     |   行分割可能なアンダーライン用| 
| indexhead.sty   |    索引のヘッダ体裁|
| | |
| multicol.sty   |     ^*| 

`^*` texlive2015で収録されているものはpLaTeXのtombowオプションと相性が悪いため正常に動くものを念のために添付


| ファイル名 | 用途|
|--------|--------|
| main.tex       |     プリアンブルを記した元締ファイル（コンパイル対象）| 
| MathPlus-sample.tex |  sampleのtexファイル| 
| fontmap/ | フォントのmapファイル| 
| MathPlusLogo/  |    MathPlusのlogo | 


### 仕様

| | パターンA | パターンB | パターンC | 参考 | |
|------|-------------------------|-------------------|-------------------|------------------|
| | （原稿の分量が適切な場合） | （原稿の分量が少なめな場合） | （原稿の分量が多めな場合） | 『ガロアとガロア理論』 |
| | デフォルト | ページ数を増やす | ページ数を減らす | （ちょこちょこ例外事項あり） |
| オプション名 | （無し） | [VUP] | [VDN] | [Galois] |
| 文字サイズ／版面 | 本文13.5Q／行送り22.5H／27行／28倍 | （暫定設定）本文12.5Q／行送り21.5H／27行／28倍 | 主に、ここの設定を変えることにより、かさを減らす。（ただし、未だ該当案件無し） | 本文13.5Q／行送り22.5H／27行／28倍 |
| | | | | |
| 部／部トビラ | 無し | | | 有り／無し |
| 部の改丁・改頁 | | | | 改丁 |
| 章(chapter)／章番号／章トビラ | 有り／「第△章」／無し | | | 有り／部ごとにリセット。 |
| 章の改丁・改頁 | 常に改丁。 | | | 1章のみ改丁。2章以降は改頁。 |
| 節(section)／節番号 | 有り／「△.◇」◇は章ごとにリセット。 | | | 有り／章ごとにリセットせず、同一部内で通し。 |
| 節の改丁・改頁 | 改頁。章見出しに続き、すぐに節が始まる場合のみ、改頁しない。 | | | 改頁。章見出しに続き、すぐに節が始まる場合のみ、改頁しない。 |
| 項(subsection)／項番号 | 有り／「△.◇.♤」♤は節ごとにリセット。 | | | 第I部は無し、第II部は有り／無し |
| 項の改丁・改頁 | 改丁も改頁もしない。（続ける。） | | | 改丁も改頁もしない。（続ける。） |
| ハシラ（奇数p／偶数p） | 章番号＋章見出し／節番号＋節見出し | | | 章番号＋章見出し／節番号＋節見出し |
| 数式番号 | 同一章内で通し。 | | | 無し（使用せず） |

* メモ :  第1弾『ガロア』をベースにデフォルトを作成。第2弾はほぼデフォルトのまま、行けるはず。 



章見出しに小塚ゴシックB，節見出しに小塚ゴシックMを割り当てているが，
デフォルトでは，ipaexゴシックを割り当ててある．

fontmap.styでは，ipexへのmap割り当ても行っている．

### オプション

* `[VDN]`
ページ減少用．
* `[VUP]`
ページ増加用
* `[Galois]`
「ガロアとガロア理論」の体裁

詳細は **仕様** を参照

** 例 ** 最低限必要なオプション
```
\documentclass[gtsf,useotf,dvipdfmx]{mathplus}
```

### プリアンブル例（未完）

```latex
\documentclass[gtsf,useotf,dvipdfmx,%
% VDN,  or  VUP,  or  Galois,% これら指定がなければデフォルト設定が生きる
% uplatex,%% LaTeX文書がutf8の場合でunicode文字セットが使いたい場合
              ]{mathplus}
\usepackage{graphicx,xcolor}
\usepackage{amsmath,amssymb}
%\usepackage[utf8]{inputenc}%% LaTeX文書がutf8の場合でunicode文字セットが使いたい場
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

章見出し，節見出しは本番では，小塚ゴシックBとMが使われる．
これらのフォントが無い環境ではエラーになるため，そうなる場合はoption に [代替] を指定する．
代替えフォントは，ipaexgである．

\usepackage{fontmap}           ％本番用設定
\usepackage[代替]{fontmap}  %代替用設定（[代替]はオプション文字そのものです．）

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


### コマンド，環境

* 網掛けのボックス（macroMP.sty）
```
\begin{shadelinebox}
\end{shadelinebox}
```

* ラウンド罫のボックス（macroMP.sty）
```
\begin{screenbox}
\end{screenbox}
```

* 引用（書体が特殊なので代替フォントをあてています．）
```
\begin{Quote}
\end{Quote}
```


