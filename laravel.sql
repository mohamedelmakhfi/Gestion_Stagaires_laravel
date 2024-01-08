-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 08 jan. 2024 à 14:54
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `absences`
--

CREATE TABLE `absences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_absence` date NOT NULL,
  `type_absence` varchar(191) NOT NULL,
  `justification` tinyint(1) NOT NULL,
  `stagiaire_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `absences`
--

INSERT INTO `absences` (`id`, `date_absence`, `type_absence`, `justification`, `stagiaire_id`, `created_at`, `updated_at`) VALUES
(7, '2023-11-11', 'maladie', 0, 26, '2024-01-06 19:26:49', '2024-01-08 12:08:46');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_04_03_231527_create_stagiaire_table', 1),
(7, '2023_04_03_231828_create_stages_table', 1),
(8, '2023_04_03_231911_create_absences_table', 1),
(9, '2023_04_03_231926_create_taches_table', 1),
(10, '2023_04_06_145702_add_user_id_to_stagiaire_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('mohamedelmakhfi18@gmail.com', '$2y$10$xs4tqe3IH3zdhfaF.dGtOuQiNz8zWor8uCYH/7CmHq4s/zqkBYgUS', '2024-01-08 10:15:34');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stages`
--

CREATE TABLE `stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `note_stage` double(8,2) DEFAULT NULL,
  `appreciation` varchar(191) DEFAULT NULL,
  `rapport_de_stage` blob DEFAULT NULL,
  `stagiaire_id` bigint(20) UNSIGNED NOT NULL,
  `rapport_de_stage_deposer` tinyint(1) NOT NULL DEFAULT 0,
  `attestation_obtenu` tinyint(1) NOT NULL DEFAULT 0,
  `projet_deposer` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `stages`
--

INSERT INTO `stages` (`id`, `date_debut`, `date_fin`, `note_stage`, `appreciation`, `rapport_de_stage`, `stagiaire_id`, `rapport_de_stage_deposer`, `attestation_obtenu`, `projet_deposer`, `created_at`, `updated_at`) VALUES
(15, '2023-11-11', '2023-12-12', NULL, NULL, NULL, 26, 0, 0, 0, '2024-01-06 19:23:55', '2024-01-06 19:23:55'),
(16, '2023-10-10', '2023-11-11', 15.00, 'asdfghjk', 0x313730343537323737382e706466, 26, 1, 1, 1, '2024-01-06 19:25:32', '2024-01-06 19:26:18'),
(17, '2023-03-03', '2023-04-04', 16.00, 'sdfghjk', NULL, 26, 1, 1, 1, '2024-01-06 19:39:41', '2024-01-06 19:39:56'),
(18, '2023-11-11', '2023-12-12', NULL, NULL, NULL, 29, 1, 1, 1, '2024-01-08 12:07:48', '2024-01-08 12:07:48');

-- --------------------------------------------------------

--
-- Structure de la table `stagiaire`
--

CREATE TABLE `stagiaire` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cin` varchar(191) NOT NULL,
  `nom` varchar(191) NOT NULL,
  `prenom` varchar(191) NOT NULL,
  `sexe` varchar(191) NOT NULL,
  `adresse` varchar(191) NOT NULL,
  `telephone` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `etablissement` varchar(191) NOT NULL,
  `filiere` varchar(191) NOT NULL,
  `encadrant` varchar(191) NOT NULL,
  `photo` varchar(191) NOT NULL,
  `cv` blob NOT NULL,
  `niveau_etude` varchar(191) NOT NULL,
  `diplome_prepare` varchar(191) NOT NULL,
  `motivation` text NOT NULL,
  `statut` varchar(191) NOT NULL DEFAULT 'en attente',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `stagiaire`
--

