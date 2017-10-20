# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Reset
CompetencyUnit.destroy_all
CertificationScheme.destroy_all

# Certification Scheme
certification_scheme_programmer = CertificationScheme.create(
  code: 'FR.SKEMA-01',
  name: 'Programmer',
  scheme_type: 'occupation',
  certification_fee: 1_200_000,
  description: 'Skema ini ditetapkan dengan tujuan untuk menghasilkan SDM Teknologi Informasi dan Komunikasi (TIK) yang kompeten di bidang Pemrograman Komputer. skema mengacu pada Standar Kompetensi Kerja Nasional Indonesia (SKKNI) Bidang Keahlian Programmer Komputer berdasarkan Keputusan Menteri Ketenagakerjaan Republik Indonesia Nomor 615 Tahun 2012 tanggal 27 September 2012.'
)
certification_scheme_network_administrator = CertificationScheme.create(
  code: 'FR.SKEMA-02',
  name: 'Network Administrator',
  scheme_type: 'cluster',
  certification_fee: 1_450_000,
  description: 'Skema ini ditetapkan dengan tujuan untuk menghasilkan SDM Teknologi Informasi dan Komunikasi (TIK) yang kompeten di bidang Jaringan Komputer dan Sistem Administrasi. skema mengacu pada Standar Kompetensi Kerja Nasional Indonesia (SKKNI) Sektor Komunikasi dan Informasi Sub Sektor Telematika Bidang Jaringan Komputer dan Sistem Administrasi berdasarkan Keputusan Menteri Ketenagakerjaan Republik Indonesia Nomor 269 Tahun 2006 tanggal 10 Juli 2006.'
)

# Competency Unit
CompetencyUnit.create(
  code: 'TIK.PR02.003.01',
  name: 'Menggunakan spesifikasi program',
  certification_scheme: certification_scheme_programmer,
  display_order: 1
)
CompetencyUnit.create(
  code: 'TIK.PR02.004.01',
  name: 'Menulis program',
  certification_scheme: certification_scheme_programmer,
  display_order: 2
)
CompetencyUnit.create(
  code: 'TIK.PR02.006.01',
  name: 'Menerapkan bahasa pemrograman terstruktur',
  certification_scheme: certification_scheme_programmer,
  display_order: 3
)
CompetencyUnit.create(
  code: 'TIK.PR02.007.01',
  name: 'Menerapkan bahasa pemrograman berorientasi objek',
  certification_scheme: certification_scheme_programmer,
  display_order: 4
)
CompetencyUnit.create(
  code: 'TIK.PR02.008.01',
  name: 'Menggunakan library atau komponen pre-existing',
  certification_scheme: certification_scheme_programmer,
  display_order: 5
)
CompetencyUnit.create(
  code: 'TIK.PR02.009.01',
  name: 'Melakukan debugging program',
  certification_scheme: certification_scheme_programmer,
  display_order: 6
)
CompetencyUnit.create(
  code: 'TIK.PR02.012.01',
  name: 'Membuat dokumen kode program',
  certification_scheme: certification_scheme_programmer,
  display_order: 7
)
CompetencyUnit.create(
  code: 'TIK.PR03.003.01',
  name: 'Membuat program untuk akses basis data',
  certification_scheme: certification_scheme_programmer,
  display_order: 8
)
CompetencyUnit.create(
  code: 'TIK.JK02.002.01',
  name: 'Membuat disain jaringan berbasis luas (WAN)',
  certification_scheme: certification_scheme_network_administrator,
  display_order: 1
)
CompetencyUnit.create(
  code: 'TIK.JK02.004.01',
  name: 'Mendisain sistem keamanan jaringan',
  certification_scheme: certification_scheme_network_administrator,
  display_order: 2
)
CompetencyUnit.create(
  code: 'TIK.JK02.010.01',
  name: 'Menginstal dan mengkonfigurasi static routing pada router',
  certification_scheme: certification_scheme_network_administrator,
  display_order: 3
)
CompetencyUnit.create(
  code: 'TIK.JK02.011.01',
  name: 'Menginstal dan mengkonfigurasi dynamic routing pada router',
  certification_scheme: certification_scheme_network_administrator,
  display_order: 4
)
CompetencyUnit.create(
  code: 'TIK.JK02.014.01',
  name: 'Menginstalasi dan mengkonfigurasi TCP/IP statis pada workstation yang terhubung pada jaringan',
  certification_scheme: certification_scheme_network_administrator,
  display_order: 5
)
CompetencyUnit.create(
  code: 'TIK.JK02.015.01',
  name: 'Menginstalasi dan mengkonfigurasi TCP/IP dinamis pada workstation yang terhubung pada jaringan',
  certification_scheme: certification_scheme_network_administrator,
  display_order: 6
)
CompetencyUnit.create(
  code: 'TIK.JK05.011.01',
  name: 'Memonitor dan mengadministrasi keamanan jaringan',
  certification_scheme: certification_scheme_network_administrator,
  display_order: 7
)
