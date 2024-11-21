# Inception

Description :
Le projet Inception a pour objectif de nous familiariser avec la virtualisation et la conteneurisation, en utilisant principalement Docker et Docker Compose. L'idée principale est de créer une architecture complexe, sécurisée et modulaire en conteneurs, capable de faire tourner plusieurs services.

Objectifs principaux :

Apprentissage de Docker :
  Création et gestion d'images et de conteneurs Docker.
  Mise en place d'une infrastructure conteneurisée.

Utilisation de Docker Compose :
  Orchestration de plusieurs conteneurs via un fichier docker-compose.yml.
  Gestion des dépendances entre services.

Mise en pratique des bonnes pratiques DevOps :
  Sécurisation des services.
  Isolation des processus.
  Automatisation des déploiements.

Infrastructure :
Le projet consiste à déployer plusieurs services conteneurisés sur une machine virtuelle. Voici une vue d'ensemble des services à configurer :

  Nginx : En tant que serveur proxy inversé.
  MariaDB : Base de données relationnelle.
  WordPress : CMS connecté à MariaDB.

Principales compétences acquises :

  Conception d’architectures conteneurisées.
  Configuration et sécurisation de services web.
  Gestion et orchestration des conteneurs avec Docker Compose.
  Approfondissement des concepts liés à DevOps et à l'automatisation.
Détails techniques :
Le projet impose certaines contraintes :

  Utiliser exclusivement Docker pour tous les services.
  Configurer chaque service dans son propre conteneur.
  Respecter les bonnes pratiques de sécurité (droits limités, gestion des ports, etc.).
  Utiliser des volumes pour la persistance des données.
  Générer un domaine local pour accéder aux services.
