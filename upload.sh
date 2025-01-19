if [ -f ~/rom/out/target/product/X00T/lineage-*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="📤 Uploading Build for `$(cd ~/rom/out/target/product/X00T/ && ls lineage-*.zip)`"
      rclone copy ~/rom/out/target/product/X00T/lineage-*.zip Gdrive:lineage -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="🆕 Zip Files `$(cd ~/rom/out/target/product/X00T/ && ls lineage-*.zip)` Uploaded Successfully!"
      rclone copy ~/rom/out/target/product/X00T/boot.img Gdrive:lineage -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="🆕 boot Files `$(cd ~/rom/out/target/product/X00T/ && ls boot.img)` Uploaded Successfully!"
      curl -s text="Jangan lupa sholat! sebelum disholatkan!!!"
fi
