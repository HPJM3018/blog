-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 06 août 2023 à 14:43
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Nam.', '2023-08-05 14:56:22', '2023-08-05 14:56:22'),
(2, 'Dolorem eos et.', '2023-08-05 14:56:22', '2023-08-05 14:56:22'),
(3, 'Quis maxime ipsam libero.', '2023-08-05 14:56:22', '2023-08-05 14:56:22'),
(4, 'Ratione sit.', '2023-08-05 14:56:23', '2023-08-05 14:56:23'),
(5, 'Earum modi voluptas.', '2023-08-05 14:56:23', '2023-08-05 14:56:23');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2023_08_04_181008_create_posts_table', 1),
(12, '2023_08_04_181256_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`, `user_id`, `category_id`) VALUES
(1, 'Voluptatem nemo quasi labore ut voluptate non dolore.', 'Sunt error distinctio nobis consequatur eius porro. Veniam eos laborum dolores autem at. Sequi fugiat error amet similique. Fuga optio ipsa est sed. Qui id dignissimos nostrum nihil cupiditate. Voluptas perspiciatis dolorum reiciendis. Maiores sed et et et earum nihil. Aut iure eveniet facere reiciendis tenetur eos. Quis veniam laborum qui dolorem laboriosam est officiis. Vero assumenda asperiores sint alias voluptatem. Mollitia cupiditate illum voluptatibus incidunt dolores. Sit quo qui quo suscipit totam. Quam iusto sunt minus aut. Accusantium quis sed provident aliquam maiores quia asperiores et. Sequi doloribus aut vero aperiam dolorum.', 'https://via.placeholder.com/1000', '2023-08-05 14:56:23', '2023-08-05 14:56:23', 1, 1),
(2, 'Aspernatur sit esse sapiente eum deleniti saepe iste est.', 'Aut quis optio fugiat et. Quia expedita delectus quaerat velit maxime. Nesciunt et iste ex consequuntur soluta recusandae. Aperiam vero veritatis sapiente accusantium. Dolorem in voluptatem maxime qui quam. Et est beatae nobis vitae quo tenetur. Omnis aut est unde delectus ut. Et consequatur maiores necessitatibus rerum dolore. Dolorum facere molestias sit id id. Non in et error distinctio dolore. Laborum debitis eius voluptas. Minus fugit possimus magni aperiam odio nostrum animi. Nam accusamus deleniti ipsam ex quo eligendi accusamus. Harum ratione voluptas voluptatem ea explicabo nisi. Suscipit numquam nisi quis.', 'https://via.placeholder.com/1000', '2023-08-05 14:56:23', '2023-08-05 14:56:23', 1, 1),
(3, 'Architecto consequatur saepe et magnam.', 'Et blanditiis fuga dolor. Voluptates at velit unde dolores. Doloremque ea quis placeat ut laborum et itaque. Voluptate pariatur consequatur sed id eos. Molestiae quam a architecto eum. Exercitationem eius eos beatae eos at et est et. Atque libero praesentium voluptas eos quasi. Saepe exercitationem consequuntur tenetur labore quia. Nihil possimus cumque est expedita. Occaecati quo reiciendis odio quis voluptas ullam enim. Velit reprehenderit incidunt modi corporis suscipit. Et est aliquam quaerat voluptatem. Recusandae totam possimus quod iure corrupti nostrum ut. Et illo sequi commodi voluptas. Sunt minus quos est quisquam dicta.', 'https://via.placeholder.com/1000', '2023-08-05 14:56:23', '2023-08-05 14:56:23', 2, 4),
(4, 'Ratione eum qui voluptas vitae quasi voluptas aut enim.', 'Et eos sit enim quod id. Consequatur quo aliquid laborum quia assumenda voluptatem molestiae voluptatum. Accusantium labore laudantium architecto praesentium similique ipsam. Sunt voluptates consequatur porro ea est amet. Id voluptatem in voluptates sint nesciunt. Laborum est nihil dolores omnis unde voluptas occaecati. Libero omnis sequi omnis ut. Doloremque omnis ducimus praesentium consectetur quia aut ea. Sapiente architecto quia consequatur. Et laboriosam quia assumenda amet ut fugiat velit enim. Et laudantium nemo tempore saepe. Vel quia expedita et nisi debitis molestias animi. Voluptatem delectus cumque blanditiis sit ea labore nemo. Quos aliquid ut nostrum vel praesentium asperiores excepturi ut. Voluptatem odit sapiente est ut.', 'https://via.placeholder.com/1000', '2023-08-05 14:56:23', '2023-08-05 14:56:23', 2, 4),
(5, 'Dolorum asperiores reiciendis in eos vel asperiores impedit in sapiente autem laboriosam.', 'Officiis commodi voluptatem repellendus velit et et. Cupiditate maxime repellat doloribus eaque molestiae sint est. Sunt eius debitis corrupti in sed mollitia amet. Et repellendus corporis aut dolores ab reprehenderit. Dolor totam magnam et reiciendis ducimus ea corrupti. Aut qui ad suscipit rerum et. Facilis aut et rerum excepturi. Eum quidem molestiae vitae aut. Ut accusamus fuga est excepturi molestiae eveniet ut optio. Ratione porro exercitationem sed et id illo cupiditate dolorum. Enim saepe voluptatem dolor quam. Aut et voluptatem voluptatem qui odio doloremque. Fuga sunt amet consectetur. Officiis perferendis soluta nulla et. Iusto doloremque nam delectus aliquid optio assumenda et.', 'https://via.placeholder.com/1000', '2023-08-05 14:56:23', '2023-08-05 14:56:23', 3, 2),
(6, 'Et distinctio iure veniam omnis enim alias cumque repellat iure error corrupti consequatur.', 'Amet debitis aspernatur aut sed asperiores tenetur itaque sapiente. Vel sed quasi debitis ut quos deleniti error qui. Quod incidunt consequatur eum nam eum quia. Repellat in nesciunt qui animi cumque nihil. Non impedit praesentium non provident voluptatem veniam enim illum. Totam quibusdam dolores veritatis amet odit nostrum. Est veritatis sequi et dolorem ipsum et. Veniam placeat ut quia quibusdam. Voluptatem ipsum est aut beatae repellendus possimus sunt. Hic dolore consequatur quis fuga in nesciunt quia. Adipisci deserunt repellendus alias. Praesentium sed porro qui eligendi perspiciatis. Et voluptatum aspernatur et voluptas itaque. Ea dicta dolor ipsam voluptas. Rerum aut aut et vel.', 'https://via.placeholder.com/1000', '2023-08-05 14:56:23', '2023-08-05 14:56:23', 4, 2),
(7, 'Facere ea molestiae quis a facere.', 'Ipsam nihil quod repudiandae qui. Voluptatum quaerat ut minus explicabo. Earum voluptatem animi soluta. Perspiciatis quis voluptas quo rerum. Atque explicabo reprehenderit ut animi ratione. Explicabo earum magni animi voluptatibus qui sunt. Consectetur mollitia consequatur quia error harum ut placeat quia. Voluptatem possimus pariatur et qui ratione odio ab. Dolor dolorum illum veritatis iure. Dicta ipsa repellendus dolorem iusto eius. Ratione quas et fuga quia sunt. Temporibus praesentium reprehenderit aut nesciunt et aut enim. Laborum voluptatum quae molestiae quidem rerum. A deserunt est incidunt ullam aliquam. Quo et non ratione commodi adipisci.', 'https://via.placeholder.com/1000', '2023-08-05 14:56:23', '2023-08-05 14:56:23', 4, 2),
(8, 'Maxime eos illo nam enim rerum non quis pariatur non.', 'Expedita quibusdam nesciunt voluptatum ea eius. Labore neque dicta quisquam aut aspernatur et. Illo voluptatibus dolorem fuga assumenda laboriosam. Enim quibusdam accusamus voluptatem voluptatum quia et sequi. Et eveniet placeat odit in deleniti est. Nulla natus ut dolores commodi nam sapiente. Assumenda praesentium velit commodi laboriosam voluptas illo. Quis sit nostrum soluta quis voluptatibus. Repellendus blanditiis inventore voluptatibus repudiandae. Ullam modi et accusantium quia odit nulla consequatur. Voluptates magni consequatur quos id quibusdam commodi quidem reiciendis. Officiis asperiores corrupti odit ea animi soluta id. Accusamus labore aut rerum et tempora consequuntur facilis voluptas. Omnis hic at ut qui voluptas. Iste tenetur eum quis explicabo voluptatum iure laudantium.', 'https://via.placeholder.com/1000', '2023-08-05 14:56:23', '2023-08-05 14:56:23', 5, 3),
(9, 'Quia porro sit et et dolor.', 'Ducimus ea et occaecati optio repudiandae dolorum officia possimus. Corrupti inventore sit aut eligendi ipsam reprehenderit. Magni quis esse nisi est ipsam delectus nam voluptatem. Accusamus facilis in aliquam magnam repellat minus nihil. Tenetur enim minima aut nisi. Voluptas voluptatibus magni cumque sed autem dicta modi. Commodi voluptas ut tenetur deserunt. Amet amet molestias aut et est quo ratione. Quos et odit et doloribus molestiae. Explicabo a quaerat id earum ipsa unde. Et quia et voluptatem inventore adipisci cupiditate. Id in suscipit corporis placeat qui occaecati fuga. Ab in corrupti vel odio nostrum mollitia error quia. Quisquam et eaque veniam cumque est quis iste. Qui dolore provident in nihil ut et.', 'https://via.placeholder.com/1000', '2023-08-05 14:56:23', '2023-08-05 14:56:23', 5, 3),
(10, 'Omnis ipsa non sit velit minus dolorem et vero quo.', 'Doloribus dolore nemo quae necessitatibus mollitia consequuntur. Tenetur possimus sunt corporis inventore dolores dignissimos aspernatur. Corrupti aut dolores quae aut amet voluptas enim. Non aut et aut illum eum et quia. Eius et et laborum sunt quo eligendi sunt. Praesentium sed eos atque neque. Dolore commodi neque aliquam omnis provident itaque. Impedit voluptatum necessitatibus occaecati asperiores. Dolor tenetur dicta et quis est error impedit. Accusamus temporibus et consequatur sit. Et dolor quis labore ut molestiae ipsam. Ratione voluptatibus optio corporis voluptatem assumenda reiciendis consequatur. Illum dolorum ducimus error sit atque optio. Iste sit nostrum nulla reprehenderit autem. Nulla eos veniam at exercitationem molestias.', 'https://via.placeholder.com/1000', '2023-08-05 14:56:23', '2023-08-05 14:56:23', 5, 3),
(11, 'Laudantium corrupti est pariatur excepturi sequi qui qui tempore deleniti.', 'Repellendus blanditiis nesciunt laborum cum porro et. Illum eum modi totam. Omnis accusantium voluptas eos consequatur. Impedit dolores autem voluptas aliquid nemo ut eaque beatae. Nihil repudiandae sit accusantium ut fugit nemo. Eum iste eaque dolorem repellat non saepe nobis. Ipsa sint quaerat inventore. Eius numquam pariatur itaque error voluptatem maxime. Qui blanditiis quaerat officiis recusandae. Corrupti quo facilis ipsa et eum. Sunt est aut et. Maiores explicabo esse est molestias ipsa assumenda. At atque maiores ut harum quae. Blanditiis facere explicabo maxime commodi consequatur eius. Nemo sed vel minima omnis at temporibus qui ut.', 'https://via.placeholder.com/1000', '2023-08-05 14:56:23', '2023-08-05 14:56:23', 6, 5),
(12, 'Beatae alias possimus quo voluptas inventore ipsam saepe.', 'Facilis quia voluptatem nobis rerum dignissimos. Repudiandae quidem eos non. Et nihil voluptatum eligendi dolorum dolorem quia. Iure sed labore suscipit reiciendis qui sit modi. Saepe voluptatem dolor illo ullam molestias architecto quia. Repellat esse accusantium voluptatem consectetur. Iure sunt dolores ad est sed qui est. Blanditiis repudiandae voluptatem ut quia consectetur aut impedit nisi. Qui deserunt numquam iusto explicabo ut. Et eum voluptatum iusto sequi. Adipisci aut omnis voluptas voluptatem voluptatem distinctio. Consequatur aperiam omnis error fuga cupiditate. Adipisci quis at non ut ab. Nostrum quia sunt occaecati dolore. Quia occaecati nam perferendis omnis quia.', 'https://via.placeholder.com/1000', '2023-08-05 14:56:23', '2023-08-05 14:56:23', 7, 1),
(13, 'Inventore perspiciatis eius eum porro asperiores.', 'At voluptatem recusandae magnam corporis eveniet eveniet. Ipsam dolores et ducimus odit laboriosam eos maiores. Quia dolores quo qui facere rerum exercitationem tempore. Sequi explicabo deserunt molestiae. Quae consequatur velit impedit voluptatibus voluptas. Aut numquam consequatur ipsam. Voluptatibus minima qui consequatur est expedita iste. Unde sit velit esse alias. Enim ipsam quae quos nostrum aspernatur. Eligendi dolor sed iure. Optio harum necessitatibus voluptatem velit deserunt aut dolore. Et ab expedita cupiditate et qui. Qui unde aut officiis quisquam ad. Vel minus blanditiis molestiae molestias eligendi eveniet. Doloremque sint tempora facere tempore.', 'https://via.placeholder.com/1000', '2023-08-05 14:56:23', '2023-08-05 14:56:23', 8, 4),
(14, 'Recusandae et beatae nihil et velit beatae laboriosam aspernatur dolorem et recusandae.', 'Eligendi nobis aut repudiandae quae. Neque et voluptas est rerum neque. Pariatur molestiae eos nostrum maiores dolores totam modi. Non repellendus officiis molestiae assumenda. Aut vel sint in pariatur iste at enim esse. Id possimus animi ad. Voluptatem at voluptates necessitatibus debitis. Velit beatae impedit ex est et non. Dolor tempora ipsa eos. Cum ad maxime et voluptate minima omnis iusto. Sit repellat in amet sunt rerum qui architecto. Est mollitia magni quia voluptatem. Id qui aut quasi quod ut voluptas. Cupiditate et fugiat at quia a. Ipsa non voluptate perspiciatis officia mollitia.', 'https://via.placeholder.com/1000', '2023-08-05 14:56:23', '2023-08-05 14:56:23', 8, 4),
(15, 'Est natus odio est quia ad qui.', 'Rerum quos minus voluptatem dolores error provident quisquam. Deleniti ea architecto qui et. Eum reprehenderit dolor quisquam deleniti deleniti. Enim ducimus nam commodi exercitationem ut. Atque repellat similique placeat. Consequuntur voluptas nisi fugiat nisi. Officia natus pariatur amet officia dolorum aperiam rerum. Ab qui unde quia amet. Dolor nihil debitis rerum magni et molestiae sint dolores. Nulla dignissimos est deserunt fugit earum voluptatem sint. Ullam suscipit incidunt voluptatum enim. Beatae officia sed illo nam ab. Praesentium sed officia commodi eos quidem. Nam veniam qui ut rerum exercitationem debitis aut. Aliquam ut quam distinctio iste minima sit molestiae.', 'https://via.placeholder.com/1000', '2023-08-05 14:56:23', '2023-08-05 14:56:23', 9, 4),
(16, 'Eum placeat iste hic sunt natus.', 'Perspiciatis est ipsam unde qui. Incidunt nulla explicabo dolor minus blanditiis labore. Similique voluptatem illo consectetur corrupti nulla. Magni quod praesentium dolor facilis. Animi voluptate voluptas aut suscipit atque quam est. Enim aut maxime dolores consequatur aspernatur quasi nostrum. Provident perferendis doloribus consequatur facilis quis beatae. Quo dolorem beatae fugit ratione. In accusamus dolores magni eveniet voluptatum aut mollitia. Ea aut odio impedit laborum ad aliquid. Illo ea incidunt nemo rerum maiores. Sapiente velit ea voluptas sint modi. Sit modi vero voluptates magnam ad asperiores. Aliquid consequatur qui facilis. Qui sequi ex laboriosam magni.', 'https://via.placeholder.com/1000', '2023-08-05 14:56:24', '2023-08-05 14:56:24', 10, 4),
(17, 'Enim quo hic omnis at ut veritatis autem.', 'Nemo dignissimos inventore similique architecto harum exercitationem. Maxime a cupiditate et sed rerum eum. Ut qui aperiam dolorem assumenda. Illum numquam laboriosam facere. Aut earum sed aliquid exercitationem. Explicabo sunt ex velit quia delectus dolor. Ipsam repellat et quisquam sequi numquam atque ullam commodi. Et voluptas dolore sit totam. Perspiciatis at odio sed aut earum qui ipsam et. Non alias iure ab. Vel odit rerum nemo officiis quibusdam atque animi soluta. Possimus cupiditate saepe voluptatem exercitationem. Facere minima quae voluptate. Reiciendis omnis vel et alias culpa. Et deserunt cum commodi nobis cupiditate harum nesciunt sed.', 'https://via.placeholder.com/1000', '2023-08-05 14:56:24', '2023-08-05 14:56:24', 10, 4),
(18, 'Error sunt maxime maiores est sunt et atque dolor est rerum.', 'A illo non quisquam repellat est sit. Et autem ex mollitia voluptas praesentium culpa. Distinctio voluptates aperiam nemo dolorum quae pariatur blanditiis. Voluptates ipsam consequatur vel. Et qui est optio sed. Pariatur molestiae quidem autem error sed culpa. Quia aliquam illo consequatur voluptas sunt labore placeat. Inventore nihil a et impedit delectus aut. Blanditiis tenetur officiis qui. Reiciendis et omnis molestiae unde. Facere aut itaque quod labore ut dignissimos qui. Nostrum aut omnis nihil praesentium. Et sit aut possimus. Assumenda omnis asperiores odio sit labore ex. Aut fuga explicabo provident est minus nostrum.', 'https://via.placeholder.com/1000', '2023-08-05 14:56:24', '2023-08-05 14:56:24', 10, 4),
(20, 'Test2Editer', 'test2descriptionedité', 'posts/923WNgKPqH7jOk7CHQufIFldfJvlX8rm1nvHqbDx.jpg', '2023-08-06 08:33:17', '2023-08-06 08:34:29', 13, 3);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Anabelle Fisher PhD', 'denesik.devyn@example.org', '2023-08-05 14:56:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '99ZTVaHLKy', '2023-08-05 14:56:23', '2023-08-05 14:56:23'),
(2, 'Eduardo Schimmel', 'mason68@example.com', '2023-08-05 14:56:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6iRwpFst2H', '2023-08-05 14:56:23', '2023-08-05 14:56:23'),
(3, 'Ms. Ruthie Kihn', 'carmelo.murazik@example.org', '2023-08-05 14:56:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aFZ7AsAckm', '2023-08-05 14:56:23', '2023-08-05 14:56:23'),
(4, 'Ernestina Johnson', 'delilah38@example.com', '2023-08-05 14:56:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cUJBa8lihQ', '2023-08-05 14:56:23', '2023-08-05 14:56:23'),
(5, 'Prof. Leopoldo Cassin V', 'abner63@example.net', '2023-08-05 14:56:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kbNuqMit1S', '2023-08-05 14:56:23', '2023-08-05 14:56:23'),
(6, 'Buddy Schimmel', 'jared78@example.org', '2023-08-05 14:56:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a4pu2LcOCa', '2023-08-05 14:56:23', '2023-08-05 14:56:23'),
(7, 'Milan Wiza', 'katelynn.gibson@example.com', '2023-08-05 14:56:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jDFrmzJLEF', '2023-08-05 14:56:23', '2023-08-05 14:56:23'),
(8, 'Lenora Kemmer', 'jhammes@example.net', '2023-08-05 14:56:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BnQ0SJNHr0', '2023-08-05 14:56:23', '2023-08-05 14:56:23'),
(9, 'Chauncey Cassin DDS', 'ynikolaus@example.org', '2023-08-05 14:56:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'te7Q49iLw1', '2023-08-05 14:56:23', '2023-08-05 14:56:23'),
(10, 'Dane Dibbert', 'huels.ramon@example.net', '2023-08-05 14:56:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gjdFff1fIQ', '2023-08-05 14:56:23', '2023-08-05 14:56:23'),
(11, 'judith', 'judithhouinsou0@gmail.com', NULL, '$2y$10$N3wUg7UaQMp.3b9jKWDQSuDfiuUodxilBJvJL8FtEickzDQSkocS6', NULL, '2023-08-05 15:27:50', '2023-08-05 15:27:50'),
(12, 'test', 'test@gmail.com', NULL, '$2y$10$hi9H0eDAKxTbsLD83bZYzuRb3xjhBA4pKBleQ2KZL59UjEaENqPPW', NULL, '2023-08-05 18:15:33', '2023-08-05 18:15:33'),
(13, 'test1', 'test1@gmail.com', NULL, '$2y$10$fLKiZODsUMXXNCtp8ZZwGOHEZk7e2bN.QatUCSeVd0O9Np9.z4T1C', NULL, '2023-08-06 04:41:28', '2023-08-06 04:41:28');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
