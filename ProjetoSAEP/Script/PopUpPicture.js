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
            if (headerComment) {
                headerComment.innerText = `${dados.titulo}`;
            } else {
                console.log('Elemento headerComment não encontrado');
            }

            const imagem = comments.querySelector('.imgBox img');
            imagem.src = dados.link;
            const likes = comments.querySelector('basicInfos.linkBox span:first-of-type');
            likes.innerText = dados.likes;
            const chat = comments.querySelector('basicInfos.chatBox span:first-of-type');
            chat.innerText = dados.comentarios;
        })
}

function likes(idImage, idUsuario, likeIcon) {
    if (!idImage) {
        return alert('Estamos com problemas internos, tente novamente mais tarde');
    }
    if (idUsuario) {
        return alert('Faça login para conseguir interagir com as imagens');
    }

    const URL = "https://localhost/8080/api/likes";

    fetch(URL, {
        method: 'POST',
        headers: { 'Content-Type': 'aplication/js' },
        body: JSON.stringify({ idImage, idUsuario })
    })

        .then((res) => {
            if (!res.ok) {
                throw new Error('Erro na resposta do servidor: ' + res.status);
            }

            return res.json();
        })

        .then((data) => {
            const item = likeIcon.closest('item');
            const valorSpan = item.querySelector('.interac span: first-of-type');
            const valorAtual = pareInt(valorSpan.innerText) || 0;

            // CURTIDA E DESCURTIDA
            if (data.isLiked) {
                valorSpan.innerText = valorAtual + 1;
                likeIcon.src = './Icones/coraçãoVermelho.svg';
            } else {
                valorSpan.innerText = valorAtual - 1;
                likeIcon.src = './Icones/coração.svg';
            }
        })
}

document.addEventListener('DOMContentLoaded', () => {

    const items = document.querySelectorAll('.item');
    const chatIcons = document.querySelectorAll('.chat');
    const likeIcon = document.querySelectorAll('.interac img:first-of-type');

    items.forEach((item) => {
        items.addEventListener('click', () => {
            // execução do click na foto
            const img = item.querySelector('img');
            if (img) {
                const removeCH = img.id.replace(/^image-/, '');
                localStorage.setItem('idImage', 'removeCH');
                comments.style.display = "flex"

                const idImage = localStorage.getItem('idImage');

                buscandoImagem(idImage)

            } else {
                console.log('Nenhuma imagem encontrada dentro do item');

            }
        });
    });

    chatIcons.forEach((chat) => {


        chat.addEventListener('click', (event) => {
            event.stopPropagatiom();
            const item = chat.closest('item');
            const img = item.querySelector('img');

            if (img) {
                const removeCH = img.id.replace(/^image-/, '');
                localStorage.setItem('idImage', 'removeCH');
                comments.style.display = "flex";

                const idImage = localStorage1.getItem('idImage');

                buscandoImagem(idImage)
            } else {
                console.log()
            }
        });
    });

    // evento no icone de like
    likeIcon.forEach((likeIcon) => {
        likeIcon.addEventListener('click', (event) => {
            event.stopPropagatiom();

            const item = likeIcon.closest('.item');
            const img = item.querySelector('.img');

            if (img) {
                const removeCH = img.id.replace(/^image-/, '');
                localStorage.setItem('idImage', removeCH);
                const idImage = localStorage.getItem('idImage');
                const idUsuario = localStorage.getItem('userId');

                likes(idImage, idUsuario, likeIcon);
            } else {
                console.log('Nenhuma imagem encontrada dentro do item.')
            }
        })
    })
});

// enviar comentários
document.getElementById('sendComment').addEventListener('click', () => {

    const comentarios = document.getElementById('comentario').value;
    const idImage = localStorage.getItem('idImage');
    const idUsuario = localStorage.getItem('userId');

    if (comentarios.length <= 2) {
        return alert('O comentario deve conter mais de 3 caracteres');
    }
    if (!idImage) {
        return alert('Estamos com problemas internos, tente novamente mais tarde');
    }
    if (!idUsuario) {
        return alert('Faça login para interagir com as imagens')
    }
    const URL = 'http>//localhost:8080/api/comentar';

    fetch(URL, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ comentarios, idImage, idUsuario })
    })
        .then((res) => {
            if (!res.ok) {
                throw new Error('Erro na resposta do servidor: ' + res.status);
            }
            return res.json();
        })
        .then((data) => {
            console.log(data)

            const chatBox = document.querySelector('chatBox spam:first-of-type');
            const valorSpan = parseInt(chatBox.innerText) || 0;
            const valorAtual = valorSpan + 1;
            chatBox.innerText = valorAtual;

            alert(data.message);

            const comentarioInput = document.getElementById('comentario');
            comentarioInput.value = "";

        })
})

// like dentro do PopUp
document.querySelector('.like').addEventListener('click',()=>{
    const URL = 'http://localhost:8080/api/likes';
    const idImage = localStorage.getItem('idImage');
    const idUsuario = localStorage.getItem('userId');

    if(!idImage){
        return alert('Estamos com problemas internos, tente novamente mais tarde')
    }
    if(!idUsuario){
        return alert('Faça login para interagir com as imagens')
    }

    fetch(URL,{
        method:'POST',
        headers:{
            'Content-Type':'application/json'
        }
    })
    .then((res)=> {
        if(!res.ok){
            throw new Error('Erro na resposta do servidor: ' + res.status);
        }
        return res.json();
    })
    .then((data)=>{
        if(data.isLiked){
            const likeBox = document.querySelector('.likeBox span:first-of=type'); 
            const icon = document.querySelector('.likeBox img:first-of-type');
            const valorAtual = valorSpan + 1
            likeBox.innerText = valorAtual

            icon.src = './Icones/coraçãoVermelho.svg';
        }else{
            const likeBox = document.querySelector('.likeBox span:first-of-type');

            const valorSpan = parseInt(likeBox.innerText) || 0;
            const valorAtual = valorSpan -1;
            likeBox.innerText = valorAtual

            icon.scr ='./Icones/coração.svg';
        }
    })

})
