#!/bin/bash

DOTFILES_BASE_DIR=$(cd $(dirname $0); pwd)
DOTFILES_OLD_DIR="${DOTFILES_BASE_DIR}/.old"

echo ">> Starting script..."
echo ">> `date '+%Y-%m-%d %H:%M:%S'`"
echo ""

function create_symlink() {
    local source_file="$1"
    local target_file="$2"

    # Create a symbolic link
    ln -snfv "$source_file" "$target_file"
    echo "Created symbolic link for ${target_file##*/}"
}

# Deploy .gitconfig
create_symlink "${DOTFILES_BASE_DIR}/.gitconfig" ~/.gitconfig

echo ""
echo "<< Script completed."
echo "<< `date '+%Y-%m-%d %H:%M:%S'`"
