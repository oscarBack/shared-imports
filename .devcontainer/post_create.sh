#!/bin/bash

# Post-create script for shared-imports devcontainer
# This script runs after the devcontainer is created

# Set the SHELL environment variable explicitly for pnpm setup
export SHELL=/bin/bash

echo "Setting up pnpm global bin directory..."
if pnpm setup; then
    echo "✓ pnpm setup completed successfully"
    
    # Source the shell configuration to load pnpm paths
    if [ -f ~/.bashrc ]; then
        source ~/.bashrc
    fi
    
    # Set PNPM_HOME if it's not already set
    if [ -z "$PNPM_HOME" ]; then
        export PNPM_HOME="$HOME/.local/share/pnpm"
        export PATH="$PNPM_HOME:$PATH"
    fi
else
    echo "⚠ pnpm setup failed, setting up manually..."
    # Manual setup as fallback
    export PNPM_HOME="$HOME/.local/share/pnpm"
    mkdir -p "$PNPM_HOME"
    export PATH="$PNPM_HOME:$PATH"
fi

echo "Installing workspace dependencies..."
pnpm install

echo "Installing NestJS CLI globally..."
if pnpm add -g @nestjs/cli; then
    echo "✓ NestJS CLI installed successfully"
    echo "Post-create setup complete!"
    echo "NestJS CLI is now available. You can use 'nest --version' to verify."
else
    echo "⚠ Failed to install NestJS CLI globally"
    echo "You can try installing it manually with: pnpm add -g @nestjs/cli"
fi
