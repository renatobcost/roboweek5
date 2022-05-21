## 🤖 RoboWeek 5 🤖

Projeto de estudo sobre [Robot Framework](https://robotframework.org). O material disponível neste repositório foi desenvolvido durante a [RoboWeek 5](https://www.youtube.com/watch?v=gEjdm0TU7S4&list=PLn2i8I7W73ioehByd3VUY9wwRnd05C21d&index=1), evento promovido pela [QA ninja](https://app.weareqacademy.com).

O objetivo deste projeto é compreender o funcionamento do Robot Framework aplicado a um caso real. Para tanto, foi utilizado o [Parodifood](http://parodifood.qaninja.academy) como objeto de testes. 

Os testes criados analisaram a busca de um restaurante, a adição de itens ao carrinho, a validação do valor da compra e do pagamento.


### 💡 Conceitos abordados
-----------------------
- Keywords;
- Padrão App Actions;
- Variáveis e super variáveis;
- Registro de logs;


### ⚠️ Instalação
-----------------------
- Instale o [Node.js](https://nodejs.org/en/download/);
- Instale o [Python](https://www.python.org);
- Abra o diretório do projeto e execute os comandos:
    - `pip install robotframework`
	- `pip install robotframework-browser`
	- `rfbrowser init` (em caso de erro: `python -m Browser.entry init`)

   
### 🖥️ Execução
-----------------------
- Abra o diretório do projeto e execute o comando:
    - `robot -d ./logs test\nome_do_arquivo.robot` (OBS: lembrar de substituir o nome do arquivo para execução) 
	
	
### ⚙️ Arquitetura do projeto
-----------------------

```
roboweek5/
  ├─  logs/
  │        ├── log.html
  │        ├── output.xml      
  │        └── report.html
  │
  ├── resources/
  │        ├── actions/
  │        │       ├── cart.robot
  │        │       ├── order.robot
  │        │       └── search.robot
  │        ├── fixtures/
  │        │       ├── cart.robot
  │        │       └── order.robot
  │        └── base.robot
  │
  ├── tests/
  │        ├── busca.robot
  │        ├── carrinho.robot
  │        └── pedido.robot
  │
  └── README.md
```


## 🔍 Camadas do projeto
---------------------------------------

 - **logs:** arquivos de logs dos testes realizados (html, xml);
 - **resources:** "recursos utilizados";
 - **actions:** arquivos que contém as páginas com funcionaldiades dos testes, como por exemplo: ações da página carrinho de compras;
 - **fixtures:** arquivos para massa de dados estática para os testes (json);
 - **base.robot** arquivo base do projeto;
 - **tests:** arquivos de testes separados em serviços (buscar, carrinho de compras, pedidos);
