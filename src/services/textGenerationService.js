const { GoogleGenerativeAI } = require("@google/generative-ai");

exports.generateText = async function(data, callback) {
    // Konversi nilai desimal ke persen dan buat prompt baru
    const Openness = Math.round(data["Keterbukaan terhadap Pengalaman"] * 100);
    const Neuroticism = Math.round(data["Kestabilan Emosi"] * 100);
    const Extroversion = Math.round(data["Keterbukaan Sosial, Energi, dan Antusiasme"] * 100);
    const Conscientiousness = Math.round(data["Ketelitian"] * 100);
    const Agreeableness = Math.round(data["Kesepakatan"] * 100);

    const prompt = `Bisakah anda berperan menjadi asisten untuk memberi saran pembelajaran dengan data yang nanti akan saya sajikan yaitu:
    
KETERBUKAAN TERHADAP PENGALAMAN
KESTABILAN EMOSI
KETERBUKAAN SOSIAL, ENERGI DAN ANTUSIASME
KETELITIAN
KESEPAKATAN

Nilai dari data tersebut adalah persentase 0 sampai 100%, semakin tinggi menandakan dia berada di posisi yang hampir mirip dengan nama data, jika rendah maka kepribadian nya berkebalikan. 

Saya meminta untuk memberikan saran belajar untuk hal tersebut dengan menimbang kelima data, namun nanti di sajikan tiap tiap 5 aspek tersebut. Audiens dari data nantinya adalah siswa/siswa SMP dan SMA.

contoh hasil seperti dibawah:
1. Keterbukaan Terhadap Pengalaman (66%)
Anda cukup terbuka terhadap pengalaman baru dan ide-ide kreatif. Ini berarti Anda mungkin menikmati pembelajaran yang melibatkan eksplorasi dan inovasi.

Rekomendasi: Cobalah pelajaran yang melibatkan kreativitas, seperti seni, sastra, atau eksperimen sains. Ikuti klub atau kegiatan yang mendorong pemikiran kritis dan imajinasi, seperti coding atau debat.
2. Kestabilan Emosi (28%)
Skor ini menunjukkan bahwa Anda mungkin lebih sensitif terhadap tekanan atau stres, dan mudah terpengaruh oleh suasana hati.

Rekomendasi: Ciptakan rutinitas belajar yang terstruktur untuk mengurangi kecemasan. Gunakan teknik seperti meditasi ringan atau olahraga untuk menjaga keseimbangan emosi. Fokus pada satu tugas dalam satu waktu untuk menghindari perasaan kewalahan.
3. Keterbukaan Sosial, Energi, dan Antusiasme (55%)
Anda cukup sosial dan antusias, meskipun tidak selalu mencari banyak interaksi.

Rekomendasi: Manfaatkan kelompok belajar kecil atau diskusi online. Anda bisa lebih efektif belajar dalam situasi yang tidak terlalu ramai. Cobalah mengajar teman sebaya—ini bisa memperkuat pemahaman Anda dan tetap memberi interaksi sosial.
4. Ketelitian (79%)
Ini menunjukkan bahwa Anda adalah orang yang terorganisir dan bertanggung jawab.

Rekomendasi: Manfaatkan keterampilan ini dengan membuat jadwal belajar yang jelas dan daftar tugas harian. Pilih mata pelajaran yang memerlukan fokus dan perhatian terhadap detail, seperti matematika atau pemrograman.
5. Kesepakatan (77%)
Anda cenderung kooperatif, peduli, dan mudah berempati terhadap orang lain.

Rekomendasi: Pertimbangkan untuk bergabung dalam proyek kelompok yang mendorong kerja sama, seperti kegiatan sosial atau penelitian bersama. Anda juga bisa menjadi mentor bagi teman yang membutuhkan bantuan.

Sekarang buatkan jawaban untuk detail di Bawah ini:
Saya Seorang Siswa SMA, Jenis Kelamin Laki-Laki, Usia 17 Tahun, Saya ingin meminta rekomendasi untuk saya belajar yang sesuai dengan kepribadian saya, berikut data saya:

KETERBUKAAN TERHADAP PENGALAMAN: ${Openness}%
KESTABILAN EMOSI: ${Neuroticism}%
KETERBUKAAN SOSIAL, ENERGI DAN ANTUSIASME: ${Extroversion}%
KETELITIAN: ${Conscientiousness}%
KESEPAKATAN: ${Agreeableness}%
Buatkan jawaban sesuai dengan contoh yang diberikan tanpa menambah karakter yang tidak diperlukan
`;
    const genAI = new GoogleGenerativeAI(process.env.API_KEY);
    try {
        const model = genAI.getGenerativeModel({ model: "gemini-1.5-flash" });
        const result = await model.generateContent(prompt);
        
        // Menyediakan hasil response text dari generative model
        const generatedText = result.response.text(); 

        // Callback untuk mengirimkan hasil
        callback(null, generatedText);
    } catch (err) {
        // Menangani error dan mengirimkan melalui callback
        console.error("Error generating text:", err);
        callback(err, null);
    }
}