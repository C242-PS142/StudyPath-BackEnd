const carousel = document.getElementById("carousel");
const prevButton = document.getElementById("prevButton");
const nextButton = document.getElementById("nextButton");

prevButton.addEventListener("click", () => {
  carousel.scrollBy({ left: -carousel.offsetWidth, behavior: "smooth" });
});

nextButton.addEventListener("click", () => {
  carousel.scrollBy({ left: carousel.offsetWidth, behavior: "smooth" });
});
