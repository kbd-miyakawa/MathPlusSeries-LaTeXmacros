# MATH PLUS Series Classfile

*変更履歴*

* 2016/12/28 macrosMP.sty： \sectionでの改ページをコントロールする．\sectionBreakOn，\sectionBreakOffを追加
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
