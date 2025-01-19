if [ -f ~/rom/out/target/product/X00T/lineage-*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="<b>📤 Uploading Build</b> for <b>`$(cd ~/rom/out/target/product/X00T/ && ls lineage-*.zip)`</b>"
      rclone copy ~/rom/out/target/product/X00T/lineage-*.zip Gdrive:lineage -P
      rclone copy ~/rom/out/target/product/X00T/boot.img Gdrive:lineage -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="<b>🆕 Files<b>`$(cd ~/rom/out/target/product/X00T/ && ls lineage-*.zip)`</b> <b>Uploaded Successfully!</b>"
fi
