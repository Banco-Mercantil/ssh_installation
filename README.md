# Instalação e configuração do SSH:

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

## 🚀 Instalação do SSH e configuração da AWS S3 LS:

Para iniciar o processo de instalação e configuração do nosso ambiente, é necessário acessar o seguinte site da AWS com seu usuário e senha da rede.

site: <https://d-946713d8eb.awsapps.com/start/#/?tab=accounts>

usuario: B045523@mercantil.com.br
senha: XXXXXX

Você será redirecionado para o portal de acesso da AWS. Na guia **Accounts**, caso seu acesso já tenha sido liberado, constará uma conta com o nome **Realtime Analytics - DEV**, em seguida, clique nela. O acesso concedido deverá ser o de administrador (adm), como na imagem a seguir:

<img width="322" alt="image" src="https://github.com/Banco-Mercantil/ssh_installation/assets/88452990/8e7b7978-469e-4a3d-b67a-f22534d83aa5">

A etapa seguinte envolve a cofiguração a IDE Visual Studio Code, previamente instalada na máquina. Abra a IDE, no canto inferior esquerdo, há um ícone com duas setas de *maior e menor que* (><), selecione este para abrir uma janela remota. 

Um pop-up será aberto e nele basta selecionar a opção **SSH** para abrir uma janela remota

<img width="208" alt="image" src="https://github.com/Banco-Mercantil/ssh_installation/assets/88452990/77b693e8-588e-45ed-be0c-f8809e7a8eb7">

Neste momento, o sistema irá instalar uma extensão em sua máquina. Ao final do processo, um novo pop-up aparecer com a opção de **+ Adicionar novo Host SSH**, selecione esta opção. O sistema irá solicitar o usuário e a senha  habilitado via SSH, o qual foi solicitado anteriormente. Com o usuário em mãos, coloque-o no seguinte trecho de código:

``
ssh novo_usuario@10.221.0.36
``

Após isso, aperte o **Enter** do seu teclado e em seguida clique no caminho ``C:\Users\B045523\.ssh\config``. Neste momento, o host foi adicionado.
Na sequência, retorne para a janela remota, clicando nos sinais de **menor maior que** (><), no canto inferior a esquerda da tela. O pop-up aberto agora terá a opção **Conectar-se a um Host...**. Selecione o IP do servidor que aparecer como primeira opção: ``10.221.0.36``. O pop-up agora solicitará que você indique a plataforma do host remoto, clique em **Linux** e em **Confirmar**.

O sistema agora irá lhe pedir a senha do **SSH** que você gerou em sua máquina. Neste momento a conexão irá ser feita entre a sua máquina local e o servidor da nuvem **AWS**. Ainda no *Visual Studio Code*, acesse o **Explorer**, clicando no ícone de pastas no canto superior esquerdo. Clique no botão **Abrir pasta**. Um pop-up, na barra de pesquisa superior, será aberto indicando o caminho da pasta a ser aberta: ``/home/pfernandes/``, clique no **Enter** do teclado.

<img width="368" alt="image" src="https://github.com/Banco-Mercantil/ssh_installation/assets/88452990/dec7dc2d-50c8-49c5-a879-77ad4f77451f">

 Aqui, o sistema irá solicitar a senha do **SSH** novamente. Feito isso o *Visual Studio code* deverá se parecer com o da imagem abaixo:

<img width="458" alt="image" src="https://github.com/Banco-Mercantil/ssh_installation/assets/88452990/55aac0ab-3324-4093-89f9-c58fa1c7b30a">

Feito as configurações, vamos abrir o terminal pelo atalho ``Ctrl + '``. Digite e execute as seguintes linhas de comando uma a uma, respectivamente:
``
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install --update
``
Ao executar a ultima linha de comando, o sistema irá solicitar a senha do **SSH**, esta que foi enviada via e-mail, após digita-lá, dê o **Enter**.

Agora execute o comando ``aws configure sso ``, em seguida, dê o **Enter**. O sistema irá solicitar um nome para a seção, digite o seu nome seguido por *_airflow*, ``nome_airflow``.

Informe a seguinte **URL** ``https://d-946713d8eb.awsapps.com/start/`` e a região ``sa-east-1``, respectivamente. O sistema, agora, irá exibir a seguinte solicitação:
``SSO registration scopes [sso:account:access]``, aqui você poderá simplesmente dar o **Enter** e seguir.

Um pop-up será exibido, e nele, clique o botão **Abrir**.

<img width="292" alt="image" src="https://github.com/Banco-Mercantil/ssh_installation/assets/88452990/bad2ea14-77a8-422d-8a16-b6402388a3b6">

Nesta etapa, o sistema irá abrir um navegador da **AWS**, cliquei no botão **Confirm and continue** para seguir. Na sequência clique em **Allow access**, ao final você deverá receber esta mensagem:

<img width="329" alt="image" src="https://github.com/Banco-Mercantil/ssh_installation/assets/88452990/e14052ca-0c29-4cbe-abb6-8fc0f32b4f79">

Voltando ao **Visual Studio Code**, o terminal irá exibir a seguinte mensagem: ``CLI default client Region [None]:``, você, então, irá digitar a linha de código: ``us-east-1``. A próxima mensagem: ``CLI default output format [None]:``, você digitará: ``json``.

O sistema irá solicitar algo relacionado ao ``CLI profile name ...``, siga apertando o **Enter**. O seu terminal deverá se parecer com a imagem a seguir:

<img width="208" alt="image" src="https://github.com/Banco-Mercantil/ssh_installation/assets/88452990/54454803-fb22-4e1a-b94c-c6d42a584eb0">

Até aqui foram liberados os acessos ao **SSH** e as configurações da **AWS S3 LS**, o que torna possível realizar alterações na nuvem através de códigos. Iremos, então, realizar algumas configurações do *DOCKER*. 

## 🚀 Instalação do Docker:

A configuração do **DOCKER** se faz necessária visto que você precisará compilar imagens ao realizar a *build* das imagens dos projetos. Para isso, nbo terminal, execute a seguinte instrução:
``
sudo usermod -aG docker ${USER}
su - ${USER}
``

O sistema irá solicitar a senha do usuário **SSH**, a qual lhe foi passada via e-mail, digite-a e dê o **Enter**. Feito isso, o **Docker** foi configurado de acordo.

## 🚀 Instalação do Git:

Partiremos para a configuração do **Git** neste momento. Digite no terminal a linha de comando:
``
git config --global http.sslVerify "false"
git config --global credential.helper '!aws codecommit credential-helper $@'
``
Agora iremos configurar o usuário de rede com a seguinte linha de comando:
``
git config --global user.name "nome.ultimonome"
git config --global user.email "nome.ultimonome@mercantil.com.br"
``

## 🚀 Clonagem do repositório do Airflow:

Nesta fase, iremos fazer o clone do repositório do Airflow. Para isso, baixe os arquivos de configuração em sua máquina local.
- bash_export.sh
- build_push_dev.sh

ainda no terminal, digite:
``
aws sso login
git clone https://git-codecommit.us-east-2.amazonaws.com/v1/repos/airflow-repository-is8vtfi0
``








