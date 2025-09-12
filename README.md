File path: nvim/README.md

```markdown
# 🚀 Flutter Neovim Configuration

A complete Neovim setup optimized for Flutter and Dart development with VS Code-like experience.

## 📁 Project Structure

```

nvim/ ├──init.lua          # Main configuration file ├──lazy-lock.json    # Plugin versions lockfile ├──LICENSE           # MIT License ├──README.md         # This file ├──CHEATSHEET.md     # Keybindings reference ├──after/            # Filetype-specific settings │└── ftplugin/ │└── dart.lua  # Dart-specific configuration └──lua/              # Lua modules ├── config/       # Configuration files │   ├── lazy.lua     # Plugin manager setup │   ├── settings.lua # Neovim settings │   ├── keymaps.lua  # Key mappings │   └── folding.lua  # Folding configuration └── plugins/      # Plugin specifications ├── core.lua         # Core plugins ├── flutter-tools.lua # Flutter development ├── lsp.lua          # LSP configuration ├── nvim-cmp.lua     # Autocompletion ├── nvim-tree.lua    # File explorer ├── treesitter.lua   # Syntax highlighting ├── ui.lua           # UI plugins └── bufferline.lua   # Tab management

```

## ✨ Features

- **Flutter & Dart LSP** with full IDE capabilities
- **VS Code-like tabs** with bufferline.nvim
- **Tree-sitter** for advanced syntax highlighting
- **Autocompletion** with nvim-cmp
- **File explorer** with nvim-tree
- **Hot reload/restart** keybindings
- **VS Code-like theme** and UI

## 🛠️ Installation

### Quick Install

1. **Backup your existing config** (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
```

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/nvim-flutter.git ~/.config/nvim
   ```
2. Start Neovim and wait for plugins to install:
   ```bash
   nvim
   ```
3. Install Tree-sitter parsers:
   ```vim
   :TSInstall dart lua
   ```

⌨️ Quick Start

Essential Shortcuts

Key Action
<leader>e Toggle file explorer
<Tab>/<S-Tab> Next/previous tab
<leader>fr Flutter hot reload
<leader>fR Flutter hot restart
gd Go to definition
K Show documentation

File Explorer (NvimTree)

Key Action
o/<Enter> Open in current tab
t Open in new tab (switch)
T Open in new tab (keep focus)

Folding (Dart-specific)

Key Action
zc Fold current widget
zo Unfold current widget
za Toggle fold
zR Unfold all
zM Fold all

🎯 Flutter Development

Hot Reload/Restart

```vim
<leader>fr  " Hot reload
<leader>fR  " Hot restart
<leader>fd  " Open DevTools
```

Dart Commands

```vim
:FlutterRun     " Run application
:FlutterPubGet  " Get dependencies
:FlutterTest    " Run tests
```

⚙️ Configuration

Customize Settings

Edit these files to customize your setup:

· lua/config/settings.lua - Basic Neovim settings
· lua/config/keymaps.lua - Key mappings
· lua/config/folding.lua - Folding behavior
· after/ftplugin/dart.lua - Dart-specific settings

Plugin Configuration

Each plugin has its own configuration file in lua/plugins/:

· flutter-tools.lua - Flutter development
· treesitter.lua - Syntax highlighting
· nvim-cmp.lua - Autocompletion
· bufferline.lua - Tab management

🐛 Troubleshooting

Common Issues

1. Plugins not installing:
   ```vim
   :Lazy sync
   ```
2. Tree-sitter not working:
   ```vim
   :TSInstall dart
   :TSUpdate
   ```
3. LSP not starting:
   ```vim
   :LspInfo
   ```
4. Reload configuration:
   ```vim
   :source $MYVIMRC
   ```

Get Help

· Press K on any function for documentation
· Use :cheatsheet to open keybindings reference
· Check :messages for error logs

📖 Learning Resources

· :help - Built-in Neovim documentation
· :Tutor - Interactive Neovim tutorial
· CHEATSHEET.md - Complete keybindings reference

🤝 Contributing

Feel free to:

· Report bugs and issues
· Suggest new features
· Submit pull requests
· Improve documentation

📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

🙏 Acknowledgments

· Neovim team
· Flutter team
· All plugin authors and maintainers
· Neovim community

---

Happy Fluttering! 🐦✨

If this configuration helps you, please give it a ⭐ on GitHub!

```
