# 🪙 Monitoramento de Preço do Bitcoin em Ruby

Este projeto é um script simples em Ruby que consulta o preço atual do Bitcoin em **dólar (USD)** e **real (BRL)** utilizando a API pública da CoinGecko.

---

## 🚀 Funcionalidades

- Busca o preço atual do Bitcoin a partir da [API da CoinGecko](https://www.coingecko.com/en/api).
- Formata os valores com separadores de milhar e casas decimais corretamente.
- Exibe os valores em tempo real no terminal.
- Pode ser facilmente adaptado para gravar os dados em um `.csv` ou usar loops mais longos.

  ---

## 💻 Pré-requisitos
Certifique-se de que você tem o Ruby instalado. Para verificar:

```bash
ruby -v
```
Se não tiver, você pode instalar via rbenv, rvm ou pelo próprio gerenciador do sistema:

```bash
sudo apt install ruby-full
```
  ---
  ## 📦 Instalação
  Clone este repositório:

  ```bash
git clone https://github.com/matheusianidev/monitor-bitcoin.git
cd monitor-bitcoin
```
  ---
## 🧠 Como usar
Execute o script com:

```bash
ruby bitcoin.rb
```
O script irá:

✅ Buscar o preço atual do Bitcoin
✅ Mostrar o valor em USD e BRL
✅ Repetir o processo por 4 segundos (ou quantas vezes você quiser)

  ---

## 🔧 Exemplo de saída

```yaml
💸 Preço atual do Bitcoin:
USD: $88,001.12
BRL: R$ 456.214,89
---
```
  ---

## 👨‍💻 Autor
Feito com 💻 e ☕ por Matheus Iani

  
