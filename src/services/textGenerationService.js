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

Saya Seorang Siswa SMP, Jenis Kelamin Perempuan, Usia 14 Tahun, Saya ingin meminta rekomendasi untuk saya belajar yang sesuai dengan kepribadian saya, berikut data saya:

KETERBUKAAN TERHADAP PENGALAMAN: ${Openness}%
KESTABILAN EMOSI: ${Neuroticism}%
KETERBUKAAN SOSIAL, ENERGI DAN ANTUSIASME: ${Extroversion}%
KETELITIAN: ${Conscientiousness}%
KESEPAKATAN: ${Agreeableness}%
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