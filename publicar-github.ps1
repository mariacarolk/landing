# Script para publicar no GitHub Pages
# Execute este script no PowerShell

Write-Host "🚀 Publicando no GitHub Pages..." -ForegroundColor Cyan
Write-Host ""

# Verificar se Git está instalado
try {
    $gitVersion = git --version
    Write-Host "✅ Git encontrado: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Git não encontrado!" -ForegroundColor Red
    Write-Host "Baixe em: https://git-scm.com/download/win" -ForegroundColor Yellow
    exit
}

Write-Host ""
Write-Host "📋 Passos para publicar:" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. Crie um repositório no GitHub (https://github.com/new)" -ForegroundColor White
Write-Host "   - Nome: landing-pages-portfolio (ou outro)" -ForegroundColor Gray
Write-Host "   - Público (necessário para GitHub Pages gratuito)" -ForegroundColor Gray
Write-Host ""
Write-Host "2. Execute os comandos abaixo:" -ForegroundColor White
Write-Host ""
Write-Host "   git init" -ForegroundColor Cyan
Write-Host "   git add ." -ForegroundColor Cyan
Write-Host "   git commit -m 'Initial commit: Portfólio de Landing Pages'" -ForegroundColor Cyan
Write-Host "   git branch -M main" -ForegroundColor Cyan
Write-Host "   git remote add origin https://github.com/SEU-USUARIO/nome-do-repositorio.git" -ForegroundColor Cyan
Write-Host "   git push -u origin main" -ForegroundColor Cyan
Write-Host ""
Write-Host "3. No GitHub:" -ForegroundColor White
Write-Host "   - Vá em Settings > Pages" -ForegroundColor Gray
Write-Host "   - Source: main branch, / (root)" -ForegroundColor Gray
Write-Host "   - Salve" -ForegroundColor Gray
Write-Host ""
Write-Host "4. Aguarde alguns minutos e acesse:" -ForegroundColor White
Write-Host "   https://SEU-USUARIO.github.io/nome-do-repositorio/" -ForegroundColor Green
Write-Host ""
Write-Host "📖 Para mais detalhes, consulte: GUIA_GITHUB_PAGES.md" -ForegroundColor Yellow
Write-Host ""

# Perguntar se quer executar os comandos agora
$resposta = Read-Host "Deseja executar os comandos Git agora? (S/N)"

if ($resposta -eq "S" -or $resposta -eq "s") {
    Write-Host ""
    Write-Host "⚠️  IMPORTANTE: Você precisa criar o repositório no GitHub primeiro!" -ForegroundColor Yellow
    Write-Host ""
    $repoUrl = Read-Host "Cole a URL do seu repositório (ex: https://github.com/usuario/repositorio.git)"
    
    if ($repoUrl) {
        Write-Host ""
        Write-Host "Executando comandos..." -ForegroundColor Cyan
        
        git init
        git add .
        git commit -m "Initial commit: Portfólio de Landing Pages"
        git branch -M main
        git remote add origin $repoUrl
        git push -u origin main
        
        Write-Host ""
        Write-Host "✅ Arquivos enviados!" -ForegroundColor Green
        Write-Host "Agora vá em Settings > Pages no GitHub e ative o GitHub Pages." -ForegroundColor Yellow
    } else {
        Write-Host "❌ URL não fornecida. Execute os comandos manualmente." -ForegroundColor Red
    }
} else {
    Write-Host "Execute os comandos manualmente quando estiver pronto." -ForegroundColor Yellow
}

