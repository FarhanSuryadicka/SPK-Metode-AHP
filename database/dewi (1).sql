-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2024 at 05:41 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dewi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_alternatif`
--

CREATE TABLE `tb_alternatif` (
  `kode_alternatif` varchar(16) NOT NULL,
  `nama_alternatif` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `rank` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_alternatif`
--

INSERT INTO `tb_alternatif` (`kode_alternatif`, `nama_alternatif`, `keterangan`, `total`, `rank`) VALUES
('A2', 'Get Srinita Sari, S.Pd', '', 0.24713989933692, 2),
('A1', 'Esti Elsawati, S.Pd', '', 0.265047790015, 1),
('A3', 'Putri Indah, S.Pd', '', 0.18052222272466, 4),
('A4', 'Rio Redno, S.Pd', '', 0.18774885298991, 3),
('A5', 'Hilda Yuniar, S.Kep.Ners', '', 0.11613990131264, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `kode_kriteria` varchar(16) NOT NULL,
  `nama_kriteria` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`kode_kriteria`, `nama_kriteria`) VALUES
('C4', 'Komitmen'),
('C3', 'Tanggung Jawab'),
('C2', 'Kedisiplinan'),
('C5', 'Prestasi'),
('C1', 'Kerohanian');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_alternatif`
--

CREATE TABLE `tb_rel_alternatif` (
  `ID` int(11) NOT NULL,
  `kode_alternatif` varchar(255) DEFAULT NULL,
  `kode_kriteria` varchar(255) DEFAULT NULL,
  `kode_sub` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rel_alternatif`
--

INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `kode_sub`) VALUES
(56, 'A4', 'C5', 'C53'),
(55, 'A4', 'C4', 'C42'),
(54, 'A4', 'C3', 'C31'),
(41, 'A1', 'C5', 'C51'),
(40, 'A1', 'C4', 'C41'),
(39, 'A1', 'C3', 'C31'),
(38, 'A1', 'C2', 'C21'),
(53, 'A4', 'C2', 'C22'),
(46, 'A2', 'C5', 'C51'),
(45, 'A2', 'C4', 'C42'),
(44, 'A2', 'C3', 'C31'),
(43, 'A2', 'C2', 'C21'),
(52, 'A4', 'C1', 'C11'),
(51, 'A3', 'C5', 'C52'),
(50, 'A3', 'C4', 'C42'),
(49, 'A3', 'C3', 'C33'),
(48, 'A3', 'C2', 'C21'),
(47, 'A3', 'C1', 'C11'),
(42, 'A2', 'C1', 'C11'),
(37, 'A1', 'C1', 'C11'),
(57, 'A5', 'C1', 'C11'),
(58, 'A5', 'C2', 'C22'),
(59, 'A5', 'C3', 'C33'),
(60, 'A5', 'C4', 'C44'),
(61, 'A5', 'C5', 'C55');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_kriteria`
--

CREATE TABLE `tb_rel_kriteria` (
  `ID` int(11) NOT NULL,
  `ID1` varchar(16) DEFAULT NULL,
  `ID2` varchar(16) DEFAULT NULL,
  `nilai` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rel_kriteria`
--

