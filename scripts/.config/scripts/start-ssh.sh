#!/usr/bin/env bash

# Prompt for Gmail address with better input validation
read -p "Enter your Gmail address: " gmail

# Validate email format (optional, consider incorporating for robustness)
if ! [[ $gmail =~ ^[[:alnum:]\._%+-]+@[[:alnum:]\-]+\.[[:alnum:]]{2,}$ ]]; then
  echo "Invalid email format. Please enter a valid Gmail address."
  exit 1
fi

# Efficiently create SSH key with comment (no need for eval)
ssh-agent -s &> /dev/null  # Start SSH agent with suppressed output
ssh-add ~/.ssh/id_ed25519 &> /dev/null  # Add existing key quietly (if present)

# Generate key if not already existing (single pass through ssh-keygen)
if [ ! -f ~/.ssh/id_ed25519 ]; then
  ssh-keygen -t ed25519 -C "$gmail" &> /dev/null  # Suppress prompts
fi

# Display public key (optional, adjust as needed)
echo "Your public SSH key (copy and paste it to your server):"
cat ~/.ssh/id_ed25519.pub


