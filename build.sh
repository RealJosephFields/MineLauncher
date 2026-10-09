#!/bin/bash
set -e

# Create a mock application structure for demonstration
mkdir -p MyLauncher.app/Contents/MacOS
mkdir -p MyLauncher.app/Contents/Resources

# Copy a valid macOS system icon so the app bundle includes the expected resource.
ICON_SOURCE="/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/GenericApplicationIcon.icns"
if [ -f "$ICON_SOURCE" ]; then
  cp "$ICON_SOURCE" MyLauncher.app/Contents/Resources/Automation.icns
else
  echo "Warning: system icon not found; creating empty placeholder"
  touch MyLauncher.app/Contents/Resources/Automation.icns
fi

# Create a dummy executable
echo '#!/bin/bash' > MyLauncher.app/Contents/MacOS/MyLauncher
echo 'echo "Launcher Started"' >> MyLauncher.app/Contents/MacOS/MyLauncher
chmod +x MyLauncher.app/Contents/MacOS/MyLauncher

echo "Application bundle created successfully."
