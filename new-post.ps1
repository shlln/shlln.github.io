$title = Read-Host "Post title"

$slug = $title.ToLower() -replace '[^a-z0-9]+', '-'
$slug = $slug.Trim('-')

$date = Get-Date -Format "yyyy-MM-dd"
$datetime = Get-Date -Format "yyyy-MM-dd HH:mm:ss zzz"

$filename = "_posts/${date}-${slug}.md"

@"
---
layout: post
title: "$title"
date: $datetime
---

"@ | Set-Content $filename -Encoding UTF8

Write-Host "Created: $filename"