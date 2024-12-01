# backend-bangkit
 This repository for Bangkit Capstone Project

# Table of Contents
- [Node.js Backend Documentation](#nodejs-backend-documentation)
  - [Prerequisites](#📋-prerequisites)
  - [Cara Menggunakan](#🚀-cara-menggunakan)
    - [Clone Repository](#1-clone-repository)
    - [Masuk ke Direktori Proyek](#2-masuk-ke-direktori-proyek)
    - [Install Dependencies](#3-install-dependencies)
    - [Konfigurasi Environment Variables](#4-konfigurasi-environment-variables)
    - [Import Database](#5-import-database)
    - [Menjalankan Server](#6-menjalankan-server)
    - [Akses Aplikasi](#7-akses-aplikasi)
  - [Struktur Proyek](#📂-struktur-proyek)
  - [Scripts yang Tersedia](#✨-scripts-yang-tersedia)
  - [Troubleshooting](#️🛠️-troubleshooting)
- [API Documentation](#api-documentation)
  - [All Quiz](#get-all-quiz)
  - [Answer Quiz](#post-answer-quiz)
  - [Login](#login)
  - [Me](#me)
  - [Register](#register)

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
DB_HOST=34.128.95.7
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
├── README.md           # Project documentation, instructions for use, and other information
└── server.js           # Entry point of the server
```

# ✨ Scripts yang Tersedia
* npm install: Install semua dependensi proyek.
* npm run dev: Menjalankan server dalam mode pengembangan.
* npm start: Menjalankan server dalam mode produksi.

# 🛠️ Troubleshooting
Jika menemukan error, pastikan:

1. Node.js dan npm telah terinstal dengan versi terbaru.
2. Semua environment variables sudah diatur dengan benar.
3. Port yang digunakan oleh server tidak konflik dengan aplikasi lain.



# API Documentation

### Endpoint: http://localhost:<PORT>
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
                "id": 1,
                "question_code": "EXT1",
                "question_text_en": "I am the life of the party.",
                "question_text_id": "Saya adalah pusat perhatian di pesta."
            },
            {
                "id": 2,
                "question_code": "EXT2",
                "question_text_en": "I don't talk a lot.",
                "question_text_id": "Saya tidak banyak bicara."
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
    "message": "Prediction from ML server successfully",
    "data": {
        "prediction": {
            "Kesepakatan": 0.7757217884063721,
            "Kestabilan Emosi": 0.28837090730667114,
            "Ketelitian": 0.8003525733947754,
            "Keterbukaan Sosial, Energi, dan Antusiasme": 0.5924340486526489,
            "Keterbukaan terhadap Pengalaman": 0.662539005279541
        }
    }
}
```
#### Error Response
**Status Code**: `400 Bad Request`
**Response Body**:
```json
{
    "status": "fail",
    "message": "Failed to answer quiz"
}
```
**Status Code**: `401 Unauthorized`
**Response Body**:
```json
{
    "status": "fail",
    "message": "Unauthorized: Invalid Access Token"
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
        "isRegister": true,
        "isAnswerQuiz": true,
        "result": {
            "id": "8kYIPrLrwwNWAZRG3JagvAMxoZI2",
            "name": "Nicky",
            "email": "nicky@gmail.com",
            "date_birth": "2024-11-21T00:00:00.000Z",
            "gender": "L",
            "avatar": "https://storage.googleapis.com/study-path-bucket/fotoku.jpg",
            "created_at": "2024-11-28T18:24:50.000Z"
        }
    }
}
```
#### Error Response
**Status Code**: `400 Bad Request`
**Response Body**:
```json
{
    "status": "fail",
    "message": "No Access Token provided"
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
        "isRegister": true,
        "result": [
            {
                "id": "8kYIPrLrwwNWAZRG3JagvAMxoZI2",
                "name": "Nicky",
                "email": "nicky@gmail.com",
                "date_birth": "2024-11-21T00:00:00.000Z",
                "gender": "L",
                "avatar": "https://storage.googleapis.com/study-path-bucket/fotoku.jpg",
                "created_at": "2024-11-28T18:24:50.000Z"
            }
        ]
    }
}
```
#### Error Response
**Status Code**: `401 Unauthorized`
**Response Body**:
```json
{
    "status": "fail",
    "message": "Unauthorized: Invalid Access Token"
}
```

## Register

### URL
`/auth/register`

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
  "id": "8kYIPrLrwwNWAZRG3JagvAMxoZI2",
  "name": "Nicky",
  "email": "nicky@gmail.com",
  "date_birth": "2024-11-21",
  "avatar": "upload.jpg"
}
```

### Response

#### Success Response
**Status Code**: `201 OK`  
**Response Body**:
```json
{
    "status": "success",
    "message": "Berhasil membuat akun",
    "data": {
        "user": {
            "id": "8kYIPrLrwwNWAZRG3JagvAMxoZI2",
            "name": "Nicky",
            "email": "nicky@gmail.com",
            "date_birth": "2024-11-21",
            "gender": "L",
            "avatar": "https://storage.googleapis.com/study-path-bucket/fotoku.jpg"
        }
    }
}
```
#### Error Response
**Status Code**: `401 Unauthorized`
**Response Body**:
```json
{
    "status": "fail",
    "message": "Unauthorized: Invalid Access Token"
}
```

## Edit

### URL
`/auth/edit`

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
  "name": "Nicky",
  "avatar": "https://storage.googleapis.com/study-path-bucket/StudyPath 2.png"
}
```

### Response

#### Success Response
**Status Code**: `201 OK`  
**Response Body**:
```json
{
    "status": "success",
    "message": "Berhasil mengedit akun",
    "data": {
        "user": {
            "id": "8kYIPrLrwwNWAZRG3JagvAMxoZI2",
            "name": "nickyssss",
            "avatar": "https://storage.googleapis.com/study-path-bucket/StudyPath 2.png"
        }
    }
}
```
#### Error Response
**Status Code**: `401 Unauthorized`
**Response Body**:
```json
{
    "status": "fail",
    "message": "Unauthorized: Invalid Access Token"
}
```

## Prediction

### URL
`/api/predict`

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
    "message": "Personality fetched successfully",
    "data": {
        "personality": {
            "Keterbukaan Sosial, Energi, dan Antusiasme": 0.592434,
            "Kestabilan Emosi": 0.288371,
            "Kesepakatan": 0.775722,
            "Ketelitian": 0.800353,
            "Keterbukaan terhadap Pengalaman": 0.662539
        }
    }
}
```
#### Error Response
**Status Code**: `401 Unauthorized`
**Response Body**:
```json
{
    "status": "fail",
    "message": "Unauthorized: Invalid Access Token"
}
```

## Recommendation

### URL
`/api/recommendation`

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
    "message": "Recommendation fetched successfully",
    "data": {
        "recommendation": {
            "id": 10,
            "user_id": "8kYIPrLrwwNWAZRG3JagvAMxoZI2",
            "extraversion": {
                "skor": 59,
                "judul": "Keterbukaan Sosial, Energi, dan Antusiasme",
                "deskripsi": "Anda cukup sosial dan antusias, meskipun tidak selalu mencari banyak interaksi.",
                "rekomendasi": "Manfaatkan kelompok belajar kecil atau diskusi online. Anda bisa lebih efektif belajar dalam situasi yang tidak terlalu ramai. Cobalah mengajar teman sebaya—ini bisa memperkuat pemahaman Anda dan tetap memberi interaksi sosial."
            },
            "neuroticism": {
                "skor": 29,
                "judul": "Kestabilan Emosi",
                "deskripsi": "Skor ini menunjukkan bahwa Anda mungkin lebih sensitif terhadap tekanan atau stres, dan mudah terpengaruh oleh suasana hati.",
                "rekomendasi": "Ciptakan rutinitas belajar yang terstruktur untuk mengurangi kecemasan. Gunakan teknik seperti meditasi ringan atau olahraga untuk menjaga keseimbangan emosi. Fokus pada satu tugas dalam satu waktu untuk menghindari perasaan kewalahan.  Prioritaskan istirahat yang cukup."
            },
            "agreeableness": {
                "skor": 78,
                "judul": "Kesepakatan",
                "deskripsi": "Anda cenderung kooperatif, peduli, dan mudah berempati terhadap orang lain.",
                "rekomendasi": "Pertimbangkan untuk bergabung dalam proyek kelompok yang mendorong kerja sama, seperti kegiatan sosial atau penelitian bersama. Anda juga bisa menjadi mentor bagi teman yang membutuhkan bantuan."
            },
            "conscientiousness": {
                "skor": 80,
                "judul": "Ketelitian",
                "deskripsi": "Ini menunjukkan bahwa Anda adalah orang yang terorganisir dan bertanggung jawab.",
                "rekomendasi": "Manfaatkan keterampilan ini dengan membuat jadwal belajar yang jelas dan daftar tugas harian. Pilih mata pelajaran yang memerlukan fokus dan perhatian terhadap detail, seperti matematika atau pemrograman."
            },
            "openness": {
                "skor": 66,
                "judul": "Keterbukaan Terhadap Pengalaman",
                "deskripsi": "Anda cukup terbuka terhadap pengalaman baru dan ide-ide kreatif. Ini berarti Anda mungkin menikmati pembelajaran yang melibatkan eksplorasi dan inovasi.",
                "rekomendasi": "Cobalah pelajaran yang melibatkan kreativitas, seperti seni, sastra, atau eksperimen sains. Ikuti klub atau kegiatan yang mendorong pemikiran kritis dan imajinasi, seperti coding atau debat."
            }
        }
    }
}
```
#### Error Response
**Status Code**: `401 Unauthorized`
**Response Body**:
```json
{
    "status": "fail",
    "message": "Unauthorized: Invalid Access Token"
}
```