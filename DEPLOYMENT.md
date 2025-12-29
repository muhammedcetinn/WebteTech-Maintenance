# Webtetech Maintenance - Ubuntu 22.04 Deployment Guide

## 📋 Gereksinimler

- Ubuntu 22.04 sunucu
- Root veya sudo yetkisi
- Domain adı (opsiyonel)

---

## 🚀 Adım 1: Sunucu Güncellemeleri

```bash
sudo apt update && sudo apt upgrade -y
```

---

## 🔧 Adım 2: Node.js Kurulumu

### Node.js 20.x LTS kurulumu (önerilen):

```bash
# NodeSource repository ekle
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -

# Node.js ve npm kur
sudo apt install -y nodejs

# Versiyonları kontrol et
node --version  # v20.x.x
npm --version   # 10.x.x
```

---

## 📦 Adım 3: PM2 Kurulumu

```bash
# PM2'yi global olarak kur
sudo npm install -g pm2

# PM2 versiyonunu kontrol et
pm2 --version

# Sistem başlangıcında PM2'yi otomatik başlat
pm2 startup systemd
# Çıkan komutu çalıştır (sudo ile başlayan)

# PM2 ayarlarını kaydet
pm2 save
```

---

## 🌐 Adım 4: Nginx Kurulumu

```bash
# Nginx kur
sudo apt install -y nginx

# Nginx başlat ve otomatik başlatmayı etkinleştir
sudo systemctl start nginx
sudo systemctl enable nginx

# Status kontrol et
sudo systemctl status nginx
```

---

## 📁 Adım 5: Proje Klasörünü Oluştur

```bash
# Web dizini oluştur
sudo mkdir -p /var/www/webtetech-maintenance

# Kullanıcıya sahiplik ver (kullanıcı_adınız yerine kendi kullanıcınızı yazın)
sudo chown -R $USER:$USER /var/www/webtetech-maintenance

# Logs klasörü oluştur
mkdir -p /var/www/webtetech-maintenance/logs
```

---

## 📤 Adım 6: Projeyi Sunucuya Yükle

### Yöntem 1: Git ile (önerilen)

```bash
# Git kur (yoksa)
sudo apt install -y git

# Projeyi clone et
cd /var/www
git clone https://github.com/kullanici/webtetech-maintenance.git
# veya
cd /var/www/webtetech-maintenance
git init
git remote add origin https://github.com/kullanici/webtetech-maintenance.git
git pull origin main
```

### Yöntem 2: SCP/SFTP ile

```bash
# Lokal bilgisayardan (Windows PowerShell veya CMD):
scp -r C:\Users\ctn\Webtetech.Self\maintenance-mode\* kullanici@sunucu_ip:/var/www/webtetech-maintenance/
```

### Yöntem 3: rsync ile

```bash
# Lokal bilgisayardan:
rsync -avz --exclude 'node_modules' --exclude '.next' C:\Users\ctn\Webtetech.Self\maintenance-mode\ kullanici@sunucu_ip:/var/www/webtetech-maintenance/
```

---

## 📦 Adım 7: Proje Bağımlılıklarını Kur

```bash
cd /var/www/webtetech-maintenance

# Node_modules kur
npm install

# Static export oluştur (Next.js output: 'export' kullanıyor)
npm run build
# Build çıktısı: /out klasöründe static dosyalar
```

**Not**: Bu proje static export kullanıyor, bu nedenle:
- Build sonrası `/out` klasöründe static HTML/CSS/JS dosyaları oluşur
- PM2 yerine doğrudan Nginx ile serve edilebilir
- Node.js runtime gerekmez (opsiyonel olarak PM2 kullanabilirsiniz)

---

## ⚙️ Adım 8: Nginx ile Static Dosyaları Serve Et

**Not**: Bu proje static export kullandığı için PM2 gerekmez. Doğrudan Nginx ile serve edilir.

```bash
# Build çıktısının doğru yerde olduğundan emin ol
ls -la /var/www/webtetech-maintenance/out

# index.html dosyasının varlığını kontrol et
cat /var/www/webtetech-maintenance/out/index.html
```

### Opsiyonel: PM2 ile Serve (Gerekli Değil)

Eğer yine de PM2 kullanmak isterseniz (monitoring için):

```bash
cd /var/www/webtetech-maintenance

# PM2 ile başlat
pm2 start ecosystem.config.js --env production

# Durumu kontrol et
pm2 status

# Ayarları kaydet
pm2 save
```

**Ancak önerilen yöntem**: Nginx ile doğrudan static dosyaları serve etmek (daha hızlı ve hafif).

---

## 🌐 Adım 9: Nginx Konfigürasyonu

```bash
# Nginx konfigürasyon dosyasını kopyala
sudo cp /var/www/webtetech-maintenance/nginx.conf /etc/nginx/sites-available/webtetech-maintenance

# nginx.conf dosyasını düzenle - domain adını değiştir
sudo nano /etc/nginx/sites-available/webtetech-maintenance
# server_name kısmını kendi domain'iniz ile değiştirin:
# server_name yourdomain.com www.yourdomain.com;

# Symbolic link oluştur
sudo ln -s /etc/nginx/sites-available/webtetech-maintenance /etc/nginx/sites-enabled/

# Default site'ı kaldır (opsiyonel)
sudo rm /etc/nginx/sites-enabled/default

# Nginx konfigürasyonunu test et
sudo nginx -t

# Nginx'i yeniden başlat
sudo systemctl reload nginx
```

