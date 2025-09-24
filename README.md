Perfect — your content is solid, it just needs **formatting and polish** to look like the example repo you showed me. Here’s a **refined `README.md`** styled like that:

````markdown
# 🚀 Flutter Neovim Configuration

A complete Neovim setup optimized for **Flutter** and **Dart** development — bringing a **VS Code-like experience** inside Neovim.

---

## 📂 Project Structure

```bash
nvim/
├── init.lua           # Main configuration file
├── lazy-lock.json     # Plugin versions lockfile
├── LICENSE            # MIT License
├── README.md          # Project documentation
├── CHEATSHEET.md      # Keybindings reference
├── after/             # Filetype-specific settings
│   └── ftplugin/
│       └── dart.lua   # Dart-specific configuration
└── lua/               # Lua modules
    ├── config/        # Configuration files
    │   ├── lazy.lua       # Plugin manager setup
    │   ├── settings.lua   # Neovim settings
    │   ├── keymaps.lua    # Key mappings
    │   └── folding.lua    # Folding configuration
    └── plugins/       # Plugin specifications
        ├── core.lua           # Core plugins
        ├── flutter-tools.lua  # Flutter development
        ├── lsp.lua            # LSP configuration
        ├── nvim-cmp.lua       # Autocompletion
        ├── nvim-tree.lua      # File explorer
        ├── treesitter.lua     # Syntax highlighting
        ├── ui.lua             # UI plugins
        └── bufferline.lua     # Tab management
````

---

## ✨ Features

* ⚡ **Flutter & Dart LSP** with full IDE capabilities
* 📑 **VS Code-like tabs** via `bufferline.nvim`
* 🌳 **Tree-sitter** for advanced syntax highlighting
* 🤖 **Autocompletion** with `nvim-cmp`
* 📂 **File explorer** powered by `nvim-tree`
* 🔥 **Hot reload/restart** with custom keybindings
* 🎨 **VS Code-inspired UI & theme**

---

## 🛠 Installation

### Quick Setup

1. **Backup your existing config**:

   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```
2. **Clone this repository**:

   ```bash
   git clone https://github.com/Abdulqudduz/nvim-flutter.git ~/.config/nvim-flutter

   ```
3. **Rename nvim-flutter to nvim **:

   ```bash
   mv ~/.config/nvim-flutter ~/.config/nvim
   ```
4. **Open Neovim** and wait for plugins to sync:

   ```bash
   nvim
   ```
5. **Install Tree-sitter parsers**:

   ```vim
   :TSInstall dart lua
   ```

---

## ⌨️ Quick Start

### Essential Shortcuts

| Key             | Action               |
| --------------- | -------------------- |
| `<leader>e`     | Toggle file explorer |
| `<Tab>/<S-Tab>` | Next/previous tab    |
| `<leader>fr`    | Flutter hot reload   |
| `<leader>fR`    | Flutter hot restart  |
| `gd`            | Go to definition     |
| `K`             | Show documentation   |

---

### File Explorer (NvimTree)

| Key         | Action                   |
| ----------- | ------------------------ |
| `o`/`Enter` | Open in current tab      |
| `t`         | Open in new tab (switch) |
| `T`         | Open in new tab (keep)   |

---

### Folding (Dart-specific)

| Key  | Action              |
| ---- | ------------------- |
| `zc` | Fold current widget |
| `zo` | Unfold widget       |
| `za` | Toggle fold         |
| `zR` | Unfold all          |
| `zM` | Fold all            |

---

## 🎯 Flutter Development

### Hot Reload / Restart

```vim
<leader>fr  " Hot reload
<leader>fR  " Hot restart
<leader>fd  " Open DevTools
```

### Dart Commands

```vim
:FlutterRun      " Run application
:FlutterPubGet   " Get dependencies
:FlutterTest     " Run tests
```

---

## ⚙️ Configuration

* `lua/config/settings.lua` – Basic Neovim settings
* `lua/config/keymaps.lua` – Custom key mappings
* `lua/config/folding.lua` – Folding behavior
* `after/ftplugin/dart.lua` – Dart-specific settings

Each plugin has its own configuration under `lua/plugins/`:

* `flutter-tools.lua` – Flutter development
* `treesitter.lua` – Syntax highlighting
* `nvim-cmp.lua` – Autocompletion
* `bufferline.lua` – Tab management

---

## 🐛 Troubleshooting

1. Plugins not installing:

   ```vim
   :Lazy sync
   ```
2. Tree-sitter issues:

   ```vim
   :TSInstall dart
   :TSUpdate
   ```
3. LSP not starting:

   ```vim
   :LspInfo
   ```
4. Reload config:

   ```vim
   :source $MYVIMRC
   ```

---

## 📖 Learning Resources

* `:help` – Built-in Neovim docs
* `:Tutor` – Interactive tutorial
* `CHEATSHEET.md` – Full keybindings reference

---

## 🤝 Contributing

Contributions welcome!

* Report bugs
* Suggest new features
* Submit PRs
* Improve docs

---

## 📄 License

This project is licensed under the **MIT License** — see [LICENSE](LICENSE).

---

## 🙏 Acknowledgments

* Neovim team 🖤
* Flutter team 🐦
* Plugin authors & maintainers 🙌
* Neovim community 🌍

---

⭐ **If this config helps you, please give it a star on GitHub!**
Happy Fluttering! ✨