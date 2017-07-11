# MATH PLUS Series Classfile

*変更履歴*

* 2017/01/11　目次の節を13Q，項を11.5Qへ変更（ベルヌーイにてmathplus.cls）ベルヌーイではページ調整のため，目次見出し直下を詰めている．
* mawarikomi環境のショートカット \let\Mw\mawarikomi\let\endMw\endmawarikomi(macrosMP.sty)
* %% 2017/01/11 \smalller追加．（現状のフォントより1pt小さいサイズにする）\smalller[-3pt]のようにすると任意．(macrosMP.sty)
* 2017/01/12 \tabular環境用に\TCと\TRを追加(mathplus.cls)
* 2017/01/11 enumerateのデフォルト変更LABEL=(1), \leftmargin=3zw \labelsep.5zw(mathplus.cls)
* 2017/01/11 screenbox env, shadelinebox enb 前後のアキを増加
* 2017/01/10 回り込み（mawarikomi環境）追加 (emathMw.sty)
* 2017/01/06 VDN, VUPを設定
* 2016/12/28 macrosMP.sty： \sectionでの改ページをコントロールする．\sectionBreakOn，\sectionBreakOffを追加．
* 2016/12/28 fontmap.sty：
代替フォントを使うときのオプションを「代替」から~~「general」~~「temporaryfont」へ変更．
代替フォントにOfficeフォントを選べるようにオプションに`[MS]`を追加
* 2016/12/21 V0.91： 版面のデフォルト設定を決定，クラスオプションVDN（頁減少用）とVUP（頁増加用）を追加．（ただしVDNとVUPは詳細未決定）
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
