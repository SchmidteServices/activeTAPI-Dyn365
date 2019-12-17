
# if not specified in commandline, 
# assume script runs with with user attention and allows input
# Use docFx to host (run) the built web-site under http://localhost:8080
param ( [bool]$startWebSite=$true)

# Expected directory structure
#	<devBase>\<gitBase>\IdentityManagement\help ... scriptRoot
#	<devBase>\tools								... toolsBase

# Script Directory is used as the base directory for relative references
# Example: c:\VStudio\gitLab\IdentityManagement\help\
$projectDir=$PSScriptRoot

# resolve full path to tools directory
# Example: c:\VStudio\tools\
$toolsBase=[System.IO.Path]::GetFullPath( $projectDir + '..\..\..\..\..\..\tools\')



# Define and check docfx location and availability
$docfx	= "$toolsBase\docfx\docfx.exe"
if( !(Test-Path -Path $docfx) ) {
	Write-Output "Upps, docFx does not exist!"
	Write-Output "Download doxfx ZIP from here: https://github.com/dotnet/docfx/releases"
	Write-Output "Copy DocFX to $docfx"
	Exit-PSSession
}

# Here we go, docfx is there 
# https://dotnet.github.io/docfx/tutorial/docfx.exe_user_manual.html
# suggest to use docfx v2.40 or higher to support latest markdig 0.15.4 engine
& $docfx --version


# Directory where the help web-site goes to
# $projectDir +
$outDir=[System.IO.Path]::GetFullPath(  $env:TEMP + '\wikiBin')
$workDir=[System.IO.Path]::GetFullPath(  $env:TEMP + '\wikiBin.obj')
$srcDir="$projectDir\docs"

# This command pushes the current location onto the default location stack 
# and change to $srcDir
Push-Location -Path $srcDir
# Write-Output $outDir
# Write-Output  $srcDir


# create output dir if it does not exist
# then build help site
if( !(Test-Path -Path $outDir) ) { New-Item -Path $outDir -ItemType Directory }

& $docfx build -o $outDir --intermediateFolder $workDir --loglevel INFO

Write-Output "------------------------------------------------------"
Write-Output "Web-Site has been build and can be found here:"
Write-Output $outDir


# ----------------------------------------------------------------------------------
# Generate PDF notes:
# https://dotnet.github.io/docfx/tutorial/walkthrough/walkthrough_generate_pdf.html
# requires https://wkhtmltopdf.org/downloads.html
# Prerequisite: We leverage wkhtmltopdf to generate PDF
# Download wkhtmltopdf and save the executable folder path to %PATH%.
# Or just install wkhtmltopdf using chocolatey: choco install wkhtmltopdf

# $pdfDir=[System.IO.Path]::GetFullPath( $projectDir + '\pdf')
# $env:Path += ";$toolsBase\wkhtmltox\bin"

# & $docfx pdf 	-o "$pdfDir"	--loglevel INFO
# # ----------------------------------------------------------------------------------

# if( $startWebSite) {
# 	Write-Output "Launch docfx and serve help on http://localhost:8080"
# 	& $docfx serve "$outDir"
# }

# go back to initial location
Pop-Location
