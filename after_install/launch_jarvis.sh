#!/bin/bash
# Jarvis Assistant Launcher

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

# Activate virtual environment
source venv/bin/activate

# Check for Porcupine access key
if grep -q "YOUR_PORCUPINE_ACCESS_KEY" config.json; then
    echo "=================================================="
    echo "  IMPORTANT: Porcupine Access Key Required!"
    echo "=================================================="
    echo ""
    echo "1. Get your free access key from:"
    echo "   https://console.picovoice.ai/"
    echo ""
    echo "2. Update the access_key in config.json"
    echo ""
    echo "=================================================="
    exit 1
fi

# Launch Jarvis
echo "Starting Jarvis Assistant..."
python jarvis.py
