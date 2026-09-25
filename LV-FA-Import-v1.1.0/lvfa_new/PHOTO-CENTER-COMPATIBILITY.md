# Kompatibilita s LV-FA Photo Center

Import v1.1 je navržen tak, aby se nemuselo zasahovat do kódu Photo Centeru.

## Přejmenování
Použitá logika odpovídá Photo Centeru v10.9.2:
- fotograf
- Instagram
- zdroj
- aerolinka / letiště
- typ letadla
- přípona původního obrázku
- při kolizi `_2`, `_3`, ...
- Stories → `_Stories`
- Events → `_Events`
- Soutěž → `_Soutez`

## Archivace
Schválený soubor se z R2 načte Importem a uloží do Google Drive.

## Oprávnění
Service account Importu má mít přístup pouze k hlavní složce LV-FA Photos a jejím podsložkám.

## Photo Center
Žádný endpoint ani soubor Photo Centeru není součástí tohoto balíčku a není potřeba jej upravovat.
