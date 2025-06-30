import { useState } from 'react'
import './App.css'

function App() {
// VARIÁVEIS PARA O PERSONAGEM
  const [vida, setVida] = useState(10)
  const [ataque, setAtaque] = useState(1)
  const [defesa, setDefesa] = useState(2)
  const [magia, setMagia] = useState(1)
  
// FUNÇÕES PARA ALTERAR ATRIBUTOS DO PERSONAGEM
    // () =>{} ARROW FUNCTION É UMA FUNÇÃO INVISÍVEL
const aumentarPonto = (atributo , valor) => () => atributo(valor + 1)
const diminuirPonto = (atributo , valor) => () => atributo(valor - 1)
const resetar =  (atributo , valor) => () => atributo(valor)


  return (
    <>
      <h1>Ficha do Personagem🐱‍👤</h1>
      <div id='infoPersonagem' className="card">
        <h2>Nome: Natsu</h2>
        <p>Classe: Mago</p>
        <p>Nível: 1</p>
      </div>

      <div id='statusPersonagem' className="card">
        <div className='cadaStatus'>
        {/* VIDA */}
        <button className='diminuirBtn' onClick={diminuirPonto(setVida, vida)}> - 1 </button>
        <h4>❤ VIDA : {vida}</h4>
        <button className='aumentarBtn' onClick={aumentarPonto(setVida, vida)}>+ 1</button>
        <div>
        <button onClick={resetar(setVida, 10)}> RESETAR </button>
        </div>
        </div>

        <div className='cadaStatus'>
        {/* ATAQUE */}
        <button className='diminuirBtn' onClick={diminuirPonto(setVida, ataque)}> - 1 </button>
        <h4>💥ATAQUE : {ataque}</h4>
        <button className='aumentarBtn' onClick={aumentarPonto(setAtaque, ataque)}>+ 1</button>
        <div>
        <button onClick={resetar(setAtaque, 1)}> RESETAR </button>
        </div>
        </div>

        <div className='cadaStatus'>
        {/* DEFESA */}
        <button className='diminuirBtn' onClick={diminuirPonto(setDefesa, defesa)}> - 1 </button>
        <h4>⚔ DEFESA : {defesa}</h4>
        <button className='aumentarBtn' onClick={aumentarPonto(setDefesa, defesa)}>+ 1</button>
        <div>
        <button onClick={resetar(setDefesa, 2)}> RESETAR </button>
        </div>
        </div>

        <div className='cadaStatus'>
        {/* MAGIA */}
        <button className='diminuirBtn' onClick={diminuirPonto(setMagia, magia)}> - 1 </button>
        <h4>✨ MAGIA : {magia}</h4>
        <button className='aumentarBtn' onClick={aumentarPonto(setMagia, magia)}>+ 1</button>
        <div>
        <button onClick={resetar(setMagia, 1)}> RESETAR </button>
        </div>
        </div>

      </div>
    </>
  )
}

export default App