INSERT INTO `stagiaire` (`id`, `cin`, `nom`, `prenom`, `sexe`, `adresse`, `telephone`, `email`, `etablissement`, `filiere`, `encadrant`, `photo`, `cv`, `niveau_etude`, `diplome_prepare`, `motivation`, `statut`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(26, 'ad321', 'mohamed', 'elmkahfii', 'H', 'asdfghjklqwertyui', '06531217789', 'mohamedelmakhfi6@gmail.com', 'ensa', 'ginf', 'med', '1704572529.jpg', 0x313730343537323532392e706466, 'Bac+4', 'info', 'asdfghjkhjhh', 'Accepter', NULL, '2024-01-06 19:22:09', '2024-01-06 19:27:48', 28),
(27, 'Dignissimos sed dese', 'ajimi', 'salah', 'H', 'Sunt soluta autem du', '+1 (233) 687-9454', 'salah@gmail.com', 'Dolores quisquam cum', 'Doloremque maxime te', 'Id dolorem nulla sed', '1704712383.jpg', 0x313730343731323338332e706466, 'Bac+5 et plus', 'Quidem et voluptate', 'Nisi voluptate magna', 'Refuser', NULL, '2024-01-08 10:13:03', '2024-01-08 10:18:15', 29),
(28, 'Similique et consequ', 'bilal12', 'bilal', 'H', 'Dolore et rerum pers', '+1 (504) 956-6729', 'bilal@gmail.com', 'Magna molestiae culp', 'Neque aut vitae labo', 'Tempora laboriosam', '1704712838.jpg', 0x313730343731323833382e706466, 'Bac+2', 'Dolor sequi alias qu', 'Est consectetur ut e', 'Accepter', NULL, '2024-01-08 10:20:38', '2024-01-08 12:07:12', 30),
(29, 'Eu culpa quaerat cor', 'ajimi2', 'salah eddine', 'F', 'Eius quisquam repreh', '+1 (307) 917-3648', 'wujowazuz@mailinator.com', 'Fugiat molestias om', 'Vitae est eaque cupi', 'Cillum aute perferen', '1704719078.jpg', 0x313730343731393037382e706466, 'Bac+5 et plus', 'Aut est odit quis es', 'Ut harum sunt quide', 'en attente', NULL, '2024-01-08 12:04:38', '2024-01-08 12:05:02', 31);

-- --------------------------------------------------------

--
-- Structure de la table `taches`
--

CREATE TABLE `taches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_tache` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `stagiaire_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `taches`
--

INSERT INTO `taches` (`id`, `nom_tache`, `description`, `date_debut`, `date_fin`, `stagiaire_id`, `created_at`, `updated_at`) VALUES
(6, 'affiche', 'asdfghjkl', '2023-11-11', '2023-12-12', 26, '2024-01-06 19:27:10', '2024-01-06 19:27:10');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(191) NOT NULL,
  `prenom` varchar(191) DEFAULT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(26, 'Id laudantium odit', 'Laborum Nulla conse', 1, 'mylo@mailinator.com', NULL, '$2y$10$Z6oCKQsFE4NXYnLrVfU.JOrWD0i.iej9CZLK8lYv0Mo0NGaC2d1ea', NULL, '2024-01-06 18:49:21', '2024-01-06 18:49:21'),
(28, 'mohamed', 'elmakhfi', 0, 'mohamedelmakhfi6@gmail.com', NULL, '$2y$10$PNAQ3Fbb5EU1LU/zHlwNxu3zgIjqgrltGz7r.dS2l65xcgF.ElfWK', NULL, '2024-01-06 19:21:12', '2024-01-06 19:21:12'),
(29, 'salah', 'eddine', 0, 'mohamedelmakhfi18@gmail.com', NULL, '$2y$10$sdL3JH1xBhUEaFNSrZERAuxtUnQnMcJjeP/luzpnUL3WT4YAUJaOS', NULL, '2024-01-08 10:12:00', '2024-01-08 10:12:00'),
(30, 'bilal', 'bil', 0, 'bilal@gmail.com', NULL, '$2y$10$Db8rmC0B2QNpTcA./s4F6.qL9iMH4CJq/OB6bWm2BUkMuxfNfwVy.', NULL, '2024-01-08 10:19:42', '2024-01-08 10:19:42'),
(31, 'ajimi', 'salah eddine', 0, 'salah12@gmail.com', NULL, '$2y$10$e6svbw7spnw3wEitJUYF3OQdDcMBGjgpPIgFv6nw3LvFuiB3HldU2', NULL, '2024-01-08 12:03:47', '2024-01-08 12:03:47');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `absences`
--
ALTER TABLE `absences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absences_stagiaire_id_foreign` (`stagiaire_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stages_stagiaire_id_foreign` (`stagiaire_id`);

--
-- Index pour la table `stagiaire`
--
ALTER TABLE `stagiaire`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stagiaire_cin_unique` (`cin`),
  ADD UNIQUE KEY `stagiaire_email_unique` (`email`),
  ADD KEY `stagiaire_user_id_foreign` (`user_id`);

--
-- Index pour la table `taches`
--
ALTER TABLE `taches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taches_stagiaire_id_foreign` (`stagiaire_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `absences`
--
ALTER TABLE `absences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `stagiaire`
--
ALTER TABLE `stagiaire`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `taches`
--
ALTER TABLE `taches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `absences`
--
ALTER TABLE `absences`
  ADD CONSTRAINT `absences_stagiaire_id_foreign` FOREIGN KEY (`stagiaire_id`) REFERENCES `stagiaire` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `stages`
--
ALTER TABLE `stages`
  ADD CONSTRAINT `stages_stagiaire_id_foreign` FOREIGN KEY (`stagiaire_id`) REFERENCES `stagiaire` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `stagiaire`
--
ALTER TABLE `stagiaire`
  ADD CONSTRAINT `stagiaire_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `taches`
--
ALTER TABLE `taches`
  ADD CONSTRAINT `taches_stagiaire_id_foreign` FOREIGN KEY (`stagiaire_id`) REFERENCES `stagiaire` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
