# Settings

Native-looking **Settings** preference for jailbroken iOS (PreferenceLoader).

Dibuat untuk environment Nyxian.

## Build

```bash
# Pastikan Theos sudah terinstall
make package
```

Hasil `.deb` ada di folder `packages/`.

## Install

```bash
# Via Sileo / Zebra / atau
dpkg -i packages/com.ganbi.settings_1.0.0_iphoneos-arm64.deb
```

Setelah install, buka **Settings** di iPhone, akan muncul entry baru bernama **Settings**.

## Structure

- `SettingsRootListController` → controller utama
- `Resources/Root.plist` → isi preference
- Support switch, segment, button, group

## Author

Ganbi
