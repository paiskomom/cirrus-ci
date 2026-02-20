if [ -f ~/rom/out/target/product/whyred/RROS*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="📤 Uploading Build $(cd ~/rom/out/target/product/whyred/ && ls RROS*.zip)"
      rclone copy ~/rom/out/target/product/whyred/RROS*.zip knjt:ccache -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="✅ Build $(cd ~/rom/out/target/product/whyred/ && ls RROS*.zip) Uploaded Successfully!"
fi
