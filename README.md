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
    - [Menjalankan Server](#5-menjalankan-server)
    - [Akses Aplikasi](#6-akses-aplikasi)
  - [Struktur Proyek](#-prerequisites)
  - [Scripts yang Tersedia](#-prerequisites)
  - [Troubleshooting](#-prerequisites)
- [API Documentation](#api-documentation)
  - [All Quiz](#get-all-quiz)
  - [Answer Quiz](#post-answer-quiz)
  - [Login](#login)
  - [Me](#me)

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
PORT=3000
NODE_ENV=development

//Konfigurasi Database
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=
DB_NAME=studypath
DB_PORT=3306
```

### 5. Menjalankan Server
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

### 6. Akses Aplikasi
Akses aplikasi Anda melalui browser atau aplikasi API client (seperti Postman) menggunakan URL:
```bash
http://localhost:<PORT>
```
Ganti `<PORT>` dengan nilai yang sudah ditentukan di file `.env` (default: 3000).

# 📂 Struktur Proyek
Berikut adalah struktur direktori proyek:
```bash
├── src
│   ├── routes          # API route definitions
│   ├── controllers     # Logic for handling requests
│   ├── models          # Database models
│   ├── middleware      # Custom middleware
│   ├── utils           # Utility functions
│   └── app.js          # Main application file
├── .env                # Environment configuration
├── package.json        # Project metadata and dependencies
├── README.md           # Project documentation
└── server.js           # Entry point of the server
```

# ✨ Scripts yang Tersedia
* npm install: Install semua dependensi proyek.
* npm run dev: Menjalankan server dalam mode pengembangan.
* npm start: Menjalankan server dalam mode produksi.
* npm test: Menjalankan pengujian (opsional, jika pengujian tersedia).

# 🛠️ Troubleshooting
Jika menemukan error, pastikan:

1. Node.js dan npm telah terinstal dengan versi terbaru.
2. Semua environment variables sudah diatur dengan benar.
3. Port yang digunakan oleh server tidak konflik dengan aplikasi lain.



# API Documentation

### Endpoint: http://localhost:3000
### Postman Workspace: [Postman](https://app.getpostman.com/join-team?invite_code=c0ab4d52a5b448bd3703ef36b6501962)

## Get All Quiz

### URL
`/api/quiz`

### Method
`GET`

### Response

#### Success Response
**Status Code**: `200 OK`  
**Response Body**:
```json
{
    "status": "success",
    "message": "Quiz fetched successfully",
    "data": {
        "quiz": [
            {
                "question_code": "AGR1",
                "question_text": "I feel little concern for others."
            },
            {
                "question_code": "AGR10",
                "question_text": "I make people feel at ease."
            },
            ...
        ]
    }
}
```

## Post Answer Quiz

### URL
`/api/quiz`

### Method
`POST`

### Headers
| Key           | Value                   |
|---------------|-------------------------|
| Authorization | Bearer `<your_token>`   |
| Content-Type  | application/json        |

### Request Body
The request body contains an array of answers. Each answer includes the `question_code` and the `answer_value`.

#### Example Request Body
```json
{
  "answers": [
    { "question_code": "EXT1", "answer_value": 4 },
    { "question_code": "EXT2", "answer_value": 2 }
  ]
}
```
### Response

#### Success Response
**Status Code**: `200 OK`  
**Response Body**:
```json
{
    "status": "success",
    "message": "Answers submitted successfully"
}
```
#### Error Response
**Status Code**: `400 Bad Request`
**Response Body**:
```json
{
    "status": "error",
    "message": "Invalid input"
}
```
**Status Code**: `401 Unauthorized`
**Response Body**:
```json
{
    "status": "error",
    "message": "Unauthorized"
}
```

## Login

### URL
`/auth/login`

### Method
`POST`

### Headers
| Key           | Value                   |
|---------------|-------------------------|
| Authorization | -                       |
| Content-Type  | application/json        |

### Request Body
The request body contains an array of answers. Each answer includes the `question_code` and the `answer_value`.

#### Example Request Body
```json
{
  "idToken": "eyJhbGciOiJSUzI1NiIsImtpZCI6IjFlNTIxYmY1ZjdhNDAwOGMzYmQ3MjFmMzk2OTcwOWI1MzY0MzA5NjEiLCJ0eXAiOiJKV1QifQ.eyJuYW1lIjoiSm9oYW5lcyBOaWNreSIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BQ2c4b2NKZ3RXT2M5WlpqblljS3JNLVhHUG1JYWNPWDlYSGxYNm5zWlJGQ2ppU2hvc0dvUy1VOD1zOTYtYyIsImlzcyI6Imh0dHBzOi8vc2VjdXJldG9rZW4uZ29vZ2xlLmNvbS9zdHVkeXBhdGgtNzdjZDEiLCJhdWQiOiJzdHVkeXBhdGgtNzdjZDEiLCJhdXRoX3RpbWUiOjE3MzIxMTA3MjAsInVzZXJfaWQiOiJocWlsMGlMbm5kUmVmNzZjUFFXUXNMOGVuckQyIiwic3ViIjoiaHFpbDBpTG5uZFJlZjc2Y1BRV1FzTDhlbnJEMiIsImlhdCI6MTczMjExMDcyMCwiZXhwIjoxNzMyMTE0MzIwLCJlbWFpbCI6ImouYmFwdGlzdGE1N0B5YWhvby5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiZmlyZWJhc2UiOnsiaWRlbnRpdGllcyI6eyJnb29nbGUuY29tIjpbIjExNjAwOTM5NTc4NzY0NTI1NzQyNyJdLCJlbWFpbCI6WyJqLmJhcHRpc3RhNTdAeWFob28uY29tIl19LCJzaWduX2luX3Byb3ZpZGVyIjoiZ29vZ2xlLmNvbSJ9fQ.fK223Olq_Upe4Noc77xpT6feN_u_el-LGdt_8JSdn7HU31xgLgV1AKaWG1fRZn0-NYO4tJ_-S1EvwGv1x5SF1Zvp-bD-Xygiop8twoH90FLbsHXoKB9b1AP0qPjKbW_b6-oug7yaWUEif8A9qZJZ24TN8_cvyj4BkTWySW9nenjyYbwGlX6AOPwk7l8351b0sAKuXirfhNMOui1MQHU6G4M03xdfBOUQFxsMInz5Hy7O3w46f5nplwrE7tslzWSsNHizJV8NGma_E_Re7APkB1eDgOmPLJm1JfkoQ_AHvEyb5ljwHIYgzCpwVWO5yvBtCCj7wPZs3VE7tZyzB"
}
```
### Response

#### Success Response
**Status Code**: `200 OK`  
**Response Body**:
```json
{
    "status": "success",
    "message": "Login successful",
    "data": {
        "uid": "hqil0iLnndRef76cPQWQsL8enrD2",
        "name": "Johanes Nicky",
        "email": "j.baptista57@yahoo.com",
        "picture": "https://lh3.googleusercontent.com/a/ACg8ocJgtWOc9ZZjnYcKrM-XGPmIacOX9XHlX6nsZRFCjiShosGoS-U8=s96-c"
    }
}
```
#### Error Response
**Status Code**: `400 Bad Request`
**Response Body**:
```json
{
    "status": "error",
    "message": "Invalid input"
}
```
**Status Code**: `401 Unauthorized`
**Response Body**:
```json
{
    "status": "error",
    "message": "Unauthorized: Invalid ID Token"
}
```
## Me

### URL
`/auth/me`

### Method
`GET`

### Headers
| Key           | Value                   |
|---------------|-------------------------|
| Authorization | Bearer `<your_token>`   |
| Content-Type  | application/json        |

### Response

#### Success Response
**Status Code**: `200 OK`  
**Response Body**:
```json
{
    "status": "success",
    "message": "User fetched successfully",
    "data": {
        "user": {
            "name": "Johanes Nicky",
            "picture": "https://lh3.googleusercontent.com/a/ACg8ocJgtWOc9ZZjnYcKrM-XGPmIacOX9XHlX6nsZRFCjiShosGoS-U8=s96-c",
            "auth_time": 1732110720,
            "user_id": "hqil0iLnndRef76cPQWQsL8enrD2",
            "sub": "hqil0iLnndRef76cPQWQsL8enrD2",
            "iat": 1732110720,
            "exp": 1732114320,
            "email": "j.baptista57@yahoo.com",
            "uid": "hqil0iLnndRef76cPQWQsL8enrD2"
        }
    }
}
```