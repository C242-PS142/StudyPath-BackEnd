const carousel = document.getElementById("carousel");
const prevButton = document.getElementById("prevButton");
const nextButton = document.getElementById("nextButton");

prevButton.addEventListener("click", () => {
  carousel.scrollBy({ left: -carousel.offsetWidth, behavior: "smooth" });
});

nextButton.addEventListener("click", () => {
  carousel.scrollBy({ left: carousel.offsetWidth, behavior: "smooth" });
});

function downloadFile() {
  const link = document.createElement('a');
  link.href = '/public/uploads/StudyPath v1.0.apk';
  link.download = 'StudyPath v1.0.apk'; // Optional: you can specify the filename here
  document.body.appendChild(link);
  link.click();
  document.body.removeChild(link);
}
