# WHM Favorites Menu

ตั้งค่า WHM Sidebar Favorites ผ่าน Bash Script — ไม่ต้องนั่งกด ⭐ ทีละอันใน GUI

## ไฟล์ที่เก็บ Favorites

```
/var/cpanel/whm/nvdata/root.yaml
```

## ช้งาน

```bash
bash <(curl -s https://raw.githubusercontent.com/AnonymousVS/WHM-Favorites-Menu/main/set-whm-favorites.sh)
```

## Favorites ที่ตั้งไว้

| # | Feature | Key |
|---|---------|-----|
| 1 | List Accounts | `account_information$list_accounts` |
| 2 | Terminal | `server_configuration$terminal` |
| 3 | Server Monitoring | `plugins$server_monitoring` |
| 4 | EasyApache 4 | `software$easyapache_4` |
| 5 | MultiPHP INI Editor | `software$multiphp_ini_editor` |
| 6 | MultiPHP Manager | `software$multiphp_manager` |
| 7 | Manage AutoSSL | `ssl_tls$manage_autossl` |
| 8 | Tweak Settings | `server_configuration$tweak_settings` |
| 9 | Rearrange an Account | `account_functions$rearrange_an_account` |
| 10 | Transfer Tool | `transfers$transfer_tool` |
| 11 | JetBackup 5 | `plugins$jetbackup_5` |
| 12 | Imunify360 | `plugins$imunify360` |
| 13 | LiteSpeed Web Server | `plugins$litespeed_web_server` |
| 14 | Softaculous | `plugins$softaculous_instant_installs` |
| 15 | WP Toolkit | `plugins$wp_toolkit` |

## ปรับแต่ง

แก้ `favorites:` ใน `set-whm-favorites.sh` ตามต้องการ เช่น เหลือแค่ 4 อัน:

```yaml
favorites:
  - account_information$list_accounts
  - server_configuration$terminal
  - plugins$server_monitoring
  - software$easyapache_4
```

> **Tip:** หา key เพิ่มเติมได้จาก `cat /var/cpanel/whm/nvdata/root.yaml` หลังกด ⭐ feature ที่ต้องการใน WHM GUI

## Deploy หลายเซิร์ฟเวอร์

```bash
for srv in srv1 srv2 srv3; do
    ssh root@${srv} 'bash -s' < set-whm-favorites.sh
done
```

## License

MIT
