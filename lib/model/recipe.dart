class Recipe {
  final String name;
  final String description;
  final String place;
  final List<Map<String, String>> ingredients;
  final int timeMinutes;
  final int calories;
  final String imageAsset;
  final List<String> cookingSteps;

  Recipe({
    required this.name,
    required this.description,
    required this.place,
    required this.ingredients,
    required this.timeMinutes,
    required this.calories,
    required this.imageAsset,
    required this.cookingSteps,
  });
}

var recipes = [
  Recipe(
    name: 'Nasi Goreng Spesial',
    description: 'Nasi goreng khas Indonesia dengan bumbu rempah pilihan.',
    place: 'Indonesia',
    ingredients: [
      {'name': 'Nasi', 'emoji': '🍚'},
      {'name': 'Garam', 'emoji': '🧂'},
      {'name': 'Kecap', 'emoji': '🍾'},
      {'name': 'Telur', 'emoji': '🥚'},
      {'name': 'Bawang Merah', 'emoji': '🧅'},
      {'name': 'Bawang Putih', 'emoji': '🧄'},
    ],
    timeMinutes: 20,
    calories: 120,
    imageAsset: 'images/nasgor-special.jpg', // Contoh placeholder image
    cookingSteps: [
      'Siapkan nasi dingin (sebaiknya nasi kemarin) agar tekstur tidak lembek saat digoreng.',
      'Panaskan sedikit minyak, tumis bawang merah dan bawang putih hingga harum dan matang.',
      'Sisihkan bumbu di pinggir wajan, masukkan telur dan buat orak-arik matang.',
      'Masukkan nasi putih, besarkan api, lalu aduk cepat agar aroma asap keluar.',
      'Tambahkan kecap manis, garam, dan lada. Aduk rata hingga warna nasi seragam.',
      'Sajikan selagi hangat dengan taburan bawang goreng dan kerupuk.',
    ],
  ),
  Recipe(
    name: 'Sate Ayam Madura',
    description:
        'Sate ayam dengan bumbu kacang yang kental dan manis, dilengkapi dengan irisan bawang merah dan cabai rawit.',
    place: 'Madura',
    ingredients: [
      {'name': 'Ayam', 'emoji': '🍗'},
      {'name': 'Kacang', 'emoji': '🥜'},
      {'name': 'Kecap', 'emoji': '🍾'},
      {'name': 'Cabai', 'emoji': '🌶️'},
    ],
    timeMinutes: 45,
    calories: 380,
    imageAsset: 'images/sate-ayam.jpg',
    cookingSteps: [
      'Potong daging ayam bentuk dadu seragam, marinasi dengan air jeruk nipis dan sedikit garam.',
      'Tusuk daging dengan tusuk sate, sisihkan.',
      'Goreng kacang tanah, lalu haluskan bersama bawang putih dan gula merah hingga berminyak.',
      'Ambil sedikit bumbu kacang, campur dengan kecap manis untuk bahan olesan.',
      'Bakar sate di atas arang/grill pan, bolak-balik sambil diolesi bumbu hingga matang dan berasap.',
      'Sajikan sate dengan siraman bumbu kacang utama, kecap, dan irisan bawang merah.',
    ],
  ),
  Recipe(
    name: 'Soto Ayam Lamongan',
    description:
        'Soto ayam berkuah kuning bening dengan taburan koya udang yang gurih dan segar.',
    place: 'Lamongan',
    ingredients: [
      {'name': 'Ayam', 'emoji': '🍗'},
      {'name': 'Kol', 'emoji': '🥬'},
      {'name': 'Telur', 'emoji': '🥚'},
      {'name': 'Sohun', 'emoji': '🍜'},
      {'name': 'Kunyit', 'emoji': '🌿'},
      {'name': 'Jahe', 'emoji': '🫚'},
      {'name': 'Bawang', 'emoji': '🧅'},
    ],
    timeMinutes: 60,
    calories: 320,
    imageAsset: 'images/soto-ayam.jpg',
    cookingSteps: [
      'Rebus ayam dengan air dingin hingga mendidih, buang buih kotor yang mengapung agar kuah bening.',
      'Tumis bumbu halus (kunyit, jahe, bawang, kemiri) hingga tanak (berminyak), masukkan ke rebusan ayam.',
      'Tambahkan daun jeruk dan serai, masak hingga ayam empuk. Angkat ayam, lalu goreng sebentar dan suwir-suwir.',
      'Tata sohun, kol, dan ayam suwir di mangkuk.',
      'Siram dengan kuah panas, taburi koya yang banyak di atasnya.',
    ],
  ),
  Recipe(
    name: 'Rawon',
    description:
        'Sup daging sapi berkuah hitam pekat dari kluwek, memiliki rasa gurih dan aroma rempah yang kuat.',
    place: 'Surabaya',
    ingredients: [
      {'name': 'Daging Sapi', 'emoji': '🥩'},
      {'name': 'Bawang Merah', 'emoji': '🧅'},
      {'name': 'Bawang Putih', 'emoji': '🧄'},
      {'name': 'Lengkuas', 'emoji': '🫚'},
      {'name': 'Kluwek', 'emoji': '🧆'},
      {'name': 'Kemiri', 'emoji': '🌰'},
      {'name': 'Tauge', 'emoji': '🌱'},
    ],
    timeMinutes: 90,
    calories: 420,
    imageAsset: 'images/rawon.jpg',
    cookingSteps: [
      'Rebus daging sapi (metode 5-30-7 atau presto) hingga empuk, potong dadu, saring air kaldu.',
      'Keruk isi kluwek, cicipi (pastikan tidak pahit), lalu haluskan bersama bumbu lainnya.',
      'Tumis bumbu halus hingga benar-benar matang dan berubah warna lebih gelap.',
      'Masukkan bumbu ke dalam kuah kaldu daging, tambahkan lengkuas dan daun jeruk.',
      'Masak kembali dengan api kecil agar bumbu meresap sempurna ke dalam pori-pori daging.',
      'Sajikan panas dengan tauge pendek mentah, telur asin, dan sambal terasi.',
    ],
  ),
  Recipe(
    name: 'Bakso Malang',
    description:
        'Bola daging sapi kenyal disajikan dengan kuah kaldu hangat, pangsit goreng, tahu, dan mie kuning.',
    place: 'Malang',
    ingredients: [
      {'name': 'Daging Sapi', 'emoji': '🥩'},
      {'name': 'Tepung Tapioka', 'emoji': '🌾'},
      {'name': 'Mie Kuning', 'emoji': '🍜'},
      {'name': 'Es Batu', 'emoji': '🧊'},
      {'name': 'Kulit Pangsit', 'emoji': '🥟'},
      {'name': 'Tahu Putih', 'emoji': '🧈'},
      {'name': 'Bawang Goreng', 'emoji': '🧄'},
    ],
    timeMinutes: 60,
    calories: 380,
    imageAsset: 'images/bakso-malang.webp',
    cookingSteps: [
      'Giling daging sapi dengan es batu (penting agar tekstur kenyal) dan bawang putih goreng hingga halus.',
      'Campur adonan dengan tepung tapioka dan putih telur, aduk rata.',
      'Didihkan air, matikan api. Cetak bulat bakso, masukkan ke air panas hingga mengapung sendiri.',
      'Gunakan sisa adonan untuk isian tahu dan pangsit, lalu kukus tahu dan goreng pangsitnya.',
      'Sajikan bakso, tahu, dan pangsit dengan kuah kaldu sapi yang sudah dibumbui lada dan bawang putih.',
    ],
  ),
  Recipe(
    name: 'Ayam Betutu Bali',
    description:
        'Ayam utuh yang dibalut bumbu base genep khas Bali yang kaya rempah dan pedas, kemudian dipanggang.',
    place: 'Bali',
    ingredients: [
      {'name': 'Ayam', 'emoji': '🐓'},
      {'name': 'Cabai', 'emoji': '🌶️'},
      {'name': 'Jahe', 'emoji': '🫚'},
      {'name': 'Kunyit', 'emoji': '🌿'},
      {'name': 'Terasi', 'emoji': '🦐'},
      {'name': 'Daun Singkong', 'emoji': '🍀'},
      {'name': 'Bawang Merah', 'emoji': '🧅'},
      {'name': 'Bawang Putih', 'emoji': '🧄'},
    ],
    timeMinutes: 120,
    calories: 480,
    imageAsset: 'images/ayam-betutu.jpg',
    cookingSteps: [
      'Haluskan bumbu "Base Genep" (kunyit, jahe, kencur, lengkuas, bawang, cabai, terasi), tumis hingga harum.',
      'Bersihkan ayam utuh, lumuri seluruh permukaan dan bagian dalam rongga perut dengan bumbu.',
      'Rebus daun singkong setengah matang, campur dengan sedikit bumbu, masukkan ke dalam perut ayam.',
      'Bungkus ayam rapat dengan beberapa lapis daun pisang, kukus selama 1 jam hingga empuk.',
      'Bakar bungkusan ayam di atas bara api sebentar agar aroma daun pisang meresap ke daging.',
    ],
  ),
  Recipe(
    name: 'Mie Aceh',
    description:
        'Mie kuning tebal dengan bumbu kari yang pedas dan gurih, disajikan dengan daging sapi, kambing, atau seafood.',
    ingredients: [
      {'name': 'Mie Kuning', 'emoji': '🍜'},
      {'name': 'Daging Sapi', 'emoji': '🥩'},
      {'name': 'Bumbu Kari', 'emoji': '🍛'},
      {'name': 'Cabai Merah', 'emoji': '🌶️'},
      {'name': 'Bawang Merah', 'emoji': '🧅'},
      {'name': 'Bawang Putih', 'emoji': '🧄'},
      {'name': 'Tauge', 'emoji': '🌱'},
      {'name': 'Kol', 'emoji': '🥬'},
    ],
    place: 'Aceh',
    timeMinutes: 30,
    calories: 420,
    imageAsset: 'images/mie-aceh.jpg',
    cookingSteps: [
      'Tumis irisan bawang merah, lalu masukkan bumbu halus (cabai, bawang, jintan, kapulaga) hingga matang.',
      'Masukkan potongan daging sapi, aduk hingga berubah warna, tambahkan sedikit air agar daging empuk.',
      'Masukkan kol dan tauge, lalu tambahkan mie kuning basah.',
      'Tambahkan kecap manis dan kecap asin, aduk rata hingga kuah menyusut (nyemek).',
      'Sajikan dengan acar bawang merah, emping, dan irisan timun.',
    ],
  ),
  Recipe(
    name: 'Tongseng Kambing',
    description:
        'Olahan daging kambing berkuah santan mirip gulai namun dengan bumbu lebih tajam dan tambahan kecap serta kol.',
    place: 'Jawa Tengah',
    ingredients: [
      {'name': 'Daging Kambing', 'emoji': '🍖'},
      {'name': 'Kol', 'emoji': '🥬'},
      {'name': 'Tomat', 'emoji': '🍅'},
      {'name': 'Santan', 'emoji': '🥥'},
      {'name': 'Kecap Manis', 'emoji': '🍾'},
      {'name': 'Bumbu Gulai', 'emoji': '🍛'},
    ],
    timeMinutes: 50,
    calories: 480,
    imageAsset: 'images/tongseng-kambing.webp',
    cookingSteps: [
      'Tumis bumbu halus gulai bersama serai, daun salam, dan daun jeruk hingga harum.',
      'Masukkan potongan daging kambing, masak hingga kaku dan berubah warna.',
      'Tuang santan cair, masak dengan api sedang sambil diaduk agar santan tidak pecah hingga daging empuk.',
      'Tambahkan kecap manis, garam, dan lada. Koreksi rasa (harus manis gurih).',
      'Terakhir, masukkan potongan kol kasar dan tomat, masak sebentar saja agar sayuran tetap renyah.',
    ],
  ),
  Recipe(
    name: 'Bubur Manado',
    description:
        'Bubur beras yang dimasak dengan labu kuning, jagung, dan berbagai sayuran hijau, sehat dan gurih.',
    place: 'Manado',
    ingredients: [
      {'name': 'Beras', 'emoji': '🍚'},
      {'name': 'Labu Kuning', 'emoji': '🎃'},
      {'name': 'Jagung', 'emoji': '🌽'},
      {'name': 'Sayuran', 'emoji': '🥬'},
      {'name': 'Daun Kemangi', 'emoji': '🌿'},
      {'name': 'Ikan Asin', 'emoji': '🐟'},
    ],
    timeMinutes: 45,
    calories: 280,
    imageAsset: 'images/bubur-manado.jpg',
    cookingSteps: [
      'Cuci beras, masak dengan air berlebih bersama serai dan jagung pipil.',
      'Saat beras mulai mekar, masukkan potongan labu kuning dan ubi jalar (opsional).',
      'Masak terus hingga labu hancur dan mengentalkan bubur secara alami (tambahkan air jika terlalu padat).',
      'Masukkan sayuran hijau (kangkung, bayam) dan daun kemangi sesaat sebelum diangkat agar tetap hijau.',
      'Sajikan panas dengan pelengkap ikan asin jambal goreng dan sambal dabu-dabu atau sambal roa.',
    ],
  ),
  Recipe(
    name: 'Pepes Ikan Mas',
    description:
        'Ikan mas yang dibumbui rempah kuning, dibungkus daun pisang, lalu dikukus dan dibakar.',
    place: 'Jawa Barat',
    ingredients: [
      {'name': 'Ikan Mas', 'emoji': '🐠'},
      {'name': 'Daun Kemangi', 'emoji': '🌿'},
      {'name': 'Tomat', 'emoji': '🍅'},
      {'name': 'Daun Pisang', 'emoji': '🍃'},
      {'name': 'Kunyit', 'emoji': '🍠'},
      {'name': 'Jahe', 'emoji': '🫚'},
      {'name': 'Kemiri', 'emoji': '🌰'},
      {'name': 'Cabai Merah', 'emoji': '🌶️'},
    ],
    timeMinutes: 60,
    calories: 250,
    imageAsset: 'images/pepes-ikan.jpg',
    cookingSteps: [
      'Bersihkan ikan mas, buang isi perut, kerat-kerat badannya, dan lumuri air jeruk nipis.',
      'Haluskan bumbu kuning (kunyit, kemiri, bawang, cabai), campur dengan irisan tomat dan kemangi.',
      'Balurkan bumbu ke seluruh badan ikan hingga masuk ke dalam perut dan sela-sela keratan.',
      'Ambil daun pisang, tata ikan, tambahkan daun salam dan serai, bungkus memanjang dan sematkan lidi.',
      'Kukus selama 30 menit hingga matang, lalu bakar di atas arang hingga daun pisang kecoklatan.',
    ],
  ),
  Recipe(
    name: 'Gado-Gado',
    description:
        'Salad sayuran khas Indonesia dengan siraman bumbu kacang yang lembut, disajikan dengan lontong dan kerupuk.',
    place: 'Jakarta',
    ingredients: [
      {'name': 'Lontong / Ketupat', 'emoji': '💠'},
      {'name': 'Kacang Panjang', 'emoji': '🫛'},
      {'name': 'Bumbu Kacang', 'emoji': '🥜'},
      {'name': 'Tahu', 'emoji': '🧈'},
      {'name': 'Tempe', 'emoji': '🧽'},
      {'name': 'Kangkung', 'emoji': '🥬'},
      {'name': 'Tauge', 'emoji': '🌱'},
    ],
    timeMinutes: 30,
    calories: 350,
    imageAsset: 'images/gado-gado.jpg',
    cookingSteps: [
      'Rebus sayuran (kangkung, kacang panjang, tauge, kol) secara terpisah. Angkat dan rendam air es sebentar agar warna tetap cerah.',
      'Goreng tahu dan tempe hingga matang, lalu potong dadu.',
      'Siapkan bumbu kacang: haluskan kacang goreng, gula merah, cabai, terasi, dan beri perasan jeruk limau.',
      'Tata potongan lontong, sayuran, tahu, dan tempe di piring.',
      'Siram dengan bumbu kacang yang kental, sajikan dengan kerupuk udang dan emping.',
    ],
  ),
];
