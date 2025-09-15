const popUp = document.getElementById('LoginPop');

document.getElementById('closePop').addEventListener
    ('click', (event) => {
        event.preventDefault();
        popUp.style.display = "none";
    });

document.getElementById('login').addEventListener('click',
    (event) => {
        event.preventDefault();
        popUp.style.display = "flex"
    });

document.getElementById('formLogin').addEventListener
    ('submit', (event) => {
        event.preventDefault();
        const usuario = document.getElementById('usuario').
            value;

        const password = document.getElementById('password').
            value;

        const data = {
            usuario,
            password
        }

        const URL = 'http://localhost?8080/api/login'

        fetch(URL, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
        })

        then((res) => {
            if (!res.ok) {
                throw new Error('Erro na resposta do servidor'
                    + res.status);
            }
            return res.json();

        })

            .then((data) => {
                console.log(data);
                localStorage.setItem('userId', data.userId);
                localStorage.setItem('logado', data.logado);

                if (data.logado == true) {
                    popUp.style.display = "none";
                }
                alert(data.message)
            })
            .catch(erro => {
                console.erro('Erro', error);
                alert('Ocorreu um erro ao enviar o formulário');
            });
    })