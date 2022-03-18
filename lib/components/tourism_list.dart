import "package:flutter/material.dart";
import 'package:flutter_wppb/model/tourism_place.dart';
import 'package:flutter_wppb/views/detail_page.dart';
import "list_item.dart";

class TourismList extends StatefulWidget {
  final List<TourismPlace> doneTourismPlaceList;
  const TourismList({Key? key, required this.doneTourismPlaceList})
      : super(key: key);

  @override
  State<TourismList> createState() => _TourismListState(doneTourismPlaceList);
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> doneTourismPlaceList;

  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: "Surabaya Submarine Monument",
      location: "Jalan Pemuda",
      imageAsset: "assets/images/kapal.jpg",
      hariBuka: "Open Everyday",
      jamBuka: "08:00 - 16:00",
      description:
          "Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota, monumen ini sebenarnya merupakan kapal selam KRI Pasopati 410, salah satu armada Angkatan Laut Republik Indonesia buatan Uni Soviet tahun 1952.",
      price: "Rp 15.000,-",
      images: [
        "https://upload.wikimedia.org/wikipedia/commons/6/60/Submarine_Monument_Surabaya_2.JPG",
        "https://upload.wikimedia.org/wikipedia/commons/4/4f/Submarine_Monument_Surabaya_1.JPG",
        "https://upload.wikimedia.org/wikipedia/commons/2/2f/Submarine_Monument_Surabaya_3.JPG",
        "https://travelspromo.com/wp-content/uploads/2019/07/KRI-Pasopati-410-di-Monumen-Kapal-Selam-Surabaya.-Foto-Gmap-Dieta-Singarimbun.jpg"
      ],
    ),
    TourismPlace(
      name: "Kelenteng Sanggar Agung",
      location: "Kenjeran",
      imageAsset: "assets/images/kelenteng.jpeg",
      hariBuka: "Open Everyday",
      jamBuka: "08:00 - 16:00",
      description:
          "Kelenteng yang lokasinya berada di kawasan Pantai Ria Kenjeran menjadikan  memiliki daya tarik tersendiri. Di sini berdiri banyak patung-patung seperti Dewi Kwan Im yang merupakan ikon dari kelenteng ini, patung Sha Nan dan Tong Nu serta patung naga yang meliuk. Kelenteng ini cocok dijadikan tempat wisata religi. Jika ingin lebih mendapatkan suasana sakral, kamu bisa datang saat perayaan Imlek karena kelenteng ini rama dikunjungi orang untuk beribadah maupun wisatawan lokal maupun asing.",
      price: "Rp 10.000,-",
      images: [
        "https://travelspromo.com/wp-content/uploads/2020/01/Patung-Dewi-Kwan-In.-Foto-Gmap-Pieter-Voors.jpeg",
        "https://sewabussurabaya.com/wp-content/uploads/2019/08/klenteng-sanggar-agung-surabaya.jpg",
        "https://indonesiakaya.com/wp-content/uploads/2020/10/klenteng-sanggar-agung-1200.jpg",
        "https://jejakpiknik.com/wp-content/uploads/2017/11/@gadingdronepilots.jpg",
      ],
    ),
    TourismPlace(
      name: "House of Sampoerna",
      location: "Krembengan Utara",
      imageAsset: "assets/images/sampoerna.jpg",
      hariBuka: "Open Everyday",
      jamBuka: "08:00 - 16:00",
      description:
          "Surabaya juga dikenal memiliki tempat wisata berupa museum. Salah satunya yang wajib dikunjungi adalah . Museum kretek yang beralamat di Taman Sampoerna 6 ini awalnya merupakan tempat pertama produksi rokok Sampoerna. Di sini kamu bisa mengenal sejarah kretek di Indonesia. Mulai dari mengenal jenis-jenis cengkeh, pemantik rokok, dan tentu saja bisa melihat proses pembuatan rokok. Museum ini juga menawarkan kepada pengunjung keliling Surabaya gratis dengan menggunakan sebuah bus. Museum ini juga memiliki kafe dan tempat penjualan suvenir di lantai dua. Tentu saja museum ini juga cukup Instagramable untuk dijadikan spot foto. Siapkan kamera, ya!",
      price: "Gratis",
      images: [
        "https://www.houseofsampoerna.museum/images/img-about1.jpg",
        "https://www.houseofsampoerna.museum/images/img-about2.jpg",
        "https://www.sintiaastarina.com/wp-content/uploads/2019/04/Kepincut-Kerennya-House-of-Sampoerna-Surabaya-17-1.jpg",
        "https://sewabussurabaya.com/wp-content/uploads/2019/08/House-Of-Sampoerna.jpg",
        "https://1.bp.blogspot.com/-mlorq43qMR4/V_XwD-c9xSI/AAAAAAAAoWg/unC0NHiKhlsuK4n1cOzLk5_SU8OWaendACPcBGAYYCw/s1600/GOPR8166_1-01.jpeg",
      ],
    ),
    TourismPlace(
      name: "Tugu Pahlawan",
      location: "Alun-Alun Contong",
      imageAsset: "assets/images/tugu_pahlawan.jpg",
      hariBuka: "Open Everyday",
      jamBuka: "08:00 - 16:00",
      description:
          "Tempat wisata Surabaya yang gak boleh terlewat tentu saja Tugu Pahlawan. Monumen ini merupakan ikon dari Surabaya yang sangat populer. Tugu Pahlawan dikelilingi oleh tanaman hijau yang rindang, cocok untuk tempat bersantai setelah keliling Kota Surabaya. Tugu yang menjulang tinggi ini sudah berdiri sejak masa penjajahan. Jangan khawatir, kamu tidak akan dikenakan biaya jika mengunjungi tempat ini dikarenakan Tugu Pahlawan gratis untuk umum.",
      price: "Gratis",
      images: [
        "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2020/11/04/2858790770.png",
        "https://www.goodnewsfromindonesia.id/uploads/post/large-shutterstock-448673071-c0513fb2cb23d3433de9fe3fe010f5f2.jpg",
        "https://live.staticflickr.com/6200/6115593182_afa254c8e4_b.jpg",
      ],
    ),
    TourismPlace(
      name: "Patung Suro Boyo",
      location: "Wonokromo",
      imageAsset: "assets/images/patung_suro_boyo.jpg",
      hariBuka: "Open Everyday",
      jamBuka: "08:00 - 16:00",
      description:
          "Selain Tugu Pahlawan, Surabaya juga memiliki patung yang jadi ikon kota yakni Patung Suro dan Boyo. Patung ini memiliki cerita bagaimana Kota Pahlawan bisa dinamakan menjadi Surabaya. Tak afdol rasanya kalau ke Surabaya tapi enggak foto-foto berlatar patung hiu dan buaya ini. Ada beberapa titik untuk mengabadikan foto berlatar patung Suro dan Boyo. Salah satu spot yang terbaik adalah dari Taman Skateboard.",
      price: "Gratis",
      images: [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Sura_dan_Baya_statue.jpg/1200px-Sura_dan_Baya_statue.jpg",
        "http://api.jatimnet.com/jinet/assets/media/filer_public/59/71/5971d0de-d622-4163-a823-03be1c6d8dbb/photo_2019-05-23_18-53-31.jpg",
        "https://blog.dparagon.com/wp-content/uploads/2021/08/Screenshot_20210819-205811_Maps.jpg",
        "https://i2.wp.com/bangga.surabaya.go.id/wp-content/uploads/2019/04/IMG-20190412-WA0024.jpg?fit=1280%2C854&ssl=1",
      ],
    ),
    TourismPlace(
      name: "Kampung Arab",
      location: "Ampel Kejeron, Kec. Semampir",
      imageAsset: "assets/images/kampung_arab.jpg",
      hariBuka: "Open Everyday",
      jamBuka: "08:00 - 16:00",
      description:
          "Keberagaman Indonesia tercermin dari banyaknya suku dan budaya yang dimiliki. Terdapat beberapa kampung di Surabaya yang dibagi berdasarkan etnisnya, salah satunya adalah Kampung ini dihuni oleh penduduknya yang mayoritas berasal dari Arab. Kampung Arab menjadi salah satu kampung yang dijadikan tempat wisata dan mendapat perhatian dari banyak wisatawan. Salah satu alasan utamanya adalah karena bisa dijadikan tujuan wisata religi. Selain bisa mengenal budaya Arab yang masih kental, kamu juga bisa berburu suvenir mulai dari pakaian, minyak wangi, hingga peralatan ibadah yang dijual di kampung yang terletak di kawasan Ampel tersebut.",
      price: "Gratis",
      images: [
        "https://i.ytimg.com/vi/09yaw1tZOIg/maxresdefault.jpg",
        "https://bukanbocahbiasa.files.wordpress.com/2016/06/ampel-cover.jpg?w=1152",
        "https://2.bp.blogspot.com/-SnJI8RpJR3w/TfYKR2jKrYI/AAAAAAAAAiE/eTbLN0F4W0s/s1600/SAM_1972.JPG",
        "https://www.whiteboardjournal.com/wp-content/uploads/2014/09/KampungArab01.jpg",
        "https://www.whiteboardjournal.com/wp-content/uploads/2014/09/KampungArab02.jpg",
      ],
    ),
    TourismPlace(
      name: "Food Junction Grand Pakuwon",
      location: "Jl. Grand Pakuwon, Banjar Sugihan, Kec. Tandes",
      imageAsset: "assets/images/food_pakuwon.jpg",
      hariBuka: "Open Everyday",
      jamBuka: "08:00 - 16:00",
      description:
          "Tempat wisata satu ini sudah pasti jadi favorit para pecinta kuliner. Dibuka sejak 2016 silam, Food Junction Grand Pakuwon selalu ramai dikunjungi. Terdapat banyak macam kuliner tersedia mulai dari makanan Nusantara hingga mancanegara. Pengalaman spesial ketika menyantap makanan dan menikmati minuman di sini, kamu bisa sambil menikmati pemandangan danau buatan yang indah. Selain makan, ada juga wahana wahana yang siap memberikan kamu hiburan. Para pecinta kuliner, yuk langsung sikat!",
      price: "Rp 30.000,-",
      images: [
        "https://1.bp.blogspot.com/-UwgfQ3DCeqQ/X8dk_HTHZuI/AAAAAAAAqTs/xYY1b42PYcw0kgUGeN2VCZcFETYuiKtRgCLcBGAsYHQ/s2048/food%2Bjunction%2B4.jpg",
        "https://medicaltourism.id/wp-content/uploads/2021/04/Sampul-Food-Junction.jpg",
        "https://danutrikurniawan.files.wordpress.com/2016/05/imag23611.jpg",
        "https://1.bp.blogspot.com/-O1uKEUb-IHA/X8dkmu_y3_I/AAAAAAAAqTg/5NinyRmTO-QPjgtj50SJDVBqDV8jLmuTACLcBGAsYHQ/s2048/food%2Bjunction%2B2.jpg",
        "https://www.hargatiket.net/wp-content/uploads/2020/01/food-junction-pakuwon-surabaya.jpg",
      ],
    ),
    TourismPlace(
      name: "Kebun Binatang Surabaya",
      location: "Jl. Setail No.1, Darmo, Kec. Wonokromo",
      imageAsset: "assets/images/kebun_binatang.jpg",
      hariBuka: "Open Everyday",
      jamBuka: "08:00 - 16:00",
      description:
          "Tempat wisata yang selalu ramai dan diminati di setiap kota termasuk Surabaya adalah kebun binatang. Lokasinya yang terletak di pusat kota membuat Kebun Binatang Surabaya selalu ramai setiap harinya. Kebun binatang ini jadi salah satu yang tertua di Indonesia, lho. Hanya dengan merogoh kocek Rp 15.000, kamu sudah bisa melihat aneka ragam satwa yang dimiliki kebun binatang ini. Eits, jangan berkunjung di tanggal merah ya, karena Kebun Binatang Surabaya buka setiap hari kecuali tanggal merah.",
      price: "Rp 15.000,-",
      images: [
        "https://pingpoint.co.id/media/images/Pasca-Penutupan_Selama_4_Bulan_Kebun_Binatang_S.original.jpg",
        "https://memontum.com/wp-content/uploads/2021/10/IMG_20211002_190012-1200x740.jpg",
        "https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2021/12/12/3116750613.jpg",
        "https://cdn0-production-images-kly.akamaized.net/4AjjyfmZbruegdbGC_br2JRpfIA=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3591319/original/094517100_1633299951-Dok._Humas_KBS__4_.jpeg",
        "https://disk.mediaindonesia.com/thumbs/1800x1200/news/2021/10/a413f3d2f3d003019e326fe31b183f2a.jpg",
      ],
    ),
    TourismPlace(
      name: "Atlantis Land",
      location: "Jl. Sukolilo No.100, Sukolilo Baru, Kec. Bulak",
      imageAsset: "assets/images/Atlantis-Land.jpg",
      hariBuka: "Open Everyday",
      jamBuka: "08:00 - 16:00",
      description:
          "Surabaya dikenal dengan cuaca panasnya. Maka dari itu, mengunjungi taman wisata air mungkin jadi pilihan tepat untuk menyegarkan diri. Salah satu yang layak untuk dikunjungi adalah Atlantis Land. Taman wisata ini gak cuma menyediakan kolam renang dengan banyak perosotan panjang. Atlantis Land juga memiliki banyak wahana hingga atraksi yang siap bikin kamu terhibur.",
      price: "Rp 100.000,-",
      images: [
        "https://sibukliburan.id/wp-content/uploads/2019/05/Atlantis-Land-Kenjeran-1.jpg",
        "https://www.suarasurabaya.net/wp-content/uploads/2020/10/WhatsApp-Image-2020-10-30-at-15.53.12.jpeg",
        "https://i0.wp.com/ngetripkemana.com/wp-content/uploads/2019/01/Atlantis-Land-Surabaya-lovesuroboyo.jpg",
        "https://asaljeplak.my.id/berita/storage/sites/2/2021/12/Atlantis-Land-Surabaya.jpg",
        "https://i0.wp.com/suwatu.com/gambar/Atlantis-Land-Kenjeran-di-Surabaya.jpg?fit=1080%2C1350&ssl=1",
      ],
    ),
    TourismPlace(
      name: "Patung Budha 4 Rupa",
      location: "Jl. Pantai Ria Kenjeran No.8, Sukolilo Baru, Kec. Bulak",
      imageAsset: "assets/images/patung-budha-4-wajah.jpg",
      hariBuka: "Open Everyday",
      jamBuka: "08:00 - 16:00",
      description:
          "Enggak perlu jauh-jauh ke Thailand untuk melihat patung Budha. Cukup melipir ke kawasan Pantai Ria Kenjeran, di sana terdapat tempat wisata religi berupa patung Budha yang unik. Patung ini memiliki empat rupa dengan delapan tangan. Banyak yang bilang kalau patung Budha yang ada di Surabaya ini mirip dengan patung Budha Thao Maha Phrom di Bangkok, Thailand. Selain dijadikan tempat ibadah, banyak juga wisatawan yang datang ke sini untuk foto-foto.",
      price: "Gratis",
      images: [
        "https://phinemo.com/wp-content/uploads/2017/10/buddha.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-m/1280/1b/3b/e6/7d/four-face-buddha-statue.jpg",
        "https://i.ibb.co/SPzvRRR/esa-mariya-ajikan.jpg",
        "https://sewabussurabaya.com/wp-content/uploads/2020/02/Belajar-Sejarah-dari-Para-Pahlawan-di-Museum-Sepuluh-November.jpg",
      ],
    ),
  ];

  _TourismListState(this.doneTourismPlaceList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailPage(place: place);
            }));
          },
          child: ListItem(
            place: place,
            isDone: doneTourismPlaceList.contains(place),
            onCheckboxClick: (bool? value) {
              setState(() {
                if (value != null) {
                  value
                      ? doneTourismPlaceList.add(place)
                      : doneTourismPlaceList.remove(place);
                }
              });
            },
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
