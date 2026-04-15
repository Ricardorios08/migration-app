# VPN Configuration

This folder should contain your OpenVPN files to auto-connect when starting the app.

## Required files:
1. `config.ovpn` - Your OpenVPN configuration file
2. `ca.crt` - Certificate Authority
3. `client.crt` - Your client certificate
4. `client.key` - Your private key
5. `auth.txt` - Username (line 1) and password (line 2)

## Setup:
1. Copy your `.ovpn` file here as `config.ovpn`
2. Copy your certificates (`ca.crt`, `.crt`, `.key`) here
3. Copy `auth.txt.example` to `auth.txt` and fill in your credentials
4. Run `npm run dev:vpn` instead of `npm run dev`

> ⚠️ All files in this folder are gitignored. Never commit credentials or certificates.
