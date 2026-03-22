#!/bin/bash
# set-whm-favorites.sh
# ตั้งค่า WHM Sidebar Favorites ผ่าน Command Line
# GitHub: https://github.com/AnonymousVS/WHM-Favorites-Menu

# 1. สำรองไฟล์เดิม
cp /var/cpanel/whm/nvdata/root.yaml /var/cpanel/whm/nvdata/root.yaml.bak 2>/dev/null

# 2. เขียนตั้งค่าและ Favorites ลงไป
cat << 'EOF' > /var/cpanel/whm/nvdata/root.yaml
---
analytics: 'on'
favorites:
  - account_information$list_accounts
  - server_configuration$terminal
  - plugins$server_monitoring
  - software$easyapache_4
  - software$multiphp_ini_editor
  - software$multiphp_manager
  - ssl_tls$manage_autossl
  - server_configuration$tweak_settings
  - account_functions$rearrange_an_account
  - transfers$transfer_tool
  - system_health$process_manager
  - plugins$jetbackup_5
  - plugins$imunify360
  - plugins$litespeed_web_server
  - plugins$softaculous_instant_installs
  - plugins$wp_toolkit
home:hide_important_next_steps: 1
live_transfers_notice_is_dismissed: 1
showFavoritesDescriptions: 0
terminal_warning_accepted: 1
whmcommand:navigation: 1
EOF

# 3. เคลียร์แคชและตั้งค่าสิทธิ์ไฟล์
rm -f /var/cpanel/whm/nvdata/root.cache
chmod 600 /var/cpanel/whm/nvdata/root.yaml

echo "อัปเดตเมนู Favorites เรียบร้อย! รีเฟรชหน้าต่างเบราว์เซอร์ WHM ได้เลยครับ"
