# Projeto 3 - Linguagem SQL

Este repositório faz parte do meu portfólio como **DBA Júnior**, demonstrando conhecimentos em **linguagem SQL aplicada ao SQL Server**, incluindo criação de objetos, manipulação e consulta de dados, gerenciamento de transações e objetos de programação do banco de dados.

---

## 🎯 Objetivo

Demonstrar na prática os principais comandos SQL utilizados por um **DBA Júnior**, incluindo:

- **DDL** → Criação e alteração de tabelas, índices e outros objetos
- **DML** → Inserção, atualização e exclusão de dados
- **DQL** → Consultas simples e avançadas com agrupamentos e JOINs
- **DCL** → Controle de permissões de usuários
- **Objetos de programação** → Views, Stored Procedures, Funções e Triggers

---

## 🧠 Conceitos Aplicados

### ✅ DDL — Data Definition Language

- `CREATE`, `ALTER`, `DROP`

### ✅ DML — Data Manipulation Language

- `INSERT`, `UPDATE`, `DELETE`

### ✅ DQL — Data Query Language

- `SELECT`, `GROUP BY`, `HAVING`
- `JOINs` (INNER, LEFT, RIGHT, FULL)

### ✅ DCL — Data Control Language

- `GRANT`, `DENY`, `REVOKE`

### ✅ Transações, Locks e Deadlocks

- `COMMIT`, `ROLLBACK`
- Controle de concorrência (ACID)
- Blocking e Deadlocks

### ✅ Objetos de Programação

- Views
- Stored Procedures
- Funções
- Triggers

---

## 📂 Estrutura do Projeto

📁 Projeto3-LinguagemSQL
┣ 📂 scripts/
┃ ┣ 📜 01_linguagem_sql.sql
┃ ┣ 📜 02_tabelas_indices.sql
┃ ┣ 📜 03_group_by.sql
┃ ┣ 📜 04_join.sql
┃ ┣ 📜 05_select_basico.sql
┃ ┣ 📜 06_tipos_data_hora.sql
┃ ┣ 📜 07_tipos_numerico.sql
┃ ┣ 📜 08_tipos_string.sql
┃ ┣ 📜 09_atualizacao.sql
┃ ┣ 📜 10_transacao_blocking.sql
┃ ┗ 📜 11_objetos_programacao.sql
┣ 📂 imagens/
┣ 📜 README.md

---

## ▶️ Como Executar

1. Abrir o **SQL Server Management Studio (SSMS)**
2. Conectar ao SQL Server
3. Executar os scripts na **ordem numérica**
4. Validar com consultas `SELECT` e no Object Explorer

---

## 📊 Resultados Esperados

- ✅ Estrutura de tabelas criada corretamente
- ✅ Dados inseridos, atualizados e deletados com sucesso
- ✅ Consultas com filtros, agrupamentos e JOINs funcional
- ✅ Segurança aplicada via permissões
- ✅ Transações controladas com `COMMIT` e `ROLLBACK`
- ✅ Objetos de programação criados e testados

---

## 🔜 Próximos Passos

- Criar triggers de auditoria
- Otimizar consultas (Plano de Execução)
- Criação de rotinas automatizadas via procedures

---

## 📌 Observações

Projeto desenvolvido durante o **Módulo 3 – Linguagem SQL** do meu curso de formação em Banco de Dados.

---

✉️ **Autor:** [Andrey Andrade](https://github.com/andrey22andrade)
