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

### Executando testes
- Todos
```bash
robot -d results tests
```
- API
```bash
robot -d results tests/api
```
- UI
```bash
robot tests/ui
```
### Resultados
Após execução:
```bash
results/report.html
```
