# Etap 1: Budowanie
# Używamy obrazu golang-alpine jako systemu operacyjnego
FROM golang:1.22.3-alpine as build

# Ustawiamy /app jako bieżący katalog roboczy w kontenerze
WORKDIR /app

# Kopiujemy pliki go.mod do bieżącego katalogu roboczego w kontenerze
COPY go.mod ./

# Pobieramy wszystkie zależności.
RUN go mod download

# Kopiujemy źródło z bieżącego katalogu do katalogu roboczego w kontenerze
COPY . .

# Budujemy aplikację
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

# Etap 2: Uruchomienie
# Używamy obrazu alpine w wersji 3.13
FROM alpine:3.13 as alpine

# Instalujemy curl i tworzymy katalog aplikacji
RUN apk --no-cache add curl && \
    rm -rf /var/cache/apk/* && \
    mkdir /app && cp /usr/bin/curl /app/curl

# Etap 3: Końcowy etap
# Używamy obrazu scratch
FROM scratch

# Kopiujemy niezbędne pliki z poprzednich etapów
COPY --from=build /app/main /app/main
COPY --from=alpine /app/curl /app/curl

# Udostępniamy port 3000
EXPOSE 3000

# Deklarujemy autora
LABEL maintainer="Marcin Wójcik"

# Healthcheck
HEALTHCHECK CMD ["/app/curl", "--fail", "http://localhost:3000", "||", "exit", "1"]

# Polecenie do uruchomienia wykonywalnego pliku
CMD ["/app/main"]