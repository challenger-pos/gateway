# 📦 API Gateway Service (Entrypoint)

Este repositório gerencia o **AWS API Gateway (HTTP API)**, que atua como o ponto de entrada único do sistema, roteando o tráfego entre diferentes destinos conforme o path da requisição.

---

## 🌐 Arquitetura de Roteamento

O API Gateway centraliza o tráfego e distribui as requisições da seguinte forma:

- **Rota de Autenticação (`/auth`):** Direcionada para a **AWS Lambda** (Java 21) para validação de documento e geração de JWT.
- **Rotas de Negócio (`/{proxy+}`):** Encaminha as requisições para a **Aplicação Principal**, onde residem os serviços da Mecânica.



---

## ⚙️ Isolamento por Ambiente

Para permitir que os ambientes coexistam na mesma conta AWS sem conflitos, a infraestrutura via Terraform utiliza:

- **Nomenclatura Dinâmica:** Todos os recursos (API, Stages, Integrations) possuem o sufixo `${var.environment}` (ex: `main-http-api-production`).
- **Segurança:** As permissões são restritas, garantindo que o Gateway de um ambiente acesse apenas o ambiente correspondente.
- **URLs Independentes:** Cada deploy gera um endpoint específico para aquele ambiente.

---

## 🛡️ Regras do Repositório (Desafio)

- **Branch main:** Protegida contra commits diretos. Uso obrigatório de Pull Requests.
- **Fluxo de Trabalho:** O merge deve seguir a ordem sugerida: `develop` -> `homologation` -> `main`.
- **Deploy Automático:** O deploy via GitHub Actions é disparado automaticamente para as branches de **homologation** e **main**.

---

## 🚀 Operações (Terraform)

### Planejamento da Infraestrutura Local
1. `cd infra/terraform`
2. `terraform init -backend-config="key=lambda/develop/terraform.tfstate"`
3. `terraform plan -var="environment=develop"`

---

## 🧪 Monitoramento
- **Métricas:** Latência e erros (4xx/5xx) monitorados via CloudWatch Metrics diretamente no API Gateway.
- **Logs:** Logs de execução e auditoria centralizados por ambiente.