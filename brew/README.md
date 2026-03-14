# Homebrew Configuration

This directory contains the Homebrew package configuration for quick system setup.

## Files

- `Brewfile` - List of all installed formulae and casks
- `install.sh` - Script to install all packages from the Brewfile

## Usage

### Install all packages

```bash
./brew/install.sh
```

Or use brew bundle directly:

```bash
brew bundle --file=brew/Brewfile
```

### Check what would be installed

```bash
brew bundle check --file=brew/Brewfile
```

## Notes

- The install script will automatically update Homebrew before installing packages
- Casks may require user interaction for installation (e.g., password prompts)
- Some packages may have dependencies that will be automatically installed
