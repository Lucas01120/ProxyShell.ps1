# ProxyShell.ps1
EXCHANGE PROXYSHELL CHECKER WITH POWERSHELL

# Utilisation
L'URL doit être sous la forme https:// obligatoirement.
Le script fait une requetes sur le webmail avec comme URL : /autodiscover/autodiscover.json?@abc.com/owa/?&Email=autodiscover/autodiscover.json%3F@abc.com

si le serveur répond avec un "302 Found" le serveur est potentiellement vulnérable.

#premiere entrainement PowerShell.
