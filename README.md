# Curso BDD eXperience – Automação Web com Cucumber, Selenium e Ruby
Resumo estruturado sobre o conteúdo do curso, focado em como aplicar as práticas no dia a dia do QE.

---

## 🎯 Objetivos da Aula / Módulo
- Entender os fundamentos de BDD e sua aplicação prática.
- Aprender a estruturar projetos de automação Web utilizando Cucumber.
- Utilizar Selenium WebDriver com Ruby para testes end‑to‑end.
- Criar cenários legíveis, colaborativos e alinhados ao negócio.
- Evoluir a qualidade de histórias e identificar gaps mais cedo.

---

## 🧠 Principais Conceitos
- **BDD (Behavior-Driven Development):** abordagem que une negócio, desenvolvimento e qualidade através de exemplos executáveis.
- **Cucumber:** ferramenta que interpreta cenários Gherkin e os conecta com código Ruby.
- **Gherkin:** linguagem estruturada para descrever comportamentos; Given/When/Then.
- **Selenium WebDriver:** biblioteca para automação de browsers.
- **Ruby:** linguagem utilizada para implementar os passos de automação.

---

## 📝 Conteúdo Abordado
### 1. Fundamentos de BDD
- O valor da comunicação entre áreas.
- Escrita colaborativa de cenários.
- Exemplos concretos para esclarecer regras de negócio.

### 2. Estrutura de um Projeto Cucumber
- Pastas `features/`, `step_definitions/`, `support/`.
- Organização de cenários, hooks e helpers.
- Padronização para melhorar manutenção.

### 3. Automação Web com Selenium + Ruby
- Uso de seletores CSS, XPath e boas práticas.
- Interação com elementos: clique, texto, scroll, waits.
- Execução local e configurações de ambiente.

### 4. Escrita de Cenários Eficazes
- Cenários focados no comportamento e não na interface.
- Evitar detalhes técnicos nos steps.
- Transformar requisitos vagos em exemplos testáveis.

### 5. Exemplos apresentados no curso
- Login Web automatizado.
- Fluxos de navegação com validações.
- Mapeamento de elementos com Page Objects ou abordagem modular.

---

## 💡 Insights e Boas Práticas
- Construa cenários que contem a história do usuário, não do sistema.
- Use Given para contexto, When para ação e Then para resultado observável.
- Utilize waits explícitos inteligentemente, evitando flakiness.
- Torne steps reutilizáveis e sem detalhes de implementação.
- Mantenha o código limpo e fácil de entender para todo o time.

---

## 🔧 Aplicação prática no papel de QE
- **Análise de bugs:** identificar se o erro está no comportamento esperado ou no cenário mal definido.
- **Revisão de cenários BDD:** propor melhorias para clareza e cobertura.
- **Refinar histórias:** ajudar PO e dev a criar exemplos concretos antes do desenvolvimento.
- **Automação de regressão:** garantir que cenários críticos estejam cobertos.
- **Detecção antecipada de gaps:** validar regras antes que virem defeitos.

---

## ❓ Dúvidas para aprofundar
- Como estruturar Page Objects em Ruby de forma sustentável?
- Como decidir quando usar caminho feliz vs. cenários alternativos?
- Como manter testes estáveis em ambientes dinâmicos?

---


## 📚 Referências da Aula / Curso
- Curso: **BDD eXperience**
- Ferramentas: **Cucumber**, **Selenium WebDriver**, **Ruby**
- Documentação oficial:
  - https://cucumber.io/docs
  - https://www.selenium.dev/documentation/
  - https://www.ruby-lang.org/
  - 