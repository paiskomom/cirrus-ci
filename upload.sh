#!/bin/bash

ROM_FILE=$(ls ~/rom/out/target/product/surya/lineage*.zip 2>/dev/null | head -n 1)

if [ -f "$ROM_FILE" ]; then
    ROM_NAME=$(basename "$ROM_FILE")
    curl -s https://api.telegram.org/bot$tokentl/sendMessage -d chat_id=$idtl -d text="📤 Uploading Build $ROM_NAME"
    rclone copy "$ROM_FILE" knjt:kemem -P
    curl -s https://api.telegram.org/bot$tokentl/sendMessage -d chat_id=$idtl -d text="✅ Build $ROM_NAME Uploaded Successfully!"
else
    echo "File ROM belum selesai di-build. Melewati proses upload ROM..."
fi
