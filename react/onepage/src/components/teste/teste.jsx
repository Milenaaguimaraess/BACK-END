// useStates -> atualiza a função, usar o useState para jogar fora o valor e montar novamente
import {useState} from "react";
import marrocos from "../../assets/images/marrocos.jpg"

function Teste(){
    // gerando variável com const:
    // const nome = "Milena Stéfany";
    // var nome = "Milena Stéfany";

    // toda vez que for atualizar a variável, colocamos o nome que queremos
    const [nome , mudaNome] = useState();
    return (
        <div>
            <img src={marrocos} alt="Marrocos" />
            {/* pra identificar que naão é html, deve colocar as chaves {} */}
            <h1>Seja bem vindo {nome}</h1>
            <button onClick={() => {
                mudaNome("Alessandra")
            }}>CLIQUE AQUI</button>
        </div>
    );
}

export default Teste;