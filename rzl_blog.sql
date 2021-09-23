-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Sep 2021 pada 13.45
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rzl_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2021-09-19 19:58:53', '2021-09-19 19:58:53'),
(2, 'Web Design', 'web-design', '2021-09-19 19:58:53', '2021-09-19 19:58:53'),
(3, 'Personal', 'personal', '2021-09-19 19:58:53', '2021-09-19 19:58:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_01_030345_create_posts_table', 1),
(6, '2021_09_02_020838_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'ini judul baru', 'ini-judul-baru', 'Ratione ut illum totam et pariatur odit. Facilis facilis dicta et eos ea. Voluptatem aut dolores cor...', '<div>Ratione ut illum totam et pariatur odit. Facilis facilis dicta et eos ea. Voluptatem aut dolores corrupti velit voluptas.<br><br></div><div>Voluptatibus ea iusto et eius quaerat et facilis. Tenetur dolorum vitae est sint blanditiis doloribus.<br><br></div><div>Hic tempora sed pariatur vel illo nostrum. Consectetur dolorum odit pariatur voluptatem dolores est voluptatibus. Et iusto commodi ratione saepe asperiores nesciunt.<br><br></div><div>Aut aperiam qui non provident. Excepturi libero voluptates sapiente eos corporis quaerat doloribus. A numquam corporis voluptatum voluptas molestiae dicta. Error vitae fuga voluptatibus deserunt.<br><br></div><div>Dolorem consequatur incidunt corporis. Ut debitis ratione et. Itaque laborum blanditiis ut beatae.<br><br></div><div>Explicabo eum voluptatem ea aut. Eveniet vel voluptatem earum tempora. Dolores est cumque quos. Sed repellat velit corrupti.<br><br></div><div>Blanditiis accusamus non architecto ullam. Ratione modi ipsa sit quam. Tempore quam alias dolore repellat enim labore. Ducimus sit velit nesciunt esse aut voluptates veniam.<br><br></div><div>Alias ab quae voluptatem fugiat. Dolorem praesentium possimus velit distinctio enim. Aliquid odit dolores dolorem.<br><br></div>', NULL, '2021-09-19 19:58:54', '2021-09-23 01:29:48'),
(2, 1, 1, 'Dicta porro quis sint dicta dignissimos consequatur esse pariatur molestias.', 'qui-nulla-voluptatem-vel-mollitia', 'Et fugit quam quas at maxime suscipit. Doloremque expedita ut pariatur sit dolor. At enim ea iste est eligendi voluptatem. Nesciunt saepe minima et et explicabo dolorem esse.', '<p>Optio est ipsa nemo consequuntur. Quia adipisci enim omnis. Rem asperiores quisquam asperiores asperiores tempore dolorem.</p><p>Numquam consequatur exercitationem est. Quod sed et facere adipisci. Saepe et voluptatem consequuntur aliquam autem.</p><p>Et aut repellendus quibusdam aspernatur est rerum. Facere officia et error similique. Numquam atque id repudiandae sapiente praesentium et natus.</p><p>Sit necessitatibus tempore et autem eos et aliquid. Error et possimus omnis tenetur ullam. Quibusdam ut et rerum sit et. Quas natus eius veritatis.</p><p>Qui id et consequatur ullam iusto. Placeat ipsa quod est consequatur modi. Et quas voluptatem quibusdam aut occaecati.</p><p>Ipsam minus nihil officiis ut commodi unde natus. Commodi eum autem asperiores iusto officia. Est maiores blanditiis quaerat.</p><p>Id dolor omnis iusto omnis quo. Cumque sint at et tenetur et incidunt et itaque. Tenetur cupiditate dolores quod impedit necessitatibus. Quisquam officiis sit omnis optio omnis in veritatis.</p><p>Dolores deserunt natus soluta ducimus fuga. Aliquid architecto voluptatem doloribus. Doloribus qui modi atque et ipsum. Nostrum fuga maiores quas ipsa.</p>', NULL, '2021-09-19 19:58:54', '2021-09-19 19:58:54'),
(3, 1, 1, 'Unde nihil et exercitationem beatae sit voluptas.', 'quae-nobis-vitae-neque-ducimus', 'Eligendi quod molestiae aut asperiores vel aliquid. Ab rerum voluptatum excepturi omnis et doloremque. Sed libero culpa assumenda officiis alias aut quibusdam ea. Maxime non occaecati omnis qui laboriosam libero.', '<p>Ad quia soluta facilis eaque. Quam ut expedita est adipisci aut.</p><p>Reiciendis doloremque eos qui mollitia modi facere. Explicabo quidem asperiores odit autem. Libero cupiditate minima odit perferendis non quam est.</p><p>Est architecto quo quia aliquid enim omnis saepe. Qui saepe culpa ea autem rerum rem est. Veniam provident ut nobis facilis. Repellendus eaque aspernatur dolorem cupiditate.</p><p>Deserunt eius facere enim est et molestias quia. Fugiat ab modi beatae ad. Repellendus sit ipsa autem eum et et ut.</p><p>Praesentium aspernatur aliquid ex voluptates sequi omnis. In dolorem exercitationem cumque nam. Et ducimus commodi rerum.</p><p>Quasi voluptas voluptatem ut aut consectetur cupiditate. Deleniti occaecati aut nihil ad excepturi eos deserunt. Porro vitae iusto nihil accusantium.</p><p>Est neque minima sunt consequatur eum explicabo est. Quae quaerat est suscipit necessitatibus dolorem accusamus. Autem ut rem eum sequi maiores facilis vero ducimus. Excepturi sequi facilis et ut odit modi.</p><p>Qui et mollitia consectetur consectetur est expedita officia et. Ut voluptatem minus et. Aut ipsam dolores explicabo asperiores. Assumenda reiciendis nihil delectus.</p><p>Blanditiis nam perferendis quia optio. Impedit temporibus occaecati neque. Consequatur vitae porro enim et reiciendis iure et suscipit.</p>', NULL, '2021-09-19 19:58:54', '2021-09-19 19:58:54'),
(4, 2, 2, 'Sunt et minima molestias libero omnis sint placeat vero.', 'tenetur-quas-aut-esse-vel-iusto', 'Exercitationem praesentium nobis architecto sed. Fuga possimus commodi debitis aut et beatae. Ab dignissimos laboriosam nisi unde. Doloribus amet reprehenderit est porro minus numquam delectus. Odit quae fugit impedit reprehenderit velit.', '<p>Quae assumenda non facilis maiores aut ut. Nisi vitae ut est nam non delectus molestiae laboriosam. Ea exercitationem fugit qui qui dolorum ut id aliquid.</p><p>Repudiandae eos et cum ut odio. Quo est tenetur voluptatum molestiae vel. Quaerat ipsa veritatis quaerat saepe molestiae et. Minima natus excepturi et doloribus nihil. Eius impedit ullam cum quae repudiandae rerum.</p><p>Error pariatur reprehenderit nulla molestias sequi et optio. Fugit assumenda neque et officiis dolor. Sunt eveniet tenetur sit hic. Voluptate iste in nam voluptatem commodi voluptas atque.</p><p>Reprehenderit veritatis eius quod earum voluptas itaque dolorem dicta. Aut saepe perferendis voluptatum ut iusto et dolorem. In impedit laudantium perspiciatis aspernatur.</p><p>Sint modi nemo iusto qui ratione voluptas blanditiis. Nostrum eligendi tempora laboriosam eaque nemo non itaque itaque. Est laudantium excepturi odit amet quisquam.</p>', NULL, '2021-09-19 19:58:54', '2021-09-19 19:58:54'),
(5, 1, 1, 'Quia mollitia enim culpa voluptas velit ut sint non quod ad.', 'optio-magni-aut-nam-veritatis-reprehenderit-quaerat', 'Aut et cum ex modi aspernatur. Pariatur rerum neque amet nostrum illum omnis. Exercitationem maxime quaerat quae enim sed. Atque et qui explicabo minima eos.', '<p>Ea quibusdam ea incidunt iure aut inventore molestiae. Maxime error magnam id tenetur id ut numquam. Qui commodi nemo hic reiciendis sit.</p><p>Voluptatem reprehenderit expedita consectetur. Iste veniam earum accusamus optio. Voluptatem aspernatur voluptatem molestiae veritatis ullam architecto. Itaque aspernatur eos a porro.</p><p>Perspiciatis inventore non tempora repellendus minus quaerat. Eius eaque qui placeat architecto qui officiis eos. Molestias exercitationem dolorem suscipit eos ut eveniet. Impedit recusandae et voluptas accusamus.</p><p>Possimus voluptatem veniam culpa vero. Quidem quisquam tempora labore asperiores optio sint qui maiores. Earum blanditiis excepturi officia at voluptate debitis.</p><p>Similique libero qui consequatur quis. Veniam quidem nam voluptas distinctio architecto laborum.</p>', NULL, '2021-09-19 19:58:54', '2021-09-19 19:58:54'),
(6, 1, 3, 'Aperiam voluptatem eos est molestiae laudantium.', 'id-quia-veniam-tempora-et-quaerat-dolor', 'Deserunt eius quis ullam aliquam dolore. Perferendis ut et in quaerat tempore. Qui sed asperiores est. Voluptatum architecto impedit blanditiis dolor et ex.', '<p>Quam fuga quia tenetur consequatur. Cum alias nulla aperiam facilis est animi laboriosam. Similique minus laborum qui dolor aut optio quo. Ex voluptatem ea omnis eum cum assumenda.</p><p>Consequatur quidem eum nemo possimus. Sint ea sint adipisci aperiam illum iste distinctio labore. Qui iure molestiae placeat fugiat eligendi alias.</p><p>Eos quidem vel temporibus fuga. Deleniti non esse accusamus praesentium doloremque quibusdam.</p><p>Numquam molestiae et possimus sint sit recusandae recusandae. Numquam voluptatem et sint. Aspernatur debitis sit quia voluptate necessitatibus. Laudantium asperiores totam et nisi et cumque.</p><p>Iste repellat molestias ex possimus quasi magni. Placeat rerum sed eaque. Quidem sed adipisci neque qui culpa mollitia necessitatibus.</p><p>Nulla libero dolores maxime ut voluptatum maiores. Error debitis harum tempora sit. Accusantium nisi saepe modi sit. Dolores minus nemo et at. Illo dolor rerum omnis.</p><p>Reiciendis inventore aliquam veniam delectus aspernatur molestiae voluptates. Quidem sequi rerum est consequuntur natus. Reiciendis quod voluptate reprehenderit dolores. Eos tenetur sint recusandae est voluptatum est ad.</p>', NULL, '2021-09-19 19:58:54', '2021-09-19 19:58:54'),
(7, 1, 1, 'Tenetur tempore id sunt.', 'ab-officiis-natus-est-et-ex-voluptatibus-perspiciatis', 'Nihil eum rerum expedita aut in. Ipsum dicta excepturi qui aut minus doloremque perferendis.', '<p>Nostrum laborum animi commodi et sunt itaque ex. Ipsam id nihil quibusdam nulla quia autem. Dolor molestiae qui voluptatibus non neque voluptatem recusandae. Exercitationem et quisquam incidunt placeat et id distinctio minus.</p><p>Ab adipisci quam animi. Voluptatem commodi id exercitationem sed facere ipsa. Aperiam consequatur ducimus quo culpa quibusdam deleniti perferendis ut.</p><p>Iure at est consectetur aut. Et rem dicta sint dolores. Architecto incidunt quasi quidem magni et autem voluptatibus.</p><p>Sit deserunt architecto autem magnam molestiae. Ipsa repellendus provident consequatur deserunt architecto. Tempora quae et hic saepe aut vero deleniti.</p><p>Perferendis quaerat eum iusto et odio nam velit molestiae. Qui est labore laboriosam tempora veritatis. Pariatur voluptatum ipsum recusandae nam earum perferendis. Est ea numquam sequi placeat odit mollitia aliquid.</p><p>Sapiente vel consequatur corrupti ut sit. Error et perspiciatis neque quaerat non. Qui vel harum non labore molestiae sit.</p>', NULL, '2021-09-19 19:58:54', '2021-09-19 19:58:54'),
(8, 1, 2, 'Eligendi voluptas deleniti rem nesciunt minima soluta.', 'voluptas-modi-officiis-numquam-voluptates-et-quo-enim-culpa', 'Consequatur eligendi placeat expedita ipsam aut sit quasi. Fugiat unde temporibus aut illo occaecati. Autem earum reprehenderit et quod ut. Placeat ut quis optio sit quia earum.', '<p>Labore distinctio reiciendis ipsam molestias quis non. Quas assumenda provident quo repellat. Est non accusantium esse.</p><p>Dolorum quo excepturi et officiis et. Ut quisquam sit ipsa minima. Aperiam magnam rem qui modi autem. Odio occaecati voluptatum quisquam.</p><p>Aut aut minima et vel harum iusto. Eveniet aperiam et facere aut doloribus iste quis. Rerum illum iure ut enim et nam dolores nesciunt.</p><p>Quisquam nemo rerum sed. Deleniti et placeat modi ut et consequatur. Voluptatem facilis voluptatum excepturi a cupiditate.</p><p>Laboriosam repellendus eligendi ut harum quia. Est quo qui iusto aliquid ullam eos eum. Est eius ratione modi et consequatur ut doloribus vel. Voluptatem earum voluptas ad atque asperiores expedita.</p><p>In ut qui error aut. Eum sint veritatis cumque ut explicabo. Unde sint aut consequatur sit enim.</p>', NULL, '2021-09-19 19:58:54', '2021-09-19 19:58:54'),
(9, 2, 2, 'Ex dolorem maxime modi tenetur sit corporis.', 'tempore-dolore-et-aut-eum-voluptatem-et', 'Reiciendis quia assumenda quas eum eaque. Ex optio hic ut ut laudantium. Culpa ipsam minima et provident et eligendi. Quia qui quia cum inventore harum aut et dolorem.', '<p>Et iusto in modi ipsam incidunt et atque placeat. Iusto itaque qui quod. Natus error tempore omnis molestiae sit est.</p><p>Possimus nesciunt voluptate est consequatur voluptates. Eius est nobis voluptatem tempore. Maiores qui in fugit dolorum numquam possimus.</p><p>Odio quos et dolorum repudiandae. Et beatae ipsa asperiores sequi voluptatibus quia voluptas. Omnis in hic quis enim qui ullam.</p><p>Neque reiciendis ex sunt. Alias consequuntur laudantium est. Accusantium eum nihil eum.</p><p>Alias aut molestiae beatae commodi iste aut aut ex. Enim repellat quas architecto odit est similique.</p><p>Ut sed corporis nobis pariatur fuga. Et minima excepturi laborum veniam ducimus. Quam ab fugit ut dolorem. Placeat est ut libero inventore odit vitae asperiores.</p><p>Sed voluptas corrupti est est non. Omnis dolorem molestias quo voluptatem expedita quo nobis. Qui nam qui ut mollitia.</p>', NULL, '2021-09-19 19:58:54', '2021-09-19 19:58:54'),
(10, 1, 1, 'Incidunt et autem totam animi maiores similique.', 'dolor-quis-est-velit-veritatis-dolores-sunt-ullam', 'Sunt quia corrupti dolorem consequatur hic quas debitis. Odio ad cum sit sed consequatur eligendi assumenda. Et deserunt nobis iste voluptatem incidunt sed quae. Dolor dolores totam aut. Deleniti deserunt aut odit sunt et molestiae non.', '<p>Velit et delectus eaque pariatur molestiae ea. Est excepturi sunt soluta corrupti dolor et et quia. Possimus qui est optio qui. A placeat sit ut quod neque.</p><p>Laboriosam culpa qui natus aut voluptas magnam et. Sint vel perferendis aperiam id. Aliquam eum sunt sed unde.</p><p>Ut non praesentium dicta impedit ea ea molestiae est. Nihil voluptatem et dolores cupiditate dolores voluptas voluptatem.</p><p>Repudiandae sequi quos minima eos placeat quas eaque eveniet. Enim omnis et officia aut doloribus. Officia qui quis vitae cupiditate minima eos. Culpa eveniet ab harum et excepturi.</p><p>Cum sit possimus quo et ratione. Dolores ipsa consequatur est cupiditate nemo voluptas. Reprehenderit ut sit ut explicabo.</p><p>Voluptatibus aspernatur quas exercitationem veniam rerum pariatur et. Nostrum aut dicta sed.</p>', NULL, '2021-09-19 19:58:54', '2021-09-19 19:58:54'),
(11, 2, 1, 'Omnis beatae quia eum eos tenetur.', 'nobis-cumque-excepturi-et-est-animi-provident-nulla', 'Quia dolorem quam explicabo esse quo consequatur. Voluptatem laboriosam dignissimos accusamus voluptatibus enim reiciendis modi. Et debitis laborum nisi id ad sequi voluptatem incidunt. Perspiciatis illo quibusdam beatae eveniet consequuntur natus.', '<p>Amet distinctio autem sunt autem dolor. Iste eos voluptates enim ab harum nam. Excepturi hic quia minus iste sunt fuga.</p><p>Cum nulla officia sint cupiditate qui ipsum totam quidem. Eos corporis quo est iste sunt perferendis praesentium. Natus velit dolorem consequatur incidunt tempore quia quos praesentium.</p><p>Suscipit vel impedit quae quasi tenetur ea omnis. Culpa aut reiciendis saepe amet. Voluptas nemo et deleniti culpa nulla repudiandae tempora. Sint accusamus quaerat velit in consectetur magni. Inventore fuga aut nostrum ipsa iusto magni quia.</p><p>Provident quas esse voluptatum. Autem quia ut beatae quis enim et voluptatem. Amet temporibus maiores quo. Autem quidem fugiat asperiores sed.</p><p>Enim officiis eius modi quam ut ut. Nam aut et blanditiis ut nemo recusandae exercitationem aut. Sed sunt in quod enim libero hic in. Unde necessitatibus aut impedit quam qui dignissimos explicabo.</p><p>Non odio quia dignissimos ea. Asperiores perferendis non nobis. Rerum ea et asperiores impedit et distinctio.</p>', NULL, '2021-09-19 19:58:54', '2021-09-19 19:58:54'),
(12, 2, 3, 'Qui necessitatibus praesentium quibusdam et.', 'quo-laudantium-consequatur-soluta', 'Totam totam officiis maxime adipisci quibusdam excepturi. Architecto reiciendis quo labore exercitationem ducimus. Est qui debitis eos. Aliquam nobis omnis tenetur commodi rerum.', '<p>Est voluptatem ut quas ut repellat voluptatem. Odit atque est consequuntur quo similique dolorum. Temporibus cum quis aliquam vel nihil tempora. Magnam unde quaerat omnis expedita quo.</p><p>Doloremque voluptas aut labore earum quis consectetur. Ea excepturi ea et est tempora aut qui sed. Voluptas error similique at. Tenetur animi qui quam.</p><p>Eum nihil culpa laudantium. Consequatur repellat unde ea laborum quos.</p><p>Quia et iste autem iste aut magni. Quis quo accusamus optio dolor sapiente in velit. Temporibus voluptatum eaque tempore qui aut laudantium. Id ullam soluta qui recusandae cum quis.</p><p>Quia saepe reprehenderit id et non sunt. Consectetur ex sint cum blanditiis modi doloribus. Accusamus eos at qui earum voluptatem. Omnis ipsam porro omnis non.</p><p>Debitis laudantium aut modi optio odio rerum. Occaecati voluptas sed voluptate est consequuntur sed. Dolores aspernatur eos voluptatibus et in ipsa autem perferendis. Fugit sequi dignissimos voluptas rerum deserunt doloremque.</p><p>Asperiores atque autem et dolorem. Officia sed aliquid perspiciatis amet ut dolore. Atque iure dolore et incidunt dolores vitae id.</p>', NULL, '2021-09-19 19:58:54', '2021-09-19 19:58:54'),
(13, 2, 3, 'Cum iste cumque ex dicta qui.', 'eum-ut-eius-neque-in-aut-voluptatem', 'Incidunt aut nam quia voluptas. Molestias dolorem libero nihil perspiciatis eveniet iste esse. Veniam voluptatem rem maiores.', '<p>Dolorem natus deserunt suscipit minima dolor. Velit perferendis quia ut minima fugiat quam. Vel aut in est sed aut repellendus itaque pariatur. Numquam possimus quasi ab eos.</p><p>Perspiciatis voluptatem eos in in numquam sint. Occaecati voluptatibus sit repellendus corporis. Incidunt tempore quo illum harum voluptas veritatis nisi. Quo aliquam itaque aut consequuntur minus quibusdam sapiente.</p><p>Repudiandae consequuntur inventore ut ipsa in ullam maxime. Libero voluptas quia aperiam et ut dolor. Omnis et voluptatem in doloribus libero molestias.</p><p>Tenetur error sint veritatis quibusdam aliquid. Atque impedit qui numquam nam delectus. Quae explicabo rerum est et qui illum et in.</p><p>Temporibus dicta excepturi debitis repudiandae voluptas et occaecati. Earum qui dolorem aspernatur voluptatem accusamus sunt autem. Quia ut veniam ex deserunt vel voluptas cumque accusantium. Expedita inventore id consequatur recusandae. Cumque sit aliquam ducimus id.</p><p>Quasi sint dolores reiciendis minima enim non. Itaque eum maxime voluptate labore eveniet corporis voluptatem.</p><p>Quas eligendi voluptatem vel. Non ullam facere non iure. Provident dolorem optio reiciendis neque eveniet placeat.</p><p>Quisquam aut quisquam in ad quis voluptate perspiciatis. Quia ut fugit voluptas rerum blanditiis unde. Similique magni voluptatem enim dolorem.</p>', NULL, '2021-09-19 19:58:54', '2021-09-19 19:58:54'),
(14, 1, 1, 'Nam dolorum nihil.', 'sed-laudantium-quo-esse-et', 'Necessitatibus et illo ex itaque. Aut velit eaque ullam. Quas ut quia laborum eligendi voluptas. Pariatur in sed ut et dolor pariatur iusto.', '<p>Magnam eius optio sunt corrupti quia eveniet. Soluta rerum enim ab placeat sed consectetur. Nihil dolor exercitationem fugiat iure. Deserunt dolorem voluptas commodi et facilis.</p><p>Ad est possimus iste doloribus adipisci delectus consectetur. Quisquam laboriosam voluptatem sunt quo. Ipsam delectus a qui at atque in dolores aut.</p><p>Eos maiores sed laudantium alias rerum officiis qui ducimus. Soluta est et molestiae et doloremque qui. Impedit ut rerum ex tempora vero. Qui cupiditate et explicabo reiciendis enim. Ut excepturi ut vel quos illo ut est quis.</p><p>Consequatur officia tempora corporis omnis. Non laborum dolores rem et corporis explicabo accusamus voluptatem. Molestias ut in sed praesentium repellendus itaque sapiente. Et eligendi laboriosam facere non qui sit. Placeat eligendi fuga distinctio iusto tempora quaerat maiores.</p><p>Error officiis voluptas laudantium molestiae voluptas error praesentium. Eos explicabo quis qui. Exercitationem consequatur et voluptatem sed ipsa aut esse. Nam praesentium minus iusto aliquid.</p><p>Quibusdam molestiae doloremque deserunt ipsum omnis id. Ea molestiae magni iste voluptas. Accusamus cum nihil illum sit.</p><p>Ratione voluptatem dolore quia. Est sequi quod voluptatem temporibus. Maxime laudantium aliquid aut eaque cumque voluptatem. Molestiae velit natus nulla ducimus ut iusto.</p>', NULL, '2021-09-19 19:58:54', '2021-09-19 19:58:54'),
(15, 2, 3, 'Autem sed cumque voluptatem reprehenderit ut.', 'quasi-quas-dolorem-omnis-aut-voluptatum-praesentium', 'Iure dolorem doloremque tenetur id aspernatur quidem dicta ut. Ipsum facilis recusandae impedit iste quibusdam. Distinctio asperiores voluptatem nihil dolores voluptas non reiciendis. Corrupti commodi nam sed eaque aut.', '<p>Architecto cupiditate excepturi doloremque voluptatem culpa dolores. Est a voluptas aut sed omnis officia.</p><p>Maiores quos voluptatem iusto explicabo aut voluptas incidunt. Cum rem placeat ducimus ex cupiditate omnis iste. Consequatur voluptatem voluptas iure eaque perferendis natus alias sed. Assumenda est et molestiae ratione.</p><p>Quis asperiores quos nulla dolores laboriosam. In illum quam et dolores consequatur eos. Sit explicabo voluptatibus cupiditate asperiores non. Ex reprehenderit aut qui et dicta qui a.</p><p>Ab aperiam dolorem inventore nobis et. Qui sit placeat minus impedit beatae. Distinctio officia omnis ullam.</p><p>Ut veniam rerum repudiandae recusandae omnis voluptatem repellat. Natus consequatur autem est cumque. Architecto non dolor dolor recusandae est. Eos saepe suscipit dolorum maiores ad.</p>', NULL, '2021-09-19 19:58:54', '2021-09-19 19:58:54'),
(16, 1, 3, 'Doloribus et dolorem quasi consequatur consequatur omnis.', 'ut-molestias-molestiae-est-sint-eaque-earum-voluptate-officiis', 'Quas cumque quo voluptas incidunt et. Est nam commodi pariatur excepturi occaecati libero. Alias ut dolorem similique vero molestiae. Laborum ut tempora est pariatur repudiandae. Velit velit ullam dolor eius.', '<p>Magni id quo rem quod temporibus. Odio odio quam omnis delectus qui voluptas. Debitis quia voluptatem sit in sed labore.</p><p>Ut voluptas qui doloremque tempora numquam. At quo et aut repellat exercitationem delectus temporibus. Perferendis beatae quia veniam tempore. Quo soluta beatae sunt.</p><p>In vitae aliquam illo molestiae consectetur totam sed incidunt. Vitae debitis nam omnis nulla. Neque natus at est reiciendis adipisci dolorem.</p><p>Eum et aperiam reprehenderit architecto dolor. Sapiente fugit enim nam quia. Vel ut laudantium ipsum pariatur in. Et accusamus voluptate est eveniet ea.</p><p>Velit et neque rerum quas nesciunt. Voluptas aut et consequatur. Nobis nulla alias repudiandae excepturi minima temporibus qui.</p><p>Odit et excepturi voluptate illum libero fugit voluptas. Sed vel modi aliquam corporis sit aspernatur temporibus.</p><p>Rem est quae minima aut hic id hic. Voluptatum ad sequi temporibus nobis quo a beatae. Sit qui maxime id consequatur. Quisquam incidunt dolorem placeat numquam. Rem id iusto dolores deserunt excepturi laborum.</p><p>Culpa qui officiis delectus optio voluptatem ut non. Sit nobis quidem laudantium nulla est. Aliquid eaque maxime iure ut suscipit maxime voluptatem.</p>', NULL, '2021-09-19 19:58:54', '2021-09-19 19:58:54'),
(17, 1, 1, 'Molestias aspernatur sed exercitationem qui tempora possimus dolorum quo.', 'aspernatur-suscipit-asperiores-consectetur-facilis-facere-cumque', 'Pariatur aut et ipsum ut molestiae labore perspiciatis. Et quaerat eum aspernatur veritatis et. Perferendis consequuntur ea cupiditate error.', '<p>Atque dolorum dolorem sint in tempora illum suscipit. Sint doloremque enim et deserunt doloribus aperiam repellat. Quae voluptas odio explicabo ipsa accusantium qui.</p><p>Aut autem nam expedita quia. Harum et quos dolorem suscipit. Et ea fuga dolor magnam.</p><p>Voluptas est qui eum quam laborum magni. Ut nam ullam sit perspiciatis ipsa. Facilis voluptatem alias ut quis. Non veritatis ea necessitatibus voluptas tempore quis voluptatum.</p><p>Non dolorem quod sed enim. Rerum sit illum nisi magni. Est minima sit vero inventore natus numquam sit. Nulla neque autem et magni et id quam.</p><p>Recusandae quisquam voluptatem veniam aut harum expedita dicta. Aliquid temporibus aut voluptates neque nam. Nesciunt id sint eius voluptatem numquam id et. Sit esse culpa neque minus vitae dolor a. Vero error consequatur dolor sequi.</p><p>Aut eos sint sit veritatis voluptatem quia voluptas. Neque facere perspiciatis sint voluptatem facilis fugit. Natus sed assumenda tempore ut facere quia nesciunt unde. Cupiditate unde quae et pariatur itaque.</p><p>Illum veritatis eos blanditiis ut ipsum. Reiciendis incidunt odio reprehenderit est voluptas. Perspiciatis vel dignissimos modi amet.</p><p>Inventore atque adipisci nobis. Officia similique inventore enim quos quibusdam.</p>', NULL, '2021-09-19 19:58:54', '2021-09-19 19:58:54'),
(18, 1, 1, 'Eveniet odio doloremque et sit autem aut.', 'praesentium-et-veritatis-sunt-fuga-voluptatem', 'Qui cumque sed vero dolores assumenda magni. Ipsa vel alias molestiae pariatur est quod et. Voluptas ipsum nam voluptatem ut voluptas sunt.', '<p>Occaecati illum occaecati accusantium nesciunt impedit qui corporis. Ratione rerum tenetur eos ut quam sed quis.</p><p>Voluptatibus rerum occaecati nisi. Magni iusto deleniti sint vel ullam et. Laboriosam voluptatem fugiat eos quis aliquid quaerat quis.</p><p>Aut voluptatem at veritatis numquam totam sunt autem et. Qui qui enim eligendi at quae perspiciatis tempora. Quod qui voluptatem facilis necessitatibus sed. Optio eius ea et commodi non neque magnam.</p><p>Ea et culpa laborum error. Molestiae accusantium quae qui aut. Quidem nulla nihil qui ipsa. Asperiores qui eos dolores.</p><p>Est rem quo asperiores quasi eveniet aspernatur. Quaerat sint omnis ut aut quidem. Quas rerum nobis eius enim. At aut consectetur sequi officiis. Voluptas enim voluptatem suscipit voluptatum dolor quas magnam.</p><p>Ullam necessitatibus sed et quaerat. Et qui ab sed tempora ad molestiae. Tempora molestias autem inventore repellendus dolor ut. Eaque excepturi natus asperiores assumenda.</p><p>Quam dolorum nobis illum quaerat optio officia. Repudiandae consequatur velit incidunt quasi ex deserunt et. Minus qui nobis voluptatem incidunt optio. Tempore qui repellendus sint possimus reprehenderit omnis deserunt. Nesciunt accusantium esse et dignissimos aut.</p><p>Enim autem nobis et numquam commodi nostrum voluptatibus ea. Fugiat sint ex doloribus consectetur impedit fuga quam. Cumque fugit eum sint dolorem.</p><p>Libero harum debitis voluptatibus ratione. Officia consequuntur aperiam dignissimos. Distinctio illo id nulla iste enim sint. Alias et adipisci rem a inventore ut.</p>', NULL, '2021-09-19 19:58:55', '2021-09-19 19:58:55'),
(19, 1, 2, 'Consequatur qui aut.', 'aut-delectus-est-incidunt-quia', 'Non possimus delectus similique delectus consequuntur et earum rem. Omnis tempora debitis dolorem assumenda sit in soluta. Est id sapiente optio. Et repellendus recusandae quae.', '<p>Autem dolor eos vitae rerum quis perferendis. Quis placeat esse est. Sint eos nihil libero rem facere provident.</p><p>Saepe cum molestiae vitae beatae. Tempora quisquam distinctio labore necessitatibus odio. Delectus quasi aut doloribus omnis libero voluptatem. Odio iure illum neque libero non explicabo voluptatibus.</p><p>Sit assumenda aut veniam delectus maxime. Nihil consequuntur earum accusantium necessitatibus tempora nam tempore eos. Tempora totam doloribus nobis modi perspiciatis omnis itaque.</p><p>Assumenda iusto ipsa in expedita et labore. Assumenda repudiandae incidunt quasi doloribus unde. Rerum et sapiente qui enim quidem optio voluptatem. Error omnis hic vel cupiditate.</p><p>Officia repudiandae voluptas esse excepturi exercitationem rem hic. Molestiae totam accusantium esse quod et occaecati deleniti est. Exercitationem fugiat qui earum aspernatur ut quam doloremque. Dolore atque rerum ullam eum eum.</p>', NULL, '2021-09-19 19:58:55', '2021-09-19 19:58:55'),
(20, 2, 2, 'Et labore ab doloremque qui.', 'voluptatem-suscipit-est-unde-aut', 'Non quo et adipisci dolor. Consequatur aliquid consectetur molestiae ut temporibus voluptatum id.', '<p>Eligendi distinctio voluptatem consequatur itaque consequatur nostrum voluptas ut. Voluptas sint excepturi blanditiis laboriosam. Reprehenderit nobis sed consequuntur eius iure nihil. Provident omnis possimus similique odio consectetur sunt veritatis aliquam.</p><p>Delectus illo tempora voluptas provident tempore consectetur est. Repellat quia dolorem numquam qui aut.</p><p>Impedit unde commodi consequatur repellendus nihil quos voluptatem. Temporibus qui maiores rerum quas quis nostrum expedita consequuntur. Consequatur illum animi culpa et praesentium consequatur. Deserunt perspiciatis suscipit molestiae.</p><p>Aut soluta nemo aut quod. Dolorem exercitationem dignissimos est rerum repellendus deserunt reprehenderit. Numquam est autem accusantium et voluptas qui.</p><p>Praesentium praesentium expedita qui odit similique. Qui placeat sint distinctio ipsum sunt voluptas. Officia ut voluptas voluptatem velit.</p><p>Numquam et ratione voluptate cupiditate. Sapiente aut dolorem at ad dolores doloremque. Quae sunt omnis vel odit fuga dolore sit. Commodi itaque dignissimos est dolorem tempora illum rerum.</p><p>Minus corporis culpa ut atque officia ut totam totam. Omnis minima reiciendis enim quod sit sunt eius. Ex laboriosam unde consequatur iure maxime.</p><p>Hic ea et fuga magni dicta soluta. Praesentium aut et voluptatem iste. Qui suscipit id esse sapiente. Repellendus quibusdam exercitationem sunt ut.</p><p>Vitae id sunt vitae ex. Voluptatibus consequatur dolor architecto officiis maxime corporis qui id. Voluptas est officiis facilis id unde.</p>', NULL, '2021-09-19 19:58:55', '2021-09-19 19:58:55'),
(22, 1, 6, 'Coba dulu', 'coba-dulu', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus cum magni soluta ipsum odit recus...', '<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus cum magni soluta ipsum odit recusandae impedit nobis cupiditate unde minus dolorem eaque iusto neque odio id, error rem incidunt vel nostrum quas. Porro expedita explicabo asperiores, iure&nbsp;</div><div><br></div><div>velit animi inventore dignissimos sequi voluptatem illo fugit dolorem ea neque tempore error obcaecati veritatis? Iste, nam autem modi sequi obcaecati facere at aliquid qui beatae ducimus eum adipisci doloribus odit voluptatibus cum officia quaerat laboriosam cupiditate ratione ipsum, vero veritatis dolores non. Velit, quas ab eum nobis officia voluptates! Saepe perspiciatis laudantium ex, laboriosam mollitia optio dicta voluptatibus numquam, quia natus facilis! Ipsa eaque veniam autem tenetur&nbsp;</div><div><br></div><div>nostrum cumque labore. Repellendus praesentium, molestiae voluptatibus error minima omnis? Quam vero doloribus nobis dolores recusandae consequuntur sapiente, quisquam quis hic, maiores inventore autem minima tempore vitae animi explicabo atque nostrum obcaecati eaque. Ratione excepturi, soluta odio natus voluptatibus asperiores commodi exercitationem quod numquam delectus deserunt impedit, laboriosam dolorem veniam tenetur aut quo? Minus nemo distinctio sunt eveniet rerum asperiores vero porro ipsam dolore! Ad veniam sit debitis culpa. Debitis porro asperiores labore adipisci a deleniti nostrum sapiente harum deserunt sed voluptatum iste quam cupiditate, perspiciatis commodi, non cum minima nobis, nesciunt dolores! Iste, consequatur!</div>', NULL, '2021-09-23 00:54:47', '2021-09-23 00:54:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bakianto Daryani Hutagalung S.IP', 'uhutasoit', 'pradana.dariati@gmail.com', '2021-09-19 19:58:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Is5uegfBRIyJBf620kKYLExToT5jkeUgKFhq7P2lIFTguujmhEfVI7XKAUCT', '2021-09-19 19:58:53', '2021-09-19 19:58:53'),
(2, 'Harjo Harto Hutapea', 'titi84', 'usuryono@example.com', '2021-09-19 19:58:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EKYnREDiVx', '2021-09-19 19:58:53', '2021-09-19 19:58:53'),
(3, 'Banawa Aslijan Hidayat', 'cayadi.widodo', 'baktiadi.lestari@example.net', '2021-09-19 19:58:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bXPc7cpvUc', '2021-09-19 19:58:53', '2021-09-19 19:58:53'),
(6, 'Rizal Bagus Pambudi', 'Rizal', 'rizalbagus010@gmail.com', NULL, '$2y$10$xHCKe38HWaHNsVVqshWB8e1.pYhGs7RYPezMLBfrnI0y5dra5Y622', NULL, '2021-09-22 19:45:08', '2021-09-22 19:45:08');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
