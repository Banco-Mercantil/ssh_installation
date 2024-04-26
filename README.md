# Instalação e configuração do SSH em uma máquina local:

O real objetivo deste trabalho é demonstrar, passo a passo, como configurar o seu ambiente para utilizar o SSH em uma conexão remota.

O SSH, sigla para Secure Shell, é um protocolo criptográfico para acesso remoto via rede. Este permite o usuário conectar-se a um computador distante utilizando uma transmissão segura criptografada, a qual impede que seu acesso ou seus comandos, enviados e recebidos pela conexão a este computador, sejam interceptados por outro usuário.

Para se ter um acesso SSH, o dispositivo ao qual você deseja se conectar necessita estar com este protocolo habilitado, ou seja, ele necessita estar configurado para receber a conexão SSH.

Feito isso, você irá precisar de um cliente SSH, ou seja, um terminal capaz de fazer esse acesso. Será necessário também ter em mãos o IP do dispositivo que você deseja se conectar, um usuário e uma senha habilitado via SSH. Em algumas empresas, este usuário costuma ser o mesmo usuário e senha da rede, ou seja, o usuário e a senha que você utiliza para logar em sua máquina. Uma vez que esta conexão é estabelecida, você será capaz de enviar e receber comandos através da sua máquina.

## 🔨 Ferramentas Necessárias:

Para iniciar este projeto sera necessária a instalação da IDE Visual Studio Code e das seguintes extensões, respectivamente:

- [Visual Studio Code](https://code.visualstudio.com/download)
- Remote - SSH
- Remote - SSH: Editing Configuration Files
- Remote Explorer

## Acessos Necessários:

Você irá necessitar de um usuário e uma senha habilitados via SSH. Esta solicitação se dá via e-mail a empresa para que sejam criados os seguintes acessos:

- SSH
- Devops 
- Airflow

## 🚀 Inicializando o projeto DBT

Para iniciar o processo de instalação e configuração do nosso ambiente, é necessário acessar o seguinte site da AWS com seu usuário e senha da rede.

site: <https://d-946713d8eb.awsapps.com/start/#/?tab=accounts>
usuario: B045523@mercantil.com.br
senha: XXXXXX

Você será redirecionado para o portal de acesso da AWS. Na guia **Accounts**, caso seu acesso já tenha sido liberado, constará uma conta com o nome **Realtime Analytics - DEV**, em seguida, clique nela.  

<img width="324" alt="image" src="https://github.com/Banco-Mercantil/ssh_installation/assets/88452990/6e27c401-fdd0-4648-b28d-60015fff6d4d">












