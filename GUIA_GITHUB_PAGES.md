# 🌐 Guia Completo: Publicar no GitHub Pages

## 📝 Passo a Passo

### 1️⃣ Criar Conta no GitHub (se não tiver)

1. Acesse: https://github.com
2. Clique em "Sign up"
3. Preencha os dados e crie sua conta

### 2️⃣ Criar um Novo Repositório

1. No GitHub, clique no botão **"+"** no canto superior direito
2. Selecione **"New repository"**
3. Preencha:
   - **Repository name**: `landing-pages-portfolio` (ou outro nome)
   - **Description**: "Portfólio de Landing Pages"
   - **Visibility**: Escolha **Public** (necessário para GitHub Pages gratuito)
   - **NÃO marque** "Initialize this repository with a README"
4. Clique em **"Create repository"**

### 3️⃣ Instalar Git (se não tiver)

**Windows:**
1. Baixe: https://git-scm.com/download/win
2. Instale com as opções padrão
3. Abra o **Git Bash** ou **PowerShell**

### 4️⃣ Preparar o Projeto Localmente

Abra o **PowerShell** ou **Git Bash** na pasta do projeto:

```powershell
# Navegar até a pasta do projeto
cd "C:\Users\comer\Desktop\Landing Page"

# Inicializar repositório Git
git init

# Adicionar todos os arquivos
git add .

# Fazer primeiro commit
git commit -m "Initial commit: Portfólio de Landing Pages"
```

### 5️⃣ Conectar com o GitHub

No GitHub, você verá instruções. Execute no PowerShell:

```powershell
# Adicionar o repositório remoto (SUBSTITUA seu-usuario e nome-repositorio)
git remote add origin https://github.com/SEU-USUARIO/nome-do-repositorio.git

# Renomear branch para main (se necessário)
git branch -M main

# Enviar para o GitHub
git push -u origin main
```

**Nota:** Você precisará fazer login no GitHub quando executar o `git push`.

### 6️⃣ Ativar GitHub Pages

1. No GitHub, vá para seu repositório
2. Clique em **"Settings"** (Configurações)
3. No menu lateral, clique em **"Pages"**
4. Em **"Source"**, selecione:
   - **Branch**: `main` ou `master`
   - **Folder**: `/ (root)`
5. Clique em **"Save"**

### 7️⃣ Acessar seu Site

Após alguns minutos, seu site estará disponível em:

```
https://SEU-USUARIO.github.io/nome-do-repositorio/
```

**Exemplo:**
```
https://joaosilva.github.io/landing-pages-portfolio/
```

## 🔄 Atualizar o Site

Sempre que fizer alterações:

```powershell
# Adicionar mudanças
git add .

# Fazer commit
git commit -m "Descrição das mudanças"

# Enviar para GitHub
git push
```

O GitHub Pages atualiza automaticamente em 1-2 minutos!

## ⚙️ Configurações Avançadas

### Usar Domínio Personalizado

1. Em Settings > Pages, adicione seu domínio
2. Configure DNS conforme instruções do GitHub

### Branch Específica

Se quiser usar uma branch diferente:
1. Settings > Pages
2. Selecione a branch desejada
3. Salve

## 🐛 Problemas Comuns

### Site não aparece
- Aguarde 5-10 minutos após ativar
- Verifique se o repositório é **Public**
- Confirme que selecionou a branch correta

### Imagens não aparecem
- Verifique se os caminhos estão corretos: `static/img/nome.jpg`
- Use caminhos relativos, não absolutos

### Links não funcionam
- Use caminhos relativos: `../index.html` ou `Manicure/index.html`
- Não use `file://` ou caminhos absolutos do Windows

## 📚 Recursos Úteis

- [Documentação GitHub Pages](https://docs.github.com/pages)
- [Git Handbook](https://guides.github.com/introduction/git-handbook/)

## ✅ Checklist

- [ ] Conta GitHub criada
- [ ] Repositório criado (público)
- [ ] Git instalado
- [ ] Arquivos enviados para GitHub
- [ ] GitHub Pages ativado
- [ ] Site acessível via link
- [ ] Todas as páginas funcionando

---

**Pronto!** Seu portfólio estará online e acessível para qualquer pessoa! 🎉

