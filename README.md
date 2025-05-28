#  Application Next.js (TD docker et CI Test auto en utilisant Git Action ) M2 SDIA n: 4700

Ce projet est une application web développée avec [Next.js](https://nextjs.org/).

---

##  Lancement rapide

### 1. Cloner le projet

```bash
$ git clone https://github.com/LouisSenga/td_docker_file
$ cd td_docker_file
```

### 2. Installer les dépendances

npm install
```bash
$ git clone https://github.com/LouisSenga/td_docker_file
$ cd td_docker_file
```

### 3. Construire l'image docker


```bash
$ docker build -t td_docker_file .
```

### 4. Lancer le conteneur


```bash
$ docker run -p 3000:3000 td_docker_file
```

 Ouvre [http://localhost:3000] dans ton navigateur pour voir le résultat.
nextjs.org
