# NvChad Setup Guide for Windows

A quick reference guide to set up NvChad on Windows with your custom configuration.

## Prerequisites

Before starting, ensure you have:
- **Neovim 0.9.0+** (install via winget, choco, or scoop)
- **Git** installed and in PATH
- **A Nerd Font** installed and set in your terminal
- **Ripgrep** (optional but recommended)

### Quick Prerequisites Install

```powershell
# Install Neovim via winget
winget install Neovim.Neovim

# Install Git (if not already installed)
winget install Git.Git

# Install Ripgrep (optional)
winget install BurntSushi.ripgrep.MSVC
```

## Setup Steps

### 1. Clone Your Dotfiles Repository

```powershell
# Navigate to your preferred location (e.g., Pictures, Documents, etc.)
cd $env:USERPROFILE\Pictures

# Clone your dotfiles repo
git clone https://github.com/YOUR_USERNAME/linux-ricing.git
```

### 2. Clean Existing Neovim Setup

```powershell
# Remove any existing nvim config
Remove-Item -Path "$env:LOCALAPPDATA\nvim" -Recurse -Force -ErrorAction SilentlyContinue

# Remove nvim data/cache
Remove-Item -Path "$env:LOCALAPPDATA\nvim-data" -Recurse -Force -ErrorAction SilentlyContinue
```

### 3. Copy Your Config

```powershell
# Copy your nvim config to the correct location
Copy-Item -Path "$env:USERPROFILE\Pictures\linux-ricing\nvim" -Destination "$env:LOCALAPPDATA\nvim" -Recurse
```

### 4. Launch Neovim

```powershell
# Navigate to nvim config directory
cd "$env:LOCALAPPDATA\nvim"

# Launch Neovim (plugins will auto-install)
nvim
```

**Note:** The first launch will take 1-2 minutes as it downloads and installs all plugins. You may see some errors during initial setup - this is normal and they'll disappear after the setup completes.

### 5. Verify Installation

Inside Neovim, run:
```vim
:checkhealth
```

This will show you the health status of all components.

## Optional: Install LSP Servers and Tools

After Neovim is set up, you can install language servers:

```vim
:Mason
```

Navigate and press `i` to install the tools you need.

## Troubleshooting

### If plugins don't load properly:

```powershell
# Delete plugin data and restart
Remove-Item -Path "$env:LOCALAPPDATA\nvim-data" -Recurse -Force
nvim
```

### Force reinstall plugins:

Inside Neovim:
```vim
:Lazy sync
```

### Check for errors:

```vim
:checkhealth
:messages
```

## One-Liner Setup (All Steps Combined)

If you want to run everything at once:

```powershell
# Complete setup in one command
Remove-Item -Path "$env:LOCALAPPDATA\nvim" -Recurse -Force -ErrorAction SilentlyContinue; Remove-Item -Path "$env:LOCALAPPDATA\nvim-data" -Recurse -Force -ErrorAction SilentlyContinue; Copy-Item -Path "$env:USERPROFILE\Pictures\linux-ricing\nvim" -Destination "$env:LOCALAPPDATA\nvim" -Recurse; cd "$env:LOCALAPPDATA\nvim"; nvim
```

## Additional Recommendations

### Install a Nerd Font
1. Download from [nerdfonts.com](https://www.nerdfonts.com/) (JetBrainsMono, FiraCode, or Hack recommended)
2. Extract and install the font files
3. Set the font in your terminal (Windows Terminal, PowerShell, etc.)

### Windows Terminal Font Setup
Add to your Windows Terminal settings.json:
```json
{
    "profiles": {
        "defaults": {
            "font": {
                "face": "JetBrainsMono Nerd Font",
                "size": 11
            }
        }
    }
}
```

## Useful Neovim Commands

- `Space + th` - Toggle themes
- `Space + ch` - Open cheatsheet
- `Space + ff` - Find files
- `Space + fw` - Find word (grep)
- `:Lazy` - Manage plugins
- `:Mason` - Manage LSP servers

## Config Location Reference

- **Neovim Config:** `%LOCALAPPDATA%\nvim` (usually `C:\Users\YourUsername\AppData\Local\nvim`)
- **Neovim Data:** `%LOCALAPPDATA%\nvim-data`
- **Your Dotfiles:** `%USERPROFILE%\Pictures\linux-ricing\nvim`

---

**Happy Coding! 🚀**