INSERT INTO `tb_rel_kriteria` (`ID`, `ID1`, `ID2`, `nilai`) VALUES
(79, 'C3', 'C4', 2),
(78, 'C2', 'C4', 3),
(72, 'C2', 'C3', 2),
(73, 'C4', 'C1', 0.25),
(77, 'C1', 'C4', 4),
(71, 'C1', 'C3', 1),
(67, 'C1', 'C2', 2),
(76, 'C4', 'C4', 1),
(70, 'C3', 'C3', 1),
(88, 'C4', 'C5', 2),
(87, 'C3', 'C5', 3),
(86, 'C2', 'C5', 4),
(85, 'C1', 'C5', 5),
(84, 'C5', 'C5', 1),
(83, 'C5', 'C4', 0.5),
(82, 'C5', 'C3', 0.333333333),
(50, 'C1', 'C1', 1),
(81, 'C5', 'C2', 0.25),
(75, 'C4', 'C3', 0.5),
(69, 'C3', 'C2', 0.5),
(66, 'C2', 'C2', 1),
(80, 'C5', 'C1', 0.2),
(74, 'C4', 'C2', 0.333333333),
(68, 'C3', 'C1', 1),
(65, 'C2', 'C1', 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_sub`
--

CREATE TABLE `tb_rel_sub` (
  `ID` int(11) NOT NULL,
  `ID1` varchar(255) DEFAULT NULL,
  `ID2` varchar(255) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  `bobot` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rel_sub`
--

INSERT INTO `tb_rel_sub` (`ID`, `ID1`, `ID2`, `nilai`, `bobot`) VALUES
(522, 'C23', 'C24', 4, NULL),
(521, 'C22', 'C24', 4, NULL),
(520, 'C21', 'C24', 3, NULL),
(519, 'C15', 'C24', 1, NULL),
(518, 'C14', 'C24', 1, NULL),
(517, 'C13', 'C24', 1, NULL),
(516, 'C12', 'C24', 1, NULL),
(515, 'C11', 'C24', 1, NULL),
(514, 'C24', 'C24', 1, NULL),
(513, 'C24', 'C23', 0.25, NULL),
(512, 'C24', 'C22', 0.25, NULL),
(511, 'C24', 'C21', 0.333333333, NULL),
(477, 'C21', 'C15', 1, NULL),
(510, 'C24', 'C15', 1, NULL),
(509, 'C24', 'C14', 1, NULL),
(508, 'C24', 'C13', 1, NULL),
(507, 'C24', 'C12', 1, NULL),
(506, 'C24', 'C11', 1, NULL),
(505, 'C22', 'C23', 3, NULL),
(476, 'C14', 'C15', 3, NULL),
(475, 'C13', 'C15', 4, NULL),
(504, 'C21', 'C23', 4, NULL),
(503, 'C15', 'C23', 1, NULL),
(502, 'C14', 'C23', 1, NULL),
(474, 'C12', 'C15', 2, NULL),
(501, 'C13', 'C23', 1, NULL),
(500, 'C12', 'C23', 1, NULL),
(499, 'C11', 'C23', 1, NULL),
(473, 'C11', 'C15', 3, NULL),
(472, 'C15', 'C21', 1, NULL),
(471, 'C15', 'C15', 1, NULL),
(541, 'C24', 'C25', 4, NULL),
(498, 'C23', 'C23', 1, NULL),
(497, 'C23', 'C22', 0.333333333, NULL),
(496, 'C23', 'C21', 0.25, NULL),
(470, 'C15', 'C14', 0.333333333, NULL),
(469, 'C15', 'C13', 0.25, NULL),
(540, 'C23', 'C25', 3, NULL),
(539, 'C22', 'C25', 3, NULL),
(538, 'C21', 'C25', 3, NULL),
(495, 'C23', 'C15', 1, NULL),
(494, 'C23', 'C14', 1, NULL),
(493, 'C23', 'C13', 1, NULL),
(468, 'C15', 'C12', 0.5, NULL),
(467, 'C15', 'C11', 0.333333333, NULL),
(466, 'C21', 'C14', 1, NULL),
(450, 'C21', 'C12', 1, NULL),
(537, 'C15', 'C25', 1, NULL),
(536, 'C14', 'C25', 1, NULL),
(535, 'C13', 'C25', 1, NULL),
(492, 'C23', 'C12', 1, NULL),
(491, 'C23', 'C11', 1, NULL),
(490, 'C21', 'C22', 3, NULL),
(465, 'C13', 'C14', 4, NULL),
(464, 'C12', 'C14', 3, NULL),
(463, 'C11', 'C14', 4, NULL),
(534, 'C12', 'C25', 1, NULL),
(533, 'C11', 'C25', 1, NULL),
(532, 'C25', 'C25', 1, NULL),
(489, 'C15', 'C22', 1, NULL),
(488, 'C14', 'C22', 1, NULL),
(487, 'C13', 'C22', 1, NULL),
(462, 'C14', 'C21', 1, NULL),
(461, 'C14', 'C14', 1, NULL),
(460, 'C14', 'C13', 0.25, NULL),
(449, 'C11', 'C12', 4, NULL),
(448, 'C12', 'C21', 1, NULL),
(531, 'C25', 'C24', 0.25, NULL),
(530, 'C25', 'C23', 0.333333333, NULL),
(529, 'C25', 'C22', 0.333333333, NULL),
(486, 'C12', 'C22', 1, NULL),
(485, 'C11', 'C22', 1, NULL),
(484, 'C22', 'C22', 1, NULL),
(459, 'C14', 'C12', 0.333333333, NULL),
(458, 'C14', 'C11', 0.25, NULL),
(457, 'C21', 'C13', 1, NULL),
(447, 'C12', 'C12', 1, NULL),
(528, 'C25', 'C21', 0.333333333, NULL),
(527, 'C25', 'C15', 1, NULL),
(526, 'C25', 'C14', 1, NULL),
(483, 'C22', 'C21', 0.333333333, NULL),
(482, 'C22', 'C15', 1, NULL),
(481, 'C22', 'C14', 1, NULL),
(456, 'C12', 'C13', 4, NULL),
(455, 'C11', 'C13', 3, NULL),
(454, 'C13', 'C21', 1, NULL),
(446, 'C12', 'C11', 0.25, NULL),
(445, 'C11', 'C21', 1, NULL),
(444, 'C21', 'C21', 1, NULL),
(525, 'C25', 'C13', 1, NULL),
(524, 'C25', 'C12', 1, NULL),
(523, 'C25', 'C11', 1, NULL),
(480, 'C22', 'C13', 1, NULL),
(479, 'C22', 'C12', 1, NULL),
(478, 'C22', 'C11', 1, NULL),
(453, 'C13', 'C13', 1, NULL),
(452, 'C13', 'C12', 0.25, NULL),
(451, 'C13', 'C11', 0.333333333, NULL),
(443, 'C21', 'C11', 1, NULL),
(442, 'C11', 'C11', 1, NULL),
(542, 'C31', 'C11', 1, NULL),
(543, 'C31', 'C12', 1, NULL),
(544, 'C31', 'C13', 1, NULL),
(545, 'C31', 'C14', 1, NULL),
(546, 'C31', 'C15', 1, NULL),
(547, 'C31', 'C21', 1, NULL),
(548, 'C31', 'C22', 1, NULL),
(549, 'C31', 'C23', 1, NULL),
(550, 'C31', 'C24', 1, NULL),
(551, 'C31', 'C25', 1, NULL),
(552, 'C31', 'C31', 1, NULL),
(553, 'C11', 'C31', 1, NULL),
(554, 'C12', 'C31', 1, NULL),
(555, 'C13', 'C31', 1, NULL),
(556, 'C14', 'C31', 1, NULL),
(557, 'C15', 'C31', 1, NULL),
(558, 'C21', 'C31', 1, NULL),
(559, 'C22', 'C31', 1, NULL),
(560, 'C23', 'C31', 1, NULL),
(561, 'C24', 'C31', 1, NULL),
(562, 'C25', 'C31', 1, NULL),
(563, 'C32', 'C11', 1, NULL),
(564, 'C32', 'C12', 1, NULL),
(565, 'C32', 'C13', 1, NULL),
(566, 'C32', 'C14', 1, NULL),
(567, 'C32', 'C15', 1, NULL),
(568, 'C32', 'C21', 1, NULL),
(569, 'C32', 'C22', 1, NULL),
(570, 'C32', 'C23', 1, NULL),
(571, 'C32', 'C24', 1, NULL),
(572, 'C32', 'C25', 1, NULL),
(573, 'C32', 'C31', 0.333333333, NULL),
(574, 'C32', 'C32', 1, NULL),
(575, 'C11', 'C32', 1, NULL),
(576, 'C12', 'C32', 1, NULL),
(577, 'C13', 'C32', 1, NULL),
(578, 'C14', 'C32', 1, NULL),
(579, 'C15', 'C32', 1, NULL),
(580, 'C21', 'C32', 1, NULL),
(581, 'C22', 'C32', 1, NULL),
(582, 'C23', 'C32', 1, NULL),
(583, 'C24', 'C32', 1, NULL),
(584, 'C25', 'C32', 1, NULL),
(585, 'C31', 'C32', 3, NULL),
(586, 'C33', 'C11', 1, NULL),
(587, 'C33', 'C12', 1, NULL),
(588, 'C33', 'C13', 1, NULL),
(589, 'C33', 'C14', 1, NULL),
(590, 'C33', 'C15', 1, NULL),
(591, 'C33', 'C21', 1, NULL),
(592, 'C33', 'C22', 1, NULL),
(593, 'C33', 'C23', 1, NULL),
(594, 'C33', 'C24', 1, NULL),
(595, 'C33', 'C25', 1, NULL),
(596, 'C33', 'C31', 0.25, NULL),
(597, 'C33', 'C32', 0.25, NULL),
(598, 'C33', 'C33', 1, NULL),
(599, 'C11', 'C33', 1, NULL),
(600, 'C12', 'C33', 1, NULL),
(601, 'C13', 'C33', 1, NULL),
(602, 'C14', 'C33', 1, NULL),
(603, 'C15', 'C33', 1, NULL),
(604, 'C21', 'C33', 1, NULL),
(605, 'C22', 'C33', 1, NULL),
(606, 'C23', 'C33', 1, NULL),
(607, 'C24', 'C33', 1, NULL),
(608, 'C25', 'C33', 1, NULL),
(609, 'C31', 'C33', 4, NULL),
(610, 'C32', 'C33', 4, NULL),
(611, 'C34', 'C11', 1, NULL),
(612, 'C34', 'C12', 1, NULL),
(613, 'C34', 'C13', 1, NULL),
(614, 'C34', 'C14', 1, NULL),
(615, 'C34', 'C15', 1, NULL),
(616, 'C34', 'C21', 1, NULL),
(617, 'C34', 'C22', 1, NULL),
(618, 'C34', 'C23', 1, NULL),
(619, 'C34', 'C24', 1, NULL),
(620, 'C34', 'C25', 1, NULL),
(621, 'C34', 'C31', 0.25, NULL),
(622, 'C34', 'C32', 0.25, NULL),
(623, 'C34', 'C33', 0.333333333, NULL),
(624, 'C34', 'C34', 1, NULL),
(625, 'C11', 'C34', 1, NULL),
(626, 'C12', 'C34', 1, NULL),
(627, 'C13', 'C34', 1, NULL),
(628, 'C14', 'C34', 1, NULL),
(629, 'C15', 'C34', 1, NULL),
(630, 'C21', 'C34', 1, NULL),
(631, 'C22', 'C34', 1, NULL),
(632, 'C23', 'C34', 1, NULL),
(633, 'C24', 'C34', 1, NULL),
(634, 'C25', 'C34', 1, NULL),
(635, 'C31', 'C34', 4, NULL),
(636, 'C32', 'C34', 4, NULL),
(637, 'C33', 'C34', 3, NULL),
(638, 'C35', 'C11', 1, NULL),
(639, 'C35', 'C12', 1, NULL),
(640, 'C35', 'C13', 1, NULL),
(641, 'C35', 'C14', 1, NULL),
(642, 'C35', 'C15', 1, NULL),
(643, 'C35', 'C21', 1, NULL),
(644, 'C35', 'C22', 1, NULL),
(645, 'C35', 'C23', 1, NULL),
(646, 'C35', 'C24', 1, NULL),
(647, 'C35', 'C25', 1, NULL),
(648, 'C35', 'C31', 0.333333333, NULL),
(649, 'C35', 'C32', 0.25, NULL),
(650, 'C35', 'C33', 0.25, NULL),
(651, 'C35', 'C34', 0.333333333, NULL),
(652, 'C35', 'C35', 1, NULL),
(653, 'C11', 'C35', 1, NULL),
(654, 'C12', 'C35', 1, NULL),
(655, 'C13', 'C35', 1, NULL),
(656, 'C14', 'C35', 1, NULL),
(657, 'C15', 'C35', 1, NULL),
(658, 'C21', 'C35', 1, NULL),
(659, 'C22', 'C35', 1, NULL),
(660, 'C23', 'C35', 1, NULL),
(661, 'C24', 'C35', 1, NULL),
(662, 'C25', 'C35', 1, NULL),
(663, 'C31', 'C35', 3, NULL),
(664, 'C32', 'C35', 4, NULL),
(665, 'C33', 'C35', 4, NULL),
(666, 'C34', 'C35', 3, NULL),
(667, 'C41', 'C11', 1, NULL),
(668, 'C41', 'C12', 1, NULL),
(669, 'C41', 'C13', 1, NULL),
(670, 'C41', 'C14', 1, NULL),
(671, 'C41', 'C15', 1, NULL),
(672, 'C41', 'C21', 1, NULL),
(673, 'C41', 'C22', 1, NULL),
(674, 'C41', 'C23', 1, NULL),
(675, 'C41', 'C24', 1, NULL),
(676, 'C41', 'C25', 1, NULL),
(677, 'C41', 'C31', 1, NULL),
(678, 'C41', 'C32', 1, NULL),
(679, 'C41', 'C33', 1, NULL),
(680, 'C41', 'C34', 1, NULL),
(681, 'C41', 'C35', 1, NULL),
(682, 'C41', 'C41', 1, NULL),
(683, 'C11', 'C41', 1, NULL),
(684, 'C12', 'C41', 1, NULL),
(685, 'C13', 'C41', 1, NULL),
(686, 'C14', 'C41', 1, NULL),
(687, 'C15', 'C41', 1, NULL),
(688, 'C21', 'C41', 1, NULL),
(689, 'C22', 'C41', 1, NULL),
(690, 'C23', 'C41', 1, NULL),
(691, 'C24', 'C41', 1, NULL),
(692, 'C25', 'C41', 1, NULL),
(693, 'C31', 'C41', 1, NULL),
(694, 'C32', 'C41', 1, NULL),
(695, 'C33', 'C41', 1, NULL),
(696, 'C34', 'C41', 1, NULL),
(697, 'C35', 'C41', 1, NULL),
(698, 'C42', 'C11', 1, NULL),
(699, 'C42', 'C12', 1, NULL),
(700, 'C42', 'C13', 1, NULL),
(701, 'C42', 'C14', 1, NULL),
(702, 'C42', 'C15', 1, NULL),
(703, 'C42', 'C21', 1, NULL),
(704, 'C42', 'C22', 1, NULL),
(705, 'C42', 'C23', 1, NULL),
(706, 'C42', 'C24', 1, NULL),
(707, 'C42', 'C25', 1, NULL),
(708, 'C42', 'C31', 1, NULL),
(709, 'C42', 'C32', 1, NULL),
(710, 'C42', 'C33', 1, NULL),
(711, 'C42', 'C34', 1, NULL),
(712, 'C42', 'C35', 1, NULL),
(713, 'C42', 'C41', 0.25, NULL),
(714, 'C42', 'C42', 1, NULL),
(715, 'C11', 'C42', 1, NULL),
(716, 'C12', 'C42', 1, NULL),
(717, 'C13', 'C42', 1, NULL),
(718, 'C14', 'C42', 1, NULL),
(719, 'C15', 'C42', 1, NULL),
(720, 'C21', 'C42', 1, NULL),
(721, 'C22', 'C42', 1, NULL),
(722, 'C23', 'C42', 1, NULL),
(723, 'C24', 'C42', 1, NULL),
(724, 'C25', 'C42', 1, NULL),
(725, 'C31', 'C42', 1, NULL),
(726, 'C32', 'C42', 1, NULL),
(727, 'C33', 'C42', 1, NULL),
(728, 'C34', 'C42', 1, NULL),
(729, 'C35', 'C42', 1, NULL),
(730, 'C41', 'C42', 4, NULL),
(731, 'C43', 'C11', 1, NULL),
(732, 'C43', 'C12', 1, NULL),
(733, 'C43', 'C13', 1, NULL),
(734, 'C43', 'C14', 1, NULL),
(735, 'C43', 'C15', 1, NULL),
(736, 'C43', 'C21', 1, NULL),
(737, 'C43', 'C22', 1, NULL),
(738, 'C43', 'C23', 1, NULL),
(739, 'C43', 'C24', 1, NULL),
(740, 'C43', 'C25', 1, NULL),
(741, 'C43', 'C31', 1, NULL),
(742, 'C43', 'C32', 1, NULL),
(743, 'C43', 'C33', 1, NULL),
(744, 'C43', 'C34', 1, NULL),
(745, 'C43', 'C35', 1, NULL),
(746, 'C43', 'C41', 0.25, NULL),
(747, 'C43', 'C42', 0.333333333, NULL),
(748, 'C43', 'C43', 1, NULL),
(749, 'C11', 'C43', 1, NULL),
(750, 'C12', 'C43', 1, NULL),
(751, 'C13', 'C43', 1, NULL),
(752, 'C14', 'C43', 1, NULL),
(753, 'C15', 'C43', 1, NULL),
(754, 'C21', 'C43', 1, NULL),
(755, 'C22', 'C43', 1, NULL),
(756, 'C23', 'C43', 1, NULL),
(757, 'C24', 'C43', 1, NULL),
(758, 'C25', 'C43', 1, NULL),
(759, 'C31', 'C43', 1, NULL),
(760, 'C32', 'C43', 1, NULL),
(761, 'C33', 'C43', 1, NULL),
(762, 'C34', 'C43', 1, NULL),
(763, 'C35', 'C43', 1, NULL),
(764, 'C41', 'C43', 4, NULL),
(765, 'C42', 'C43', 3, NULL),
(766, 'C44', 'C11', 1, NULL),
(767, 'C44', 'C12', 1, NULL),
(768, 'C44', 'C13', 1, NULL),
(769, 'C44', 'C14', 1, NULL),
(770, 'C44', 'C15', 1, NULL),
(771, 'C44', 'C21', 1, NULL),
(772, 'C44', 'C22', 1, NULL),
(773, 'C44', 'C23', 1, NULL),
(774, 'C44', 'C24', 1, NULL),
(775, 'C44', 'C25', 1, NULL),
(776, 'C44', 'C31', 1, NULL),
(777, 'C44', 'C32', 1, NULL),
(778, 'C44', 'C33', 1, NULL),
(779, 'C44', 'C34', 1, NULL),
(780, 'C44', 'C35', 1, NULL),
(781, 'C44', 'C41', 0.333333333, NULL),
(782, 'C44', 'C42', 0.333333333, NULL),
(783, 'C44', 'C43', 0.25, NULL),
(784, 'C44', 'C44', 1, NULL),
(785, 'C11', 'C44', 1, NULL),
(786, 'C12', 'C44', 1, NULL),
(787, 'C13', 'C44', 1, NULL),
(788, 'C14', 'C44', 1, NULL),
(789, 'C15', 'C44', 1, NULL),
(790, 'C21', 'C44', 1, NULL),
(791, 'C22', 'C44', 1, NULL),
(792, 'C23', 'C44', 1, NULL),
(793, 'C24', 'C44', 1, NULL),
(794, 'C25', 'C44', 1, NULL),
(795, 'C31', 'C44', 1, NULL),
(796, 'C32', 'C44', 1, NULL),
(797, 'C33', 'C44', 1, NULL),
(798, 'C34', 'C44', 1, NULL),
(799, 'C35', 'C44', 1, NULL),
(800, 'C41', 'C44', 3, NULL),
(801, 'C42', 'C44', 3, NULL),
(802, 'C43', 'C44', 4, NULL),
(803, 'C45', 'C11', 1, NULL),
(804, 'C45', 'C12', 1, NULL),
(805, 'C45', 'C13', 1, NULL),
(806, 'C45', 'C14', 1, NULL),
(807, 'C45', 'C15', 1, NULL),
(808, 'C45', 'C21', 1, NULL),
(809, 'C45', 'C22', 1, NULL),
(810, 'C45', 'C23', 1, NULL),
(811, 'C45', 'C24', 1, NULL),
(812, 'C45', 'C25', 1, NULL),
(813, 'C45', 'C31', 1, NULL),
(814, 'C45', 'C32', 1, NULL),
(815, 'C45', 'C33', 1, NULL),
(816, 'C45', 'C34', 1, NULL),
(817, 'C45', 'C35', 1, NULL),
(818, 'C45', 'C41', 0.333333333, NULL),
(819, 'C45', 'C42', 0.25, NULL),
(820, 'C45', 'C43', 0.333333333, NULL),
(821, 'C45', 'C44', 0.333333333, NULL),
(822, 'C45', 'C45', 1, NULL),
(823, 'C11', 'C45', 1, NULL),
(824, 'C12', 'C45', 1, NULL),
(825, 'C13', 'C45', 1, NULL),
(826, 'C14', 'C45', 1, NULL),
(827, 'C15', 'C45', 1, NULL),
(828, 'C21', 'C45', 1, NULL),
(829, 'C22', 'C45', 1, NULL),
(830, 'C23', 'C45', 1, NULL),
(831, 'C24', 'C45', 1, NULL),
(832, 'C25', 'C45', 1, NULL),
(833, 'C31', 'C45', 1, NULL),
(834, 'C32', 'C45', 1, NULL),
(835, 'C33', 'C45', 1, NULL),
(836, 'C34', 'C45', 1, NULL),
(837, 'C35', 'C45', 1, NULL),
(838, 'C41', 'C45', 3, NULL),
(839, 'C42', 'C45', 4, NULL),
(840, 'C43', 'C45', 3, NULL),
(841, 'C44', 'C45', 3, NULL),
(842, 'C51', 'C11', 1, NULL),
(843, 'C51', 'C12', 1, NULL),
(844, 'C51', 'C13', 1, NULL),
(845, 'C51', 'C14', 1, NULL),
(846, 'C51', 'C15', 1, NULL),
(847, 'C51', 'C21', 1, NULL),
(848, 'C51', 'C22', 1, NULL),
(849, 'C51', 'C23', 1, NULL),
(850, 'C51', 'C24', 1, NULL),
(851, 'C51', 'C25', 1, NULL),
(852, 'C51', 'C31', 1, NULL),
(853, 'C51', 'C32', 1, NULL),
(854, 'C51', 'C33', 1, NULL),
(855, 'C51', 'C34', 1, NULL),
(856, 'C51', 'C35', 1, NULL),
(857, 'C51', 'C41', 1, NULL),
(858, 'C51', 'C42', 1, NULL),
(859, 'C51', 'C43', 1, NULL),
(860, 'C51', 'C44', 1, NULL),
(861, 'C51', 'C45', 1, NULL),
(862, 'C51', 'C51', 1, NULL),
(863, 'C11', 'C51', 1, NULL),
(864, 'C12', 'C51', 1, NULL),
(865, 'C13', 'C51', 1, NULL),
(866, 'C14', 'C51', 1, NULL),
(867, 'C15', 'C51', 1, NULL),
(868, 'C21', 'C51', 1, NULL),
(869, 'C22', 'C51', 1, NULL),
(870, 'C23', 'C51', 1, NULL),
(871, 'C24', 'C51', 1, NULL),
(872, 'C25', 'C51', 1, NULL),
(873, 'C31', 'C51', 1, NULL),
(874, 'C32', 'C51', 1, NULL),
(875, 'C33', 'C51', 1, NULL),
(876, 'C34', 'C51', 1, NULL),
(877, 'C35', 'C51', 1, NULL),
(878, 'C41', 'C51', 1, NULL),
(879, 'C42', 'C51', 1, NULL),
(880, 'C43', 'C51', 1, NULL),
(881, 'C44', 'C51', 1, NULL),
(882, 'C45', 'C51', 1, NULL),
(883, 'C52', 'C11', 1, NULL),
(884, 'C52', 'C12', 1, NULL),
(885, 'C52', 'C13', 1, NULL),
(886, 'C52', 'C14', 1, NULL),
(887, 'C52', 'C15', 1, NULL),
(888, 'C52', 'C21', 1, NULL),
(889, 'C52', 'C22', 1, NULL),
(890, 'C52', 'C23', 1, NULL),
(891, 'C52', 'C24', 1, NULL),
(892, 'C52', 'C25', 1, NULL),
(893, 'C52', 'C31', 1, NULL),
(894, 'C52', 'C32', 1, NULL),
(895, 'C52', 'C33', 1, NULL),
(896, 'C52', 'C34', 1, NULL),
(897, 'C52', 'C35', 1, NULL),
(898, 'C52', 'C41', 1, NULL),
(899, 'C52', 'C42', 1, NULL),
(900, 'C52', 'C43', 1, NULL),
(901, 'C52', 'C44', 1, NULL),
(902, 'C52', 'C45', 1, NULL),
(903, 'C52', 'C51', 0.25, NULL),
(904, 'C52', 'C52', 1, NULL),
(905, 'C11', 'C52', 1, NULL),
(906, 'C12', 'C52', 1, NULL),
(907, 'C13', 'C52', 1, NULL),
(908, 'C14', 'C52', 1, NULL),
(909, 'C15', 'C52', 1, NULL),
(910, 'C21', 'C52', 1, NULL),
(911, 'C22', 'C52', 1, NULL),
(912, 'C23', 'C52', 1, NULL),
(913, 'C24', 'C52', 1, NULL),
(914, 'C25', 'C52', 1, NULL),
(915, 'C31', 'C52', 1, NULL),
(916, 'C32', 'C52', 1, NULL),
(917, 'C33', 'C52', 1, NULL),
(918, 'C34', 'C52', 1, NULL),
(919, 'C35', 'C52', 1, NULL),
(920, 'C41', 'C52', 1, NULL),
(921, 'C42', 'C52', 1, NULL),
(922, 'C43', 'C52', 1, NULL),
(923, 'C44', 'C52', 1, NULL),
(924, 'C45', 'C52', 1, NULL),
(925, 'C51', 'C52', 4, NULL),
(926, 'C53', 'C11', 1, NULL),
(927, 'C53', 'C12', 1, NULL),
(928, 'C53', 'C13', 1, NULL),
(929, 'C53', 'C14', 1, NULL),
(930, 'C53', 'C15', 1, NULL),
(931, 'C53', 'C21', 1, NULL),
(932, 'C53', 'C22', 1, NULL),
(933, 'C53', 'C23', 1, NULL),
(934, 'C53', 'C24', 1, NULL),
(935, 'C53', 'C25', 1, NULL),
(936, 'C53', 'C31', 1, NULL),
(937, 'C53', 'C32', 1, NULL),
(938, 'C53', 'C33', 1, NULL),
(939, 'C53', 'C34', 1, NULL),
(940, 'C53', 'C35', 1, NULL),
(941, 'C53', 'C41', 1, NULL),
(942, 'C53', 'C42', 1, NULL),
(943, 'C53', 'C43', 1, NULL),
(944, 'C53', 'C44', 1, NULL),
(945, 'C53', 'C45', 1, NULL),
(946, 'C53', 'C51', 0.25, NULL),
(947, 'C53', 'C52', 0.333333333, NULL),
(948, 'C53', 'C53', 1, NULL),
(949, 'C11', 'C53', 1, NULL),
(950, 'C12', 'C53', 1, NULL),
(951, 'C13', 'C53', 1, NULL),
(952, 'C14', 'C53', 1, NULL),
(953, 'C15', 'C53', 1, NULL),
(954, 'C21', 'C53', 1, NULL),
(955, 'C22', 'C53', 1, NULL),
(956, 'C23', 'C53', 1, NULL),
(957, 'C24', 'C53', 1, NULL),
(958, 'C25', 'C53', 1, NULL),
(959, 'C31', 'C53', 1, NULL),
(960, 'C32', 'C53', 1, NULL),
(961, 'C33', 'C53', 1, NULL),
(962, 'C34', 'C53', 1, NULL),
(963, 'C35', 'C53', 1, NULL),
(964, 'C41', 'C53', 1, NULL),
(965, 'C42', 'C53', 1, NULL),
(966, 'C43', 'C53', 1, NULL),
(967, 'C44', 'C53', 1, NULL),
(968, 'C45', 'C53', 1, NULL),
(969, 'C51', 'C53', 4, NULL),
(970, 'C52', 'C53', 3, NULL),
(971, 'C54', 'C11', 1, NULL),
(972, 'C54', 'C12', 1, NULL),
(973, 'C54', 'C13', 1, NULL),
(974, 'C54', 'C14', 1, NULL),
(975, 'C54', 'C15', 1, NULL),
(976, 'C54', 'C21', 1, NULL),
(977, 'C54', 'C22', 1, NULL),
(978, 'C54', 'C23', 1, NULL),
(979, 'C54', 'C24', 1, NULL),
(980, 'C54', 'C25', 1, NULL),
(981, 'C54', 'C31', 1, NULL),
(982, 'C54', 'C32', 1, NULL),
(983, 'C54', 'C33', 1, NULL),
(984, 'C54', 'C34', 1, NULL),
(985, 'C54', 'C35', 1, NULL),
(986, 'C54', 'C41', 1, NULL),
(987, 'C54', 'C42', 1, NULL),
(988, 'C54', 'C43', 1, NULL),
(989, 'C54', 'C44', 1, NULL),
(990, 'C54', 'C45', 1, NULL),
(991, 'C54', 'C51', 0.25, NULL),
(992, 'C54', 'C52', 0.333333333, NULL),
(993, 'C54', 'C53', 0.333333333, NULL),
(994, 'C54', 'C54', 1, NULL),
(995, 'C11', 'C54', 1, NULL),
(996, 'C12', 'C54', 1, NULL),
(997, 'C13', 'C54', 1, NULL),
(998, 'C14', 'C54', 1, NULL),
(999, 'C15', 'C54', 1, NULL),
(1000, 'C21', 'C54', 1, NULL),
(1001, 'C22', 'C54', 1, NULL),
(1002, 'C23', 'C54', 1, NULL),
(1003, 'C24', 'C54', 1, NULL),
(1004, 'C25', 'C54', 1, NULL),
(1005, 'C31', 'C54', 1, NULL),
(1006, 'C32', 'C54', 1, NULL),
(1007, 'C33', 'C54', 1, NULL),
(1008, 'C34', 'C54', 1, NULL),
(1009, 'C35', 'C54', 1, NULL),
(1010, 'C41', 'C54', 1, NULL),
(1011, 'C42', 'C54', 1, NULL),
(1012, 'C43', 'C54', 1, NULL),
(1013, 'C44', 'C54', 1, NULL),
(1014, 'C45', 'C54', 1, NULL),
(1015, 'C51', 'C54', 4, NULL),
(1016, 'C52', 'C54', 3, NULL),
(1017, 'C53', 'C54', 3, NULL),
(1018, 'C55', 'C11', 1, NULL),
(1019, 'C55', 'C12', 1, NULL),
(1020, 'C55', 'C13', 1, NULL),
(1021, 'C55', 'C14', 1, NULL),
(1022, 'C55', 'C15', 1, NULL),
(1023, 'C55', 'C21', 1, NULL),
(1024, 'C55', 'C22', 1, NULL),
(1025, 'C55', 'C23', 1, NULL),
(1026, 'C55', 'C24', 1, NULL),
(1027, 'C55', 'C25', 1, NULL),
(1028, 'C55', 'C31', 1, NULL),
(1029, 'C55', 'C32', 1, NULL),
(1030, 'C55', 'C33', 1, NULL),
(1031, 'C55', 'C34', 1, NULL),
(1032, 'C55', 'C35', 1, NULL),
(1033, 'C55', 'C41', 1, NULL),
(1034, 'C55', 'C42', 1, NULL),
(1035, 'C55', 'C43', 1, NULL),
(1036, 'C55', 'C44', 1, NULL),
(1037, 'C55', 'C45', 1, NULL),
(1038, 'C55', 'C51', 0.25, NULL),
(1039, 'C55', 'C52', 0.25, NULL),
(1040, 'C55', 'C53', 0.333333333, NULL),
(1041, 'C55', 'C54', 0.25, NULL),
(1042, 'C55', 'C55', 1, NULL),
(1043, 'C11', 'C55', 1, NULL),
(1044, 'C12', 'C55', 1, NULL),
(1045, 'C13', 'C55', 1, NULL),
(1046, 'C14', 'C55', 1, NULL),
(1047, 'C15', 'C55', 1, NULL),
(1048, 'C21', 'C55', 1, NULL),
(1049, 'C22', 'C55', 1, NULL),
(1050, 'C23', 'C55', 1, NULL),
(1051, 'C24', 'C55', 1, NULL),
(1052, 'C25', 'C55', 1, NULL),
(1053, 'C31', 'C55', 1, NULL),
(1054, 'C32', 'C55', 1, NULL),
(1055, 'C33', 'C55', 1, NULL),
(1056, 'C34', 'C55', 1, NULL),
(1057, 'C35', 'C55', 1, NULL),
(1058, 'C41', 'C55', 1, NULL),
(1059, 'C42', 'C55', 1, NULL),
(1060, 'C43', 'C55', 1, NULL),
(1061, 'C44', 'C55', 1, NULL),
(1062, 'C45', 'C55', 1, NULL),
(1063, 'C51', 'C55', 4, NULL),
(1064, 'C52', 'C55', 4, NULL),
(1065, 'C53', 'C55', 3, NULL),
(1066, 'C54', 'C55', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_sub`
--

CREATE TABLE `tb_sub` (
  `kode_sub` varchar(255) NOT NULL,
  `kode_kriteria` varchar(255) DEFAULT NULL,
  `nama_sub` varchar(255) DEFAULT NULL,
  `nilai_sub` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sub`
--

INSERT INTO `tb_sub` (`kode_sub`, `kode_kriteria`, `nama_sub`, `nilai_sub`) VALUES
('C11', 'C1', 'Sangat Baik', 0.40542148797295),
('C12', 'C1', 'Baik', 0.22948916189261),
('C13', 'C1', 'Kurang Baik', 0.18892114700036),
('C14', 'C1', 'Tidak Baik', 0.10228824249493),
('C15', 'C1', 'Sangat Tidak Baik', 0.073879960639151),
('C21', 'C2', 'Sangat Baik', 0.39596340544267),
('C22', 'C2', 'Baik', 0.24837377365058),
('C23', 'C2', 'Kurang Baik', 0.16724578043509),
('C24', 'C2', 'Tidak Baik', 0.11909375161375),
('C25', 'C2', 'Sangat Tidak Baik', 0.069323288857919),
('C31', 'C3', 'Sangat Baik', 0.40696660754887),
('C32', 'C3', 'Baik', 0.27455095297824),
('C33', 'C3', 'Kurang Baik', 0.15645478607491),
('C34', 'C3', 'Tidak Baik', 0.096775976822568),
('C35', 'C3', 'Sangat Tidak Baik', 0.065251676575411),
('C41', 'C4', 'Sangat Baik', 0.41652116278502),
('C42', 'C4', 'sangat baik', 0.23686668622832),
('C43', 'C4', 'Kurang Baik', 0.17109087773586),
('C44', 'C4', 'Tidak Baik', 0.1083662807716),
('C45', 'C4', 'Sangat Tidak Baik', 0.067154992479211),
('C51', 'C5', 'Sangat Baik', 0.44863007104677),
('C52', 'C5', 'Baik', 0.23136691947465),
('C53', 'C5', 'Kurang Baik', 0.15017786203584),
('C54', 'C5', 'Tidak Baik', 0.11173769108679),
('C55', 'C5', ' Sangat Tidak Baik', 0.058087456355956);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `kode_user` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`kode_user`, `user`, `pass`, `nama_user`, `level`) VALUES
('A1', 'admin', 'admin', 'administrator', 'admin'),
('U001', 'dewi', '26112002', 'DEWI RAMADANI', 'user'),
('U002', 'farhan', 'farhan', 'farhan', 'admin'),
('U003', 'admin2', 'admin2', 'prahasti', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_alternatif`
--
ALTER TABLE `tb_alternatif`
  ADD PRIMARY KEY (`kode_alternatif`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`kode_kriteria`);

--
-- Indexes for table `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_rel_kriteria`
--
ALTER TABLE `tb_rel_kriteria`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_rel_sub`
--
ALTER TABLE `tb_rel_sub`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_sub`
--
ALTER TABLE `tb_sub`
  ADD PRIMARY KEY (`kode_sub`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `tb_rel_kriteria`
--
ALTER TABLE `tb_rel_kriteria`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `tb_rel_sub`
--
ALTER TABLE `tb_rel_sub`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1599;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
