#!/bin/bash
# Create a mock application structure for demonstration
mkdir -p MyLauncher.app/Contents/MacOS
mkdir -p MyLauncher.app/Contents/Resources

# Create a dummy executable
echo '#!/bin/bash' > MyLauncher.app/Contents/MacOS/MyLauncher
echo 'echo "Launcher Started"' >> MyLauncher.app/Contents/MacOS/MyLauncher
chmod +x MyLauncher.app/Contents/MacOS/MyLauncher

echo "Application bundle created successfully."
