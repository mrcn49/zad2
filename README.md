# Zadanie 2
## Link do pliku gha: [gha_example.yml](https://github.com/mrcn49/zad2/blob/main/.github/workflows/gha_example.yml)

## Potwierdzenie działania:
![image](https://github.com/mrcn49/zad2/assets/106474992/f45cddd0-50e8-4d86-a63f-d6d28e659f4c)

### Potwierdzenie dodania do Github Container Registry
![image](https://github.com/mrcn49/zad2/assets/106474992/3baf9e1f-a03c-4f01-ba9e-d2dd08797e74)

## Użyte komendy:
### Weryfikacja zalogowania:
![image](https://github.com/mrcn49/zad2/assets/106474992/6332e376-b372-4aa5-b330-c6c3f4e724e3)

### Stworzenie pustego repozytorium git:
![image](https://github.com/mrcn49/zad2/assets/106474992/5d6508be-6ba5-4169-ba87-13a723c3220d)

### Stworzenie repozytorium na github:
![image](https://github.com/mrcn49/zad2/assets/106474992/79462883-57d7-4221-b113-4301e4efbcd7)

### Potwierdzenie stworzenia repozytorium github:
![image](https://github.com/mrcn49/zad2/assets/106474992/b646e025-05d5-406b-ac1e-ad7d10b2fd6f)

### Dodanie wszystkich zmienionych i nowych plików do indeksu na aktualnym branchu (main).
![image](https://github.com/mrcn49/zad2/assets/106474992/0b4f026f-87f0-4d95-a176-0f238899a696)

### Potwierdzenie dodania:
![image](https://github.com/mrcn49/zad2/assets/106474992/d67dc6c2-82e8-4a71-aa21-dca886126063)

### Commit zmian
![image](https://github.com/mrcn49/zad2/assets/106474992/c28c54bb-1dd5-4b4c-97a2-05ba674f7dbb)

### Push zmian na repozytorium na github:
![image](https://github.com/mrcn49/zad2/assets/106474992/234325bd-045d-4930-9b7c-cc0e42d2e7c6)

### Logowanie na dockera:
![image](https://github.com/mrcn49/zad2/assets/106474992/4a60ae67-4c35-48a2-9ed1-1192bc584062)

### Dodanie zmiennej i secretu
![image](https://github.com/mrcn49/zad2/assets/106474992/b0dc5095-a9e1-4c84-8b08-0f8e4a9f9eda)

### Lista workflowów
![image](https://github.com/mrcn49/zad2/assets/106474992/d4df27e3-302a-44f8-9134-e984591d9963)

### Uruchomienie workflow:
![image](https://github.com/mrcn49/zad2/assets/106474992/29440cb2-146a-41fb-aa98-e831caf44992)

### Watch uruchomionego workflowa
![image](https://github.com/mrcn49/zad2/assets/106474992/7e46a61e-9be7-4b25-91c3-8bf6026f1fbe)

## Opis:
### Workflow wykonuje następujące polecenia:
- Pobiera kod źródłowy z repozytorium **(actions/checkout@v4)**

  
![image](https://github.com/mrcn49/zad2/assets/106474992/e4b6b8d5-8f88-4e33-a6b2-e5a121382283)
- Definiuje metadane Docker za pomocą **docker/metadata-action@v5.**

![image](https://github.com/mrcn49/zad2/assets/106474992/5d1118c4-0d5e-4092-acf5-46cbf7702e54)

- Ustawia QEMU za pomocą **docker/setup-qemu-action@v3.**


![image](https://github.com/mrcn49/zad2/assets/106474992/1a50af13-058a-43bc-949a-d32b3d37ea38)

- Ustawia Buildx za pomocą **docker/setup-buildx-action@v3.**


![image](https://github.com/mrcn49/zad2/assets/106474992/060d3807-8894-4c1e-a8ed-8350d323c990)


- Loguje się do DockerHub za pomocą **docker/login-action@v3.**


![image](https://github.com/mrcn49/zad2/assets/106474992/20a78281-27de-4504-89f7-589873b21ea3)


- Buduje i wysyła obraz Docker do DockerHub za pomocą **docker/build-push-action@v5.**


![image](https://github.com/mrcn49/zad2/assets/106474992/d3c2b88c-c344-4598-a068-8ea17282e556)


- Skanuje obraz pod kątem podatności za pomocą **docker/scout-action@v1.**


![image](https://github.com/mrcn49/zad2/assets/106474992/bdf00af8-f380-48d9-879d-8c4510a1b604)


- Loguje się do GitHub Container Registry (GHCR) za pomocą **docker/login-action@v1.**


![image](https://github.com/mrcn49/zad2/assets/106474992/8e033374-f5bc-44e3-abc9-7bdd6ecaf54d)



- Wysyła obraz do GHCR za pomocą **docker/build-push-action@v5.**


![image](https://github.com/mrcn49/zad2/assets/106474992/2646bd6c-1be5-4da8-a43d-47cc3ff7f38b)

