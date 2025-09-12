📝 Comprehensive Neovim Shortcuts & Commands Reference

---

🔹 File Operations

:w → Save current file

:saveas main.lua → Save current buffer as new file

:e file.txt → Open file in current window

:Ex → Open file explorer

---

🔹 Tabs & Buffers

<Tab> → Switch to next tab

<S-Tab> → Switch to previous tab

<leader>bp → Pick tab to focus

<leader>bc → Close current tab

:ls or :buffers → List all open buffers

:b <number> → Switch buffer by number

:b <filename> → Switch buffer by name

:bn → Next buffer

:bp → Previous buffer

:b# → Last visited buffer

:bufdo bd → Close all buffers (⚠ unsaved changes lost)

:%bd → Close all buffers safely

---

🔹 Diagnostics & Errors

:Telescope diagnostics → List all errors/warnings

:lua vim.diagnostic.open_float() → Show diagnostics at cursor

<leader>ca → Code actions

]d → Next diagnostic

[d → Previous diagnostic

<leader>ld → Show cursor diagnostics

<leader>ad → List all diagnostics

---

🔹 Search & Replace

/pattern → Search forward

?pattern → Search backward

* → Search forward word under cursor

# → Search backward word under cursor

:nohlsearch → Clear highlights

:%s/old/new/g → Replace all in file

:%s/old/new/gc → Replace with confirmation

:vimgrep /pattern/ **/*.dart → Search across files

:cfdo %s/old/new/g → Replace in all files


👉 Tip: Ctrl + r " → Paste previous yank into search

---

🔹 Window Management

<C-w>h → Move left

<C-w>j → Move down

<C-w>k → Move up

<C-w>l → Move right

<C-w>s → Split horizontally

<C-w>v → Split vertically

<C-w>c → Close window

---

🔹 Terminal

:term → Open terminal

:sp | term → Horizontal split terminal

:vsp | term → Vertical split terminal

<C-\><C-n> → Normal mode in terminal

<C-\><C-o> → One normal mode command

Ctrl + \ then Ctrl + n → Exit insert mode

---

🔹 Code Navigation

gd → Go to definition

gr → Find references

K → Show docs

<C-o> → Jump back

<C-i> → Jump forward

---

🔹 LSP & Flutter

<leader>rn → Rename symbol

<leader>f → Format file


Flutter-tools:

<leader>fr → FlutterRun

<leader>fh → FlutterReload

<leader>fR → FlutterRestart

<leader>fq → FlutterQuit

<leader>fd → FlutterDevices

<leader>fe → FlutterEmulators

<leader>fl → FlutterLogToggle

<leader>fo → FlutterOutlineToggle

<leader>d → Flutter DevTools

---

🔹 Editing

i → Insert before cursor

a → Insert after cursor

o → New line below

O → New line above

x → Delete char

dd → Delete line

yy → Yank line

y → Yank selection

p → Paste after cursor

P → Paste before cursor

<C-a> → Select all

u → Undo

<C-r> → Redo

> → Indent

< → Unindent

---

🔹 Navigation

gg → First line

G → Last line

0 → Line start

^ → First non-whitespace

$ → Line end

{n}j → Down n lines

{n}k → Up n lines

{n}w → Forward to n-th word

{n}e → End of n-th word

{n}b → Backward n words

{n}ge → Backward to word end


⚡ Tip: Prefix with number to repeat (e.g., 5j, 3w, 2dd)

---

🔹 Plugins

<leader>e → Toggle file explorer

<C-Space> → Trigger completion

<leader>ff → Find files (Telescope)

<leader>fg → Live grep (Telescope)

---

🔹 File Explorer (NvimTree)

o or <CR> → Open file

t → Open file in new tab (switch)

T → Open file in new tab (stay)

a → Create file (e.g., name.txt)

a → Create dir (e.g., name/)

d → Delete file

r → Rename file

x → Cut file

c → Copy file

p → Paste file

- → Parent directory

q → Close explorer

---

🔹 Config Editing

<leader>vc → Edit keymaps config

<leader>vl → Edit LSP config

<leader>vi → Edit init.lua

<leader>vs → Source config

---

🔹 Commenting

gc → Comment/uncomment selection

gcc → Comment/uncomment current line

---

🔹 Folding Keybindings

Basic Folding

zc → Close fold

zo → Open fold

za → Toggle fold

zR → Open all folds

zM → Close all folds

zC → Close all in scope

zO → Open all in scope

zj → Next fold

zk → Previous fold


Manual Folding (foldmethod=manual)

zf → Create fold (from visual selection)

zf#j / zf#k → Fold # lines down/up

zfa{ → Fold to brace

zfat → Fold around XML/HTML tag

zfi{ → Fold inside braces

zd → Delete fold

zE → Eliminate all folds


Examples:

v}zf → Fold to next paragraph

v%zf → Fold to matching bracket

zf3j → Fold next 3 lines

zfat → Fold around tag


Tree-sitter Folding (foldmethod=expr)

zA → Toggle fold recursively

zX → Refresh all folds

zx → Refresh current fold

zv → Open folds to show cursor


Automatic: Functions, classes, and blocks fold automatically.

VS Code-style (Custom Mappings)

<space> → za (Toggle fold)

<leader>zf → Create widget fold

<leader>zw → v%zf (Fold to matching bracket)

<leader>za → zA (Toggle recursive)

<leader>zr → zR (Unfold all)

<leader>zm → zM (Fold all)


Dart-specific Folding

<leader>fw → Fold widget

zW → v%zf (Fold parenthesis)

zC → Fold Column/Container

zR → Unfold Row/ListView

---

🔹 Troubleshooting Commands

:set foldmethod? → Check current fold method

:set foldmethod=manual → Switch to manual

:set foldmethod=expr → Switch to Tree-sitter

:set foldlevel=99 → Open all folds

:set foldlevel=0 → Close all folds

:normal zE → Delete all folds

