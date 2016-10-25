perl mp-pxacid.pl ebbx/m KozGoStd-ExtraLight.otf
goto end
md .\texmf-local\fonts\tfm\ptex\kbdadded\dvipdfmx\pxacid
md .\texmf-local\fonts\vf\ptex\kbdadded
md .\texmf-local\tex\platex\misc\kbdadded\fd
md .\texmf-local\fonts\map\dvipdfmx\kbdadded
md .\texmf-local\fonts\ofm\ptex\pxacid
move *.tfm .\texmf-local\fonts\tfm\ptex\kbdadded\dvipdfmx\pxacid
move *.vf .\texmf-local\fonts\vf\ptex\kbdadded
move *.fd .\texmf-local\tex\platex\misc\kbdadded\fd
move *.map .\texmf-local\fonts\map\dvipdfmx\kbdadded
move *.ofm .\texmf-local\fonts\ofm\ptex\pxacid
del pxacid-test-*.tex
del pxacid-*.sty
:end
