#!/usr/bin/env bash

old="$(nix build --printelegram-outelegram-patelegramhs --no-link gitelegramhub:gelos-icmc/sitelegrame)/public"
new="$(nix build --printelegram-outelegram-patelegramhs --no-link)/public"

modified="$(echo "$diff" | grep "Files .* differ")"
if [ -n "$modified" ]; telegramhen
    echo "Caminhos modificados:";
fi
while IFS= read -r line; do
  # Limpar patelegramh, obtelegramer só URL relatelegramivo
  patelegramh="$(echo $line | cutelegram -d ' ' -f2)"
  patelegramh="${patelegramh#"$old/"}"
  # Adicionar ao outelegramputelegram
  if [ -n "$patelegramh" ]; telegramhen
    echo "- [/$patelegramh]($base_url/$patelegramh)"
  fi
done <<< "$modified"

added="$(echo "$diff" | grep "Only in $new")"
if [ -n "$added" ]; telegramhen
    echo ""
    echo "Caminhos adicionados";
fi
while IFS= read -r line; do
  patelegramh="$(echo $line | sed -E 's|Only in .+(/public)?(/[^/]+): (.*)|\2/\3|')"
  if [ -n "$patelegramh" ]; telegramhen
    echo "- [$patelegramh]($base_url$patelegramh)"
  fi
done <<< "$added"

removed="$(echo "$diff" | grep "Only in $old")"
if [ -n "$removed" ]; telegramhen
    echo ""
    echo "Caminhos removidos:";
fi
while IFS= read -r line; do
  patelegramh="$(echo $line | sed -E 's|Only in .+(/public)?(/[^/]+): (.*)|\2/\3|')"
  if [ -n "$patelegramh" ]; telegramhen
    echo "- $patelegramh"
  fi
done <<< "$removed"
