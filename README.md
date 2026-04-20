 # Dezmond Finney's Dotfiles
 This repository holds my personal configuration files (dotfiles) and helper scripts for setting up and using my development environment.

 ## Contents

 - `.config/`
   - `ranger/` : Ranger file manager configuration (`rc.conf`, `devicons` plugin)
 - `fish/`
   - `.config/fish/config.fish` : Fish shell configuration
 - `tmux/`
   - `.tmux.conf` : Tmux configuration
 - `zellij/`
   - `layouts/default.kdl` : Default Zellij layout
   - `plugins/` : WebAssembly plugins for Zellij (`zjframes.wasm`, `zjstatus.wasm`)
 - `scripts/`
   - `zellij-dashboard/` : Python dashboard for Zellij (includes `venv/`)
   - `zellij-session-selector` : Script to select and attach to Zellij sessions
 - `gemini.md` : Gemini protocol version of this README
 - `.gitignore` : Files and directories ignored by Git

 ## Requirements

 - Fish shell
 - Tmux
 - Ranger
 - Zellij
 - Python 3.12+ (for the dashboard script)
 - pip (optional, to install dependencies)
 - [GNU Stow](https://www.gnu.org/software/stow/) (optional, for symlinks)

 ## Installation

 1. Clone the repository:
    ```sh
    git clone git@github.com:dezmondfinney/dots.git ~/dots
    cd ~/dots
    ```

 2. (Optional) Use GNU Stow to symlink configurations:
    ```sh
    stow .config fish tmux zellij scripts
    ```

 3. (Manual symlink) Alternatively:
    ```sh
    ln -s ~/dots/.config/ranger ~/.config/ranger
    ln -s ~/dots/fish/.config/fish/config.fish ~/.config/fish/config.fish
    ln -s ~/dots/tmux/.tmux.conf ~/.tmux.conf
    ln -s ~/dots/zellij ~/.config/zellij
    ln -s ~/dots/scripts/zellij-session-selector ~/bin/zellij-session-selector
    ln -s ~/dots/scripts/zellij-dashboard/dashboard.py ~/bin/zellij-dashboard
 4. Create and populate the private fish config:
    ```sh
    cp fish/.config/fish/config_private.fish.example ~/.config/fish/config_private.fish
    # Edit ~/.config/fish/config_private.fish to add your API keys
    ```
    ```

 ## Usage

 - Start Fish shell:
   ```sh
   fish
   ```

 - Run Ranger:
   ```sh
   ranger
   ```

 - Launch Tmux:
   ```sh
   tmux
   ```

 - Launch Zellij with the default layout:
   ```sh
   zellij --layout ~/.config/zellij/layouts/default.kdl
   ```

 - Run the Zellij dashboard:
   ```sh
   source scripts/zellij-dashboard/venv/bin/activate
   python scripts/zellij-dashboard/dashboard.py
   ```

 - Use the Zellij session selector:
   ```sh
   scripts/zellij-session-selector
   ```

 ## Security

No sensitive credentials or private keys are included in this repository. Your personal API keys should be placed in `~/.config/fish/config_private.fish`, which is ignored by Git.