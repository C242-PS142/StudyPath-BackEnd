# backend-bangkit

This repository for Bangkit Capstone Project

# Table of Contents

- [Node.js Backend Documentation](#nodejs-backend-documentation)
  - [Prerequisites](#-prerequisites)
  - [Cara Menggunakan](#-cara-menggunakan)
    - [Clone Repository](#1-clone-repository)
    - [Masuk ke Direktori Proyek](#2-masuk-ke-direktori-proyek)
    - [Install Dependencies](#3-install-dependencies)
    - [Konfigurasi Environment Variables](#4-konfigurasi-environment-variables)
    - [Import Database](#5-import-database)
    - [Menjalankan Server](#6-menjalankan-server)
    - [Akses Aplikasi](#7-akses-aplikasi)
  - [Struktur Proyek](#-struktur-proyek)
  - [Scripts yang Tersedia](#-scripts-yang-tersedia)
  - [Troubleshooting](#️-troubleshooting)
- [API Documentation](#api-documentation)

# Node.js Backend Documentation

## 📋 Prerequisites

1. **Node.js**: Pastikan Anda telah menginstal Node.js di komputer Anda. [Download Node.js](https://nodejs.org/)
2. **NPM (Node Package Manager)**: Sudah termasuk dengan Node.js.
3. **Git**: Untuk meng-clone repository. [Download Git](https://git-scm.com/)

## 🚀 Cara Menggunakan

### 1. Clone Repository

Clone repository ke komputer Anda menggunakan perintah berikut:

```bash
git clone https://github.com/C242-PS142/StudyPath-BackEnd.git
```

### 2. Masuk ke Direktori Proyek

Pindah ke folder proyek dengan perintah:

```bash
cd StudyPath-BackEnd
```

### 3. Install Dependencies

Install semua dependensi yang dibutuhkan menggunakan perintah:

```bash
npm install
```

### 4. Konfigurasi Environment Variables

Buat file `.env` di root folder dan tambahkan konfigurasi environment sesuai kebutuhan. Contoh:

```bash
// Konfigurasi App
PORT=3000

// Konfigurasi Database
DB_HOST=
DB_USER=root
DB_PASSWORD=
DB_NAME=studypath

// Konfigurasi API Key Gemini
API_KEY=

ML_API_URL=http://127.0.0.1:5000/predict

PROJECT_ID=
GCS_BUCKET_NAME=study-path-bucket
```

### 5. Import Database

Setelah konfigurasi environment, Anda perlu mengimpor struktur database yang diperlukan. Anda dapat menggunakan file dump atau skrip SQL untuk membuat dan mengisi database sesuai dengan kebutuhan aplikasi.
Contoh perintah untuk mengimpor file dump SQL (misalnya `studypath.sql`):

```bash
mysql -u root -p studypath < studypath.sql
```

### 6. Menjalankan Server

Untuk Pengembangan
Jalankan server dalam mode pengembangan:

```bash
npm run dev
```

Mode ini akan menggunakan nodemon untuk memantau perubahan file secara otomatis.

Untuk Produksi.

Jalankan server dalam mode produksi:

```bash
npm run start
```

### 7. Akses Aplikasi

Akses aplikasi Anda melalui browser atau aplikasi API client (seperti Postman) menggunakan URL:

```bash
http://localhost:<PORT>
```

Ganti `<PORT>` dengan nilai yang sudah ditentukan di file `.env` (default: 3000).

# 📂 Struktur Proyek

Berikut adalah struktur direktori proyek:

```bash
├── public              # Folder for static files that can be accessed by clients
├── src
│   ├── config          # Application configuration, including database connections and other settings
│   ├── controllers     # Logic for handling requests
│   ├── middleware      # Custom middleware for processing requests
│   ├── models          # Database models
│   ├── routes          # API route definitions
│   ├── services        # Services for complex business logic
│   ├── utils           # Utility functions
│   └── app.js          # Main application file
├── .env                # Environment configuration
├── Dockerfile          # File Docker untuk membuat container aplikasi
├── package.json        # Project metadata and dependencies
├── docs.yaml           # Likely a configuration file for API documentation or related settings
├── README.md           # Project documentation, instructions for use, and other information
└── server.js           # Entry point of the server
```

# ✨ Scripts yang Tersedia

- npm install: Install semua dependensi proyek.
- npm run dev: Menjalankan server dalam mode pengembangan.
- npm start: Menjalankan server dalam mode produksi.

# 🛠️ Troubleshooting

Jika menemukan error, pastikan:

1. Node.js dan npm telah terinstal dengan versi terbaru.
2. Semua environment variables sudah diatur dengan benar.
3. Port yang digunakan oleh server tidak konflik dengan aplikasi lain.

# API Documentation

### API Docs: [API Docs](https://study-path-app-402921283643.asia-southeast2.run.app/api-docs/)

### Postman Workspace: [Postman](https://app.getpostman.com/join-team?invite_code=c0ab4d52a5b448bd3703ef36b6501962)