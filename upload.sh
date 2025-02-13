if [ -f ~/rom/out/target/product/X00T/Nusantara-*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="📤 Uploading Build $(cd ~/rom/out/target/product/X00T/ && ls Nusantara-*.zip)"
      rclone copy ~/rom/out/target/product/X00T/Nusantara-*.zip Gdrive:nad -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="✅ Build $(cd ~/rom/out/target/product/X00T/ && ls Nusantara-*.zip) Uploaded Successfully!"
fi
