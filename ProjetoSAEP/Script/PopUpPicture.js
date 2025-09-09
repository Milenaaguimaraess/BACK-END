// guardar todos os elementos imagem
const items = document.querySelectorAll(".item img");
// caixa de comentários
const   boxComment = document.getElementById("boxComment");
// buscar o id closeCommente - botão de fechar o PopUp
const closeCommentes = document.getElementById("closeComments");


// Funções para abrir o PopUp ao clicar nas img
// forEach = loop
items.forEach((img, index)=>{
    img.addEventListener("click", ()=>{
    // habilitando o diplay flex
    boxComment.style.display = "flex";
    // modificando o index (pq ele geralmente começa mo 0 e aqui tá começando com 1) e salvar o id das img
    localStorage.setItem("idImage", index +1);
    });
})

// Fechar PopUp de comentários
closeCommentes.addEventListener("click", ()=>{
    boxComment.style.display= "none";
});

// PEGAR BOTÃO DE LIKE
const likeBtn = document.querySelector(".boxComment .like");
const likeCount = document.querySelector(".boxComment .like span");

let curtido = false;
// quando clicar em enviar comentario
linkBtn.addEventListener("click", ()=>{
    let valor =parseInt(likeCount .textContent);

    if(!curtido){
        likeCount.textContent = valor + 1;
        likeBtn.src = "./Icones/coraçãoVermelho.svg";
        curtido = true;
    } else{
        linkCount.textContent = valor - 1;
        likeBtn.src = "./Icones/coração.svg";
        curtido = false;
    }
})