"call pathogen#runtime_append_all_bundles()
"execute pathogen#infect()
call pathogen#infect()

filetype plugin indent on
"开启插件
set nocompatible
"不兼容vi模式
set modelines=0
"不使用modelines
set number
"显示行号
syntax on
"语法高亮
set tabstop=4
"设置tap键为4个空格
set shiftwidth=4
"设置当行之间交错时使用4个空格， << 和 >> 命令移动时的宽度为 4
set softtabstop=4
"使得按退格键时可以一次删掉 4 个空格
set expandtab
"设置缩进长度
set showmatch
"设置匹配模式 显示括号对应
set ruler
"打开状态栏标尺
set incsearch
"实时显示搜索结果
set scrolloff=3
"当光标与顶部距离为三行时发生翻滚，且翻滚后光标与底部相距三行
set autoindent
"自动对齐方式
set smartindent
"智能对齐方式
set showmode
"显示当前模式
set showcmd
"在窗口右下角显示完整命令已输入部分
set hidden
"允许在有未保存的修改时切换缓冲区，此时的修改由vim负责保存
set wildmenu
"启用文本模式的菜单
set wildmode=list:longest
"增强模式打开列表
set visualbell
"可视化铃声
set cursorline
"高亮光标所在行
set ttyfast
"设置快速终端
set backspace=indent,eol,start
"设置backspace的工作方式 不兼容vi
set laststatus=2
"总是显示状态栏
set relativenumber
"显示相对行号，而不是绝对行号
set undofile
"编辑一个文件的时候要创建<FILENAME>.un~文件,以便撤销，即使是关闭重开文件
set encoding=utf-8
"选择编码
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
"避免windows下gvim菜单和系统提示乱码
set fileencodings=ucs-bom,utf-8,utf-16,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"自动识别编码，正确显示中文
set guifont=Menlo:h16
"设置双字节字体
set guifontwide=Hei_Regular:h14
"设置单字节字体
set linespace=2
"设置行高
colorscheme molokai
"设置颜色主题
"set lines=50 columns=128
"设置macvim窗口大小
autocmd! bufwritepost .vimrc source ~/.vimrc
"定义了一个自动命令，每次写入.vimrc后，都会执行这个自动命令，source一次~/.vimrc文件
"powerline{
  set guifont=PowerlineSymbols\ for\ Powerline
  set nocompatible
  set t_Co=256
  let g:Powerline_symbols = 'fancy'
"}
"
"taglist{
  let Tlist_Show_One_File = 1            "只显示当前文件的taglist，默认是显示多个
  let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
  let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist
  let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口
  let Tlist_Ctags_Cmd='/opt/local/bin/ctags'  "设置ctags命令的位置
  nnoremap <leader>tl : Tlist<CR>        "设置关闭和打开taglist窗口的快捷键
"}
