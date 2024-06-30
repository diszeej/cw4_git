#!/bin/bash

# Funkcja wyświetlająca pomoc dla użytkownika
function display_help() {
    echo "Usage: $0 [option]"
    echo "--date, -d      Wyświetla dzisiejszą datę"
    echo "--logs, -l      Tworzy 100 plików log"
    echo "--logs [num]    Tworzy [num] plików log"
    echo "--help, -h      Wyświetla pomoc"
}

# Funkcja tworząca pliki log
function create_logs() {
    num_logs=${1:-100}  # Liczba plików log, domyślnie 100
    for ((i=1; i<=num_logs; i++)); do
        echo "Plik numer $i utworzony przez skrypt.sh dnia $(date)" > log_$i.txt
    done
}

# Główna część skryptu
case "$1" in
    --date|-d)
        # Wyświetla dzisiejszą datę
        echo "Dzisiejsza data to: $(date)"
        ;;
    --logs|-l)
        # Tworzy pliki log
        create_logs $2
        ;;
    --help|-h)
        # Wyświetla pomoc
        display_help
        ;;
    *)
        # Wyświetla błąd, jeśli podana opcja jest niepoprawna
        echo "Niepoprawna opcja. Użyj --help, aby zobaczyć dostępne opcje."
        ;;
esac

