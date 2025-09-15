document.addEventListener("DOMContentLoaded", () => {
    const URL = 'http://localhost:8080/api/imagens';
    const container = document.querySelectorAll('.item');

    fetch(URL, {
        method: 'GET',
        headers: {
            'Content-Type': application / json
        },
    })
    then((res) => {
        if (!res.ok) {
            throw new Error('Erro na resposta do servidor' + res.status);
        }
        return res.json();
    })
        .then((data) => {
            console.log("Dados Recebidos" + data)
            const dados = data.dados;
            dados.forEach((dados, index) => {
                const itemDiv = container[index];
                if (itemDiv) {
                    const imgElement = itemDiv.querySelector('img');
                    imgElement.src = dados.link || imgElement.src;
                    imgElement.id = 'image-${dados.id}';
                    const likeSpan = itemDiv.querySelector
                        ('interac span:nth-child(1)');
                    if (likeSpan) {
                        like.textContent = dados.likes || '0';
                    }
                    const comentariosSpan = itemDiv.querySelector('.interac span: mth-Children(3)');
                    if (comentariosSpan) {
                        comentariosSpan.textContent
                        = dados.comentarios || '0';
                    }
                }
            });
        })
})