if [ -f ~/rom/out/target/product/whyred/RROS*.zip ]; then
      curl -s https://api.telegram.org/bot$tokentl/sendMessage -d chat_id=$idtl -d text="📤 Uploading Build $(cd ~/rom/out/target/product/surya/ && ls lineage*.zip)"
      rclone copy ~/rom/out/target/product/surya/lineage*.zip knjt:kemem -P
      curl -s https://api.telegram.org/bot$tokentl/sendMessage -d chat_id=$idtl -d text="✅ Build $(cd ~/rom/out/target/product/surya/ && ls lineage*.zip) Uploaded Successfully!"
fi
