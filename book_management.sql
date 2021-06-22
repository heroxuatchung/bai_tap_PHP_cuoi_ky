-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 22, 2021 lúc 09:32 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `book_management`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `tensach` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tacgia` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nhaxb` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namxb` int(4) NOT NULL,
  `sotrang` int(5) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `book`
--

INSERT INTO `book` (`id`, `tensach`, `tacgia`, `nhaxb`, `namxb`, `sotrang`, `updated_at`) VALUES
(1, 'Cho tôi xin một vé đi tuổi thơ', 'Nguyễn Nhật Ánh', 'NXB trẻ', 2018, 208, '2021-06-12 02:53:46'),
(2, 'Bức xúc không làm ta vô can', 'Đặng Hoàng Giang', 'NXB Hội Nhà Văn', 2019, 224, '2021-06-12 09:52:37'),
(3, 'Con chó nhỏ mang giỏ hoa hồng', 'Nguyễn Nhật Ánh', 'NXB trẻ', 2016, 256, '2021-06-12 09:52:37'),
(4, 'Người lớn không khóc', 'Hamlet Trương', 'NXB Văn Học', 2017, 138, '2021-06-12 09:52:37'),
(11, 'Chúng ta rồi sẽ ổn thôi', 'Minh Nhật', 'NXB Hội Nhà Văn', 2015, 280, '2021-06-19 14:34:23'),
(12, 'Buồn làm sao buông', 'Anh Khang', 'NXB Văn Hóa - Văn Nghệ', 2019, 2016, '2021-06-19 14:39:46'),
(13, 'Hôm Nay Người Ta Nói Chia Tay', 'IRIS Cao', 'NXB Văn Học', 2018, 176, '2021-06-19 14:41:40'),
(15, 'Hôm nay tôi thất tình', 'Hạ Vũ', 'NXB Hà Nội', 2016, 200, '2021-06-19 14:48:02'),
(16, 'Cốt cách phụ nữ', 'Huyền Trang Bất Hối', 'NXB Hà Nội', 2016, 232, '2021-06-19 14:53:17'),
(17, 'Thanh Xuân Không Hối Tiếc', 'Du Phong', 'NXB Văn Hóa - Văn Nghệ', 2019, 196, '2021-06-19 14:54:37'),
(19, 'có không giữ mất đừng tìm nha', 'Long', 'NXB trẻ', 2021, 123, '2021-06-21 04:02:12'),
(20, 'một bước yêu vạn dăm đau', 'mr siro', 'NXB trẻ', 2019, 321, '2021-06-21 04:04:25'),
(21, 'bông hoa đẹp nhất', 'Quân AP', 'NXB trẻ', 2020, 213, '2021-06-21 04:05:39'),
(22, 'màu nước mắt', 'Nguyễn Trần Trung Quân', 'NXB trẻ', 2018, 131, '2021-06-21 04:08:27'),
(23, 'em gái mưa', 'Hương Tràm', 'NXB trẻ', 2017, 412, '2021-06-21 04:26:33'),
(24, 'sống xa anh chẳng dễ dàng', 'Bảo Anh', 'NXB trẻ', 2018, 221, '2021-06-21 04:27:27'),
(25, 'có một cái cây trong một cái vườn', 'Đen Vâu', 'NXB trẻ', 2021, 231, '2021-06-21 04:29:34'),
(26, '123', '123', '123', 123, 123, '2021-06-21 04:30:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_06_11_055852_create_books_table', 1),
(7, '2021_06_15_034832_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('qTEUoYmBj0QLKezAD7XA8zilijLciyUG7U4halfu', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36 OPR/77.0.4054.90', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicURuSmFDS29BWGVpeDNDUzFFTkppR08xSjNkaXFTRnlRajd1T1l4bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjY7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRQNDIuUXpseGM5MFpUWS5PTndCcWxPTWhXYlFPdFBpQkpEZ3lYT0R1TFVRc0F5T2doUXRtcSI7fQ==', 1624346750);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Long Pham', 'longpn.net@gmail.com', NULL, '$2y$10$rvFGsrSsJCklOryEHowCGeehjhhI3T7WlujvP4BtZ7UiJXyzOP94O', NULL, NULL, 'koIGjwFzxuNJpmEWU1RvdISVhgbg1tXYu6kRVcchFWBLAtKtRCTLVAj0mpHc', NULL, NULL, '2021-06-16 06:38:11', '2021-06-16 06:38:11'),
(2, 'Ngoc Long', 'longnguyen5564@gmail.com', NULL, '$2y$10$VAvTRDueRDje5G7KkYXH/.wY5em4SXphGsMBRa6Gu8n2uwUXbq82m', NULL, NULL, 'bX5wO4YMAqx4eowAobqtHaK7hRj5X8PzfiwPtymG2Ears7kALlOemQSvtaps', NULL, NULL, '2021-06-18 22:06:57', '2021-06-18 22:06:57'),
(3, 'NoName', 'sanj68@yahoo.com', NULL, '$2y$10$YB5rGLVkCJ5F6PtfpgbaHuPWO62Oprw.2D9y3qn8VQnPoqOD/NEJW', NULL, NULL, NULL, NULL, NULL, '2021-06-18 22:54:40', '2021-06-18 22:54:40'),
(4, 'Thoai', 'tranthanhthoai260901@gmail.com', NULL, '$2y$10$rH73E9whJaqupTMOZILb1OJkQ27tuKjc5zk1yE3srIJPf4s29p.HG', NULL, NULL, NULL, NULL, NULL, '2021-06-18 22:56:56', '2021-06-18 22:56:56'),
(5, 'Tai', 'taicv@gmail.com', NULL, '$2y$10$eUbGYsPX995r.fKal/o3eOD9mtLNBG6cg54xuUXW/4iK8KErB0RPC', NULL, NULL, NULL, NULL, NULL, '2021-06-21 21:52:18', '2021-06-21 21:52:18'),
(6, 'Long', 'longpham@gmail.com', NULL, '$2y$10$P42.Qzlxc90ZTY.ONwBqlOMhWbQOtPiBJDgyXODuLUQsAyOghQtmq', NULL, NULL, NULL, NULL, NULL, '2021-06-21 23:14:59', '2021-06-21 23:14:59');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
