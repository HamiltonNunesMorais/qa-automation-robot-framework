 # Test Automation - Robot Framework 

Projeto de automação de testes utilizando **Robot Framework**, cobrindo:

- ✅ Testes de API (REST)
- ✅ Testes de UI (Web)
- ✅ Validação de contrato
- ✅ Dados dinâmicos (Faker)

---

## Tecnologias utilizadas

- Robot Framework
- SeleniumLibrary (UI)
- RequestsLibrary (API)
- JSONLibrary
- FakerLibrary
- WebDriver Manager

## Setup do ambiente

### Criar ambiente virtual
- Instalar automaticamente com o arquivo:
```bash
setup.bat
```
- Instalar manualmente:
```bash
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
```

### Executando testes com allure
```bash
robot --listener allure_robotframework:allure-results -d results tests
allure serve allure-results
```

- Com o report do Robot framework
```bash
robot -d results tests
```
- somente API
```bash
robot -d results tests/api
```
- somente UI
```bash
robot tests/ui
```
### Resultados
Após execução sera criado o diretorio:
```bash
results/report.html
ou
allure-results
```
