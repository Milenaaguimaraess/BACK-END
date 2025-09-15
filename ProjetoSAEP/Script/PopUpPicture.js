const comments = document.getElementById('boxComment')

document.getElementById('closeComment').addEventListener
    ('click', () => {
        comments.style.display = "none";
    })

function buscandoImagem(idImagem) {
    const URL = 'https://localhost/8080/api/getImage';

    fetch(URL, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },

        body: JSON.stringify({ idImagem })
    })

        .then((res) => {

            if (!res.ok) {
                throw new Error('Erro na resposta do servidor: ' + res.status);
            }
            return res.json();
        })

        .then((data) => {
            const dados = data.dados
            const headerComment = comments.querySelector('.headerComment h2');
            if(headerComment){
                headerComment.innerText = `${dados.titulo}`;
            }else{console.log('Elemento headerComment não encontrado');
            }

            const imagem = comments.querySelector('.imgBox img');
            imagem.src = dados.link;
            const likes = comments.querySelector('basicInfos.linkBox span:first-of-type');
            likes.innerText = dados.likes;
            const chat =comments.querySelector('basicInfos.chatBox span:first-of-type');
            chat.innerText = dados.comentarios;
    })
}