---

## 🔒 Adım 10: SSL Sertifikası (Let's Encrypt)

```bash
# Certbot kur
sudo apt install -y certbot python3-certbot-nginx

# SSL sertifikası al
sudo certbot --nginx -d yourdomain.com -d www.yourdomain.com

# Otomatik yenilemeyi test et
sudo certbot renew --dry-run
```

Certbot nginx konfigürasyonunuzu otomatik olarak güncelleyecektir.

---

## 🔥 Adım 11: Firewall Ayarları

```bash
# UFW firewall'u etkinleştir
sudo ufw enable

# HTTP ve HTTPS portlarını aç
sudo ufw allow 'Nginx Full'
sudo ufw allow OpenSSH

# Durumu kontrol et
sudo ufw status
```

---

## 🔄 Güncelleme İşlemi

Projeyi güncellemek için:

```bash
cd /var/www/webtetech-maintenance

# Git ile güncellemeleri çek
git pull origin main

# Bağımlılıkları güncelle (gerekirse)
npm install

# Yeniden build et (static export)
npm run build

# Build çıktısı /out klasöründe oluşur
# Nginx otomatik olarak güncel dosyaları serve eder

# Nginx cache'ini temizle (opsiyonel)
sudo systemctl reload nginx
```

**Not**: Static export olduğu için PM2 restart gerekmez.

---

## 📊 Monitoring ve Bakım

### PM2 Monitoring:

```bash
# Gerçek zamanlı monitoring
pm2 monit

# CPU ve Memory kullanımı
pm2 list
```

### Nginx Log Kontrolü:

```bash
# Access logları
sudo tail -f /var/log/nginx/webtetech-maintenance-access.log

# Error logları
sudo tail -f /var/log/nginx/webtetech-maintenance-error.log
```

### Sistem Kaynakları:

```bash
# Disk kullanımı
df -h

# Memory kullanımı
free -h

# CPU kullanımı
top
```

---

## 🛠️ Sorun Giderme

### Port 3000 kullanımda hatası:

```bash
# Port'u kullanan process'i bul
sudo lsof -i :3000

# Process'i kapat
sudo kill -9 PID
```

### Nginx hatası:

```bash
# Nginx konfigürasyonunu test et
sudo nginx -t

# Nginx error loglarını kontrol et
sudo tail -100 /var/log/nginx/error.log
```

### PM2 uygulama çalışmıyor:

```bash
# PM2 loglarını kontrol et
pm2 logs webtetech-maintenance --lines 100

# PM2'yi tamamen restart et
pm2 kill
pm2 start ecosystem.config.js --env production
pm2 save
```

---

## 🎯 Performans Optimizasyonu

### 1. Node.js için Swap Memory (RAM yetersizse):

```bash
# 2GB swap oluştur
sudo fallocate -l 2G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile

# Kalıcı yap
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
```

### 2. Nginx Caching:

nginx.conf dosyasına cache ayarları eklenmiştir. Static dosyalar 365 gün cache'lenir.

### 3. PM2 Cluster Mode:

ecosystem.config.js'de `instances: 'max'` ayarı CPU çekirdek sayısı kadar instance oluşturur.

---

## 📝 Notlar

- **Domain olmadan test**: Sunucu IP adresi ile `http://sunucu_ip` üzerinden erişebilirsiniz
- **Environment Variables**: Hassas bilgiler için `.env` dosyası kullanın
- **Backup**: Düzenli olarak `/var/www/webtetech-maintenance` klasörünü yedekleyin
- **Güncelleme**: Node.js ve PM2'yi düzenli olarak güncelleyin

---

## 🔗 Yararlı Linkler

- [PM2 Documentation](https://pm2.keymetrics.io/docs/)
- [Nginx Documentation](https://nginx.org/en/docs/)
- [Next.js Deployment](https://nextjs.org/docs/deployment)
- [Let's Encrypt](https://letsencrypt.org/)

---

## ✅ Deployment Checklist

- [ ] Node.js kuruldu
- [ ] PM2 kuruldu ve otomatik başlatma ayarlandı
- [ ] Nginx kuruldu ve çalışıyor
- [ ] Proje klasörü oluşturuldu
- [ ] Kod sunucuya yüklendi
- [ ] npm install çalıştırıldı
- [ ] npm run build çalıştırıldı
- [ ] PM2 ile uygulama başlatıldı
- [ ] Nginx konfigürasyonu yapıldı
- [ ] Domain DNS ayarları yapıldı
- [ ] SSL sertifikası kuruldu
- [ ] Firewall ayarları yapıldı
- [ ] Uygulama erişilebilir durumda

🎉 **Deployment tamamlandı!**
