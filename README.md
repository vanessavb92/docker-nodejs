<span class="docker-blue">Docker-nodejs</span>
How to build docker image for nodejs apps

![docker-node](assets/node-js-docker.png)


<style>
  .docker-blue {
    color: #0078D6;
    font-weight: bold;
  }
</style>


<span class="docker-blue">Instale o Docker:</span>
* Certifique-se de ter o Docker
 * instalado na sua máquina.

* Crie um Diretório de Projeto:
* Crie um diretório para o seu projeto 
* Node.js e navegue até ele no terminal.

<span class="docker-blue">Crie um Arquivo Dockerfile:</span>
* Crie um arquivo chamado "Dockerfile" no diretório do seu projeto. Este arquivo definirá como a imagem Docker será construída.

<span class="docker-blue">Defina a Base da Imagem:</span>
No Dockerfile, defina a imagem base do Node.js. Por exemplo:

* Dockerfile
* Copy code
* FROM node:14
* Copie Seu Aplicativo:
* Use o comando COPY para copiar os arquivos do seu aplicativo para o diretório de trabalho dentro do contêiner Docker:

<span class="docker-blue">Dockerfile</span>
* Copy code
* COPY . /app
* Instale Dependências:
* Execute o comando npm install para
* instalar as dependências do seu
* aplicativo no contêiner:

<span class="docker-blue">Dockerfile</span>
* Copy code
* RUN npm install
* Exponha a Porta:
* Especifique a porta em que o seu * aplicativo Node.js escuta:

<span class="docker-blue">Dockerfile</span>
* Copy code
* EXPOSE 3000
* Inicie o Aplicativo:
* Defina o comando para iniciar o aplicativo quando o contêiner for iniciado:

<span class="docker-blue">Dockerfile</span>
* Copy code
* CMD ["npm", "start"]
* Construa a Imagem:
* No terminal, navegue até o diretório do seu projeto e execute o comando para construir a imagem Docker:

<span class="docker-blue">Copy code</span>
* docker build -t nome-da-sua-imagem .
* Execute o Contêiner:
* Agora que a imagem foi construída, você pode criar e executar um contêiner a partir dela:

<span class="docker-blue">arduino</span>
* Copy code
* docker run -p 3000:3000 nome-da-sua-imagem
* Acesse o Aplicativo:
Seu aplicativo Node.js estará disponível em http://localhost:3000 no seu navegador.



