# `nvim`

- [NeoVim (`nvim`)](https://neovim.io/) is a terminal based IDE.
- This is a fork of [AstroNvim](https://github.com/AstroNvim/AstroNvim) configurations for `nvim`,
with custom modifications.
- For custom modifications changes to AstroNvim, the only thing that changes here is `lua/user/init.lua`


## Prerequisits

1. NeoVim (`nvim`) is installed, version greater than 0.80: [Instructions here](https://github.com/neovim/neovim/wiki/Installing-Neovim)

2. Ensure following are installed:
	- `pip` / `pipenv`
		- `curl -LO https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py && rm get-pip.py`
		- `python3 -m pip install --upgrade pip setuptools wheel virtualenv pipenv`
	- `node` / `npm`
		- MaxOS: `brew install node npm`
		- Ubuntu: `sudo apt install -y nodejs npm`
		- Windows: `choco install nodejs npm`
	- `tree-sitter`
		- `npm install -g tree-sitter-cli`
	- (Optional) `cargo`
	- (Optional) `go`

3. Install and setup programming font ([NerdFont](https://www.nerdfonts.com/))
     - [Downlaod here](https://www.nerdfonts.com/font-downloads) and install
     - Linux Helper: Copy all .ttf to `.fonts`, run `fc-cache -fv`
     - Don't forget to set terminal font to this new font
     - *Recommend: FiraCode Nerd Font*

4. Install a clipboard cli tool:
    - MacOS: Already pre-installed
    - Ubuntu/Debian: `sudo apt install -y xclip xsel vim-gtk`
    - Windows: `choco install win32yank`


## Setup

1. Clone AstroNvim base repo, clone configuration into it, and install
    - MacOS/Linux:
        - ```bash
          git clone --depth 1 https://github.com/AstroNvim/AstroNvim $HOME/.config/nvim
          git clone https://github.com/ismet55555/astronvim-config.git $HOME/.config/nvim/lua/user
          nvim  --headless -c 'quitall'
	  nvim -c "Mason"
          ```
    - Windows:
        - ```bash
          git clone --depth 1 https://github.com/AstroNvim/AstroNvim $HOME/AppData/Local/nvim
          git clone https://github.com/ismet55555/astronvim-config.git $HOME/AppData/Local/nvim/lua/user
          nvim  --headless -c 'quitall'
	  nvim -c "Mason"
          ```

2. Basic dependencies have been installed automatically, however, you can install/remove:
	- `:Mason` - Select items you need and press `i`
		- (2) Language Server Protocols (LSP)
		- (3) Debug Adapter Protocol (DAP)
		- (4) Linter
		- (5) Formatter
	- [All Supported Language Servers](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

3. Basic tree-sitter language have been instaleld automatically, however, you can install/remove:
	- `:TSInstall`
	- To install more languages: `:TSInstall <LANGUAGE>`
	- [All Supported Languages](https://github.com/nvim-treesitter/nvim-treesitter#supported-languages)
	
After everything installed and settled down, exit then enter again.

## Removing `nvim` Configs

MacOS/Linux:
- ```bash
  rm -rf $HOME/.config/nvim && rm -rf $HOME/.local/share/nvim && rm -rf $HOME/.cache/nvim
  ```
  
Windows:
- ```bash
  Remove-Item -Force -Recurse $HOME\AppData\Local\nvim; Remove-Item -Force -Recurse $HOME\AppData\Local\nvim-data
  ```
