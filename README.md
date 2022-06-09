# vim的快捷键使用
- set current line to center
zz
- move
left: h
down: j
up: k
right: l

- move cursor
0: bol(begin of line)
$: eol
^: eol(soft link)

- copy
y: yank
Y: copy from cursor to eol
- cut
x: delete char
X: backspace
d: delete
D: delete to eol(end of line)
- paste
p: paste after
P: paste befor
- split
up-down: split
l-r: vsplit
- toggle case
~: change 'A' to 'a', change 'a' to 'A' 
# 键位映射 map  

||map|noremap|nmap|nnoremap|  
|---|---|---|---|---|  
|递归映射|是|是|否|否|  
|生效模式|仅normal模式|全部模式|全部模式|仅normal模式|

- 按S保存
map S :w<CR>
map s <nop>
- 按Q退出
map Q :q<CR>

