# 🔧 Troubleshooting - GitHub Pages

## ✅ Arquivos Enviados com Sucesso!

Seu repositório está em: `https://github.com/mariacarolk/landing`

## 🌐 URL do Seu Site

Seu site deve estar disponível em:
```
https://mariacarolk.github.io/landing/
```

## ⏱️ Tempo de Processamento

O GitHub Pages pode levar **2-10 minutos** para processar após:
- Primeiro deploy
- Mudanças no código
- Mudanças nas configurações

## 🔍 Como Verificar se Está Funcionando

### 1. Verificar Status do Build

1. Vá em: `https://github.com/mariacarolk/landing/actions`
2. Veja se há algum erro no build

### 2. Verificar Configuração

1. Vá em: `https://github.com/mariacarolk/landing/settings/pages`
2. Confirme:
   - ✅ Source: `Deploy from a branch`
   - ✅ Branch: `main`
   - ✅ Folder: `/ (root)`

### 3. Testar URL

Acesse: `https://mariacarolk.github.io/landing/`

Se aparecer erro 404:
- Aguarde mais 5-10 minutos
- Verifique se o repositório é **público**
- Verifique se o `index.html` está na raiz

## 🐛 Problemas Comuns

### Erro 404 - Página não encontrada

**Solução:**
1. Verifique se o arquivo `index.html` está na raiz do repositório
2. Aguarde 10-15 minutos após o primeiro deploy
3. Limpe o cache do navegador (Ctrl+F5)
4. Verifique se o repositório é público

### Site mostra código HTML

**Solução:**
- Isso não deve acontecer, mas se acontecer:
- Verifique o Content-Type no servidor
- Use um servidor local para testar primeiro

### Imagens não aparecem

**Solução:**
1. Verifique os caminhos das imagens
2. Use caminhos relativos: `static/img/nome.jpg`
3. Não use caminhos absolutos do Windows

### Links não funcionam

**Solução:**
1. Use caminhos relativos: `Manicure/index.html`
2. Não use `file://` ou caminhos absolutos
3. Teste localmente primeiro

## 🔄 Forçar Atualização

Se o site não atualizar:

```powershell
# Fazer uma mudança pequena
git add .
git commit -m "Forçar atualização"
git push
```

Depois aguarde 2-5 minutos.

## 📞 Verificar Logs

1. Vá em: `https://github.com/mariacarolk/landing/actions`
2. Clique no último workflow
3. Veja se há erros

## ✅ Checklist Final

- [ ] Repositório é público
- [ ] GitHub Pages está ativado
- [ ] Branch `main` está selecionada
- [ ] Folder `/ (root)` está selecionado
- [ ] Arquivo `index.html` está na raiz
- [ ] Aguardou pelo menos 5 minutos
- [ ] Testou em modo anônimo/incógnito

## 🎯 Próximos Passos

1. Aguarde 5-10 minutos
2. Acesse: `https://mariacarolk.github.io/landing/`
3. Se não funcionar, verifique os logs em Actions

---

**Seu site deve estar funcionando em breve!** 🚀

