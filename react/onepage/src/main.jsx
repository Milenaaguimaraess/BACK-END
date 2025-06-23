// MAIN - responsável pela importção e montagem
import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import Header from './components/header/header'
import Home from './pages/home/home'

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <Header />
    <Home />
  </StrictMode>,
)
