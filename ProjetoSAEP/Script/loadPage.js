// simular uma API (adicionar as img, comentários etc)
const dados = [
    { src: "./Imagens/Everest.jpg", likes: 5, comentarios: 2 },
    { src: "./Imagens/MonteFuji.jpg", likes: 3, comentarios: 4 },
    { src: "./Imagens/AlpesSuiços.jpg", likes: 4, comentarios: 5 },
    { src: "./Imagens/GrandCanyon.jpg", likes: 11, comentarios: 6 },
    { src: "./Imagens/MonteBranco.jpg", likes: 6, comentarios: 1 },
    { src: "./Imagens/MonteElbrus.jpg", likes: 12, comentarios: 3 },
    { src: "./Imagens/PicoPikes.jpg", likes: 22, comentarios: 8 },
    { src: "./Imagens/Huandoy.jpg", likes: 16, comentarios: 0 },
];

const itensGaleria = document.querySelector(".item");
itensGaleria.forEach((item, index) => {
    const img = item.querySelector("img");
    // COMENTÁRIOS  
    const spans = item.querySelectorAll(".interec span");
    // querySelector = seleciona só um
    // querySelectorAll = seleciona mais de um// querySelector = seleciona só um
    // querySelectorAll = seleciona mais de um
    img.src = dados[index].src;
    spans[0].textContent = dados[index].likes;
    spans[1].textContent = dados[index].comentarios;

})

