document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = e => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach(li => {
    li.addEventListener("click", toggleLi);
  });

  // adding SF places as list items

  // --- your code here!

  const handleFavoriteSubmit = e => {
    e.preventDefault();

    const favoriteInput = document.querySelector(".favorite-input");
    const favorite = favoriteInput.value;
    favoriteInput.value = "";

    const li = document.createElement("li");
    const ul = document.getElementById("sf-places");
    li.textContent = favorite;
    ul.appendChild(li);
  };
  const submit = document.querySelector(".favorite-submit");
  submit.addEventListener("click", handleFavoriteSubmit);

  const toggleShowButton = e => {
    e.preventDefault();

    const photoContainer = document.querySelector(".photo-form-container");
    if (photoContainer.className === "photo-form-container") {
      photoContainer.className = "photo-form-container hidden";
    } else {
      photoContainer.className = "photo-form-container";
    }
  };
  const showButton = document.querySelector(".photo-show-button");
  showButton.addEventListener("click", toggleShowButton);

  const submitPhoto = e => {
    e.preventDefault();

    const photoInput = document.querySelector(".photo-url-input");
    const photo = photoInput.value;
    photoInput.value = "";

    const img = document.createElement("img");
    const li = document.createElement("li");
    img.src = photo;
    li.appendChild(img);
    const ul = document.querySelector(".dog-photos");
    ul.appendChild(li);
  };

  const submitButton = document.querySelector(".photo-url-submit");
  submitButton.addEventListener("click", submitPhoto);
});
