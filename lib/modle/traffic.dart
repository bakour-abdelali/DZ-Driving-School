//linke file image
String linkImag = 'images';

class Traffic {
  String? title;
  String? imageUrl;
  Traffic({required this.title, required this.imageUrl});
}

//prohibition signs
final List<Traffic> prohibitionData = [
  Traffic(
      title: ' ممنوع مرور قطيع حيوانات',
      imageUrl:
          '$linkImag/أحد-الحيوانات-أليف-سمح-إلى-داخل-clipart__k12218032.jpg'),
  Traffic(
      title: 'ممنوع مرور العربات التي تحمل مواد متفجرة',
      imageUrl: '$linkImag/R (1).png'),
  Traffic(
      title: 'ممنوع مرور العربات التي تحمل مواد تلوث المياه',
      imageUrl: '$linkImag/R (2).png'),
  Traffic(
      title: 'مممنوع ترك مسافة بين سيارتين اقل من 70 متر',
      imageUrl: '$linkImag/R (3).png'),
  Traffic(title: 'ممنوع مرور العربات اليدوية', imageUrl: '$linkImag/bg.PNG'),
  Traffic(
      title: 'ممنوع مرور السيارات و الدراجات',
      imageUrl:
          '$linkImag/I-Grande-25644-panneau-acces-interdit-a-tous-les-vehicules-a-moteur-r8.net_-300x300.jpg'),
  Traffic(
      title: 'الأفضلية للسيارة القادمة من الجهة المقابلة',
      imageUrl:
          '$linkImag/gen__vyr_119Dopravni-znacka---P7---Prednost-protijedoucich-vozidel.jpg'),
  Traffic(
      title: 'ممنوع مرور على الشاحنات التي يتجاوز وزن و حمولة محاورها 5.5 طن',
      imageUrl:
          '$linkImag/527a_fahrverbot_fuer_lastkraftfahrzeuge_mit_gewichtsangabe.jpg'),
  Traffic(
      title: 'ممنوع مرور على السيارات التي يتجاوز وزن وحمولة احد محاورها 2طن',
      imageUrl: '$linkImag/OIP.jpg'),
  Traffic(
      title: 'ممنوع مرور المركبات التي تزن 10 طن او اكثر',
      imageUrl:
          '$linkImag/Znak_B-19_zakaz_wjazdu_pojazdow_o_nacisku_osi_ponad.webp'),
  Traffic(
      title: 'ممنوع مرور المركبات التي تزن 5.5 طن او اكثر',
      imageUrl: '$linkImag/Capture1.PNG'),
  Traffic(
      title: 'ممنوع مرور المركبات التي عرضها 2.5متر او اكثر',
      imageUrl: '$linkImag/B15.jpg'),
  Traffic(
      title: 'ممنوع مرور المركبات التي طولها 3.5متر او اكثر',
      imageUrl: '$linkImag/R.jpg'),
  Traffic(title: 'ممنوع العربات والحيوانات', imageUrl: '$linkImag/R (1).jpg'),
  Traffic(
      title: 'ممنوع تجاوز سرعة 60 كيلومتر في الساعة',
      imageUrl:
          '$linkImag/ss-vs-vks-maximum-snelheid-60-km-per-uur-510x510.jpg'),
  Traffic(
      title: 'ممنوع استعمال المنبه الصوتي',
      imageUrl:
          '$linkImag/pf1364-sesli-ikaz-cihazlarinin-kullanimi-yasaktir-trafik-levhasi.jpg'),
  Traffic(
      title: 'ممنوع مرور الدراجات الهوائية', imageUrl: '$linkImag/OIP (1).jpg'),
  Traffic(title: 'ممنوع مرور المشاة', imageUrl: '$linkImag/SDAKN0035800.jpg'),
  Traffic(
      title: 'مرور الدراجات و الدراجات النارية ممنوع',
      imageUrl: '$linkImag/test-2-otázka-18-2-300x300.png'),
  Traffic(
      title: 'ممنوع مرور العربيات التي يقطرها حيوان',
      imageUrl: '$linkImag/7409de795843612a32b94903e89f444c.jpg'),
  Traffic(title: 'ممنوع دخول الحافلات', imageUrl: '$linkImag/OIP (2).jpg'),
  Traffic(title: 'مرور شاحنات ممنوع', imageUrl: '$linkImag/68.gif'),
  Traffic(
      title: 'ممنوع مرور السيارات والدراجات', imageUrl: '$linkImag/raw.jpg'),
  Traffic(
      title: 'ممنوع تجاوز الشاحنات',
      imageUrl: '$linkImag/fsd-e1628012137395.webp'),
  Traffic(
      title: 'ممنوع التجاوز',
      imageUrl: '$linkImag/B_29a_-_Zákaz_predchádzania.png'),
  Traffic(
      title: 'ممنوع الإلتفاف للخلف',
      imageUrl: '$linkImag/icono-prohibido-uturn-estilo-plano-106970626.jpg'),
  Traffic(title: 'ممنوع اللإلتفاف إلى اليسار', imageUrl: '$linkImag/RG8.jpg'),
  Traffic(
      title: 'السير ممنوع في كلا الإتجاهين',
      imageUrl: '$linkImag/tpTmLkBe.png'),
  Traffic(title: 'اتجاه ممنوع', imageUrl: '$linkImag/mark_4.png'),
  Traffic(title: 'ممنوع الإتجاه لليمين', imageUrl: '$linkImag/R (2).jpg'),
  Traffic(title: 'قف', imageUrl: '$linkImag/printable-stop-sign-600x464.png'),
  Traffic(title: 'حاجز الثلج', imageUrl: '$linkImag/35.png'),
  Traffic(title: 'الأداء', imageUrl: '$linkImag/R (4).png'),
  Traffic(title: 'ممنوع الوقوف والتوقف', imageUrl: '$linkImag/OIP (3).jpg'),
  Traffic(title: 'ممنوع الوقوف مكان خاص', imageUrl: '$linkImag/OIP (4).jpg'),
  Traffic(
      title: 'ممنوع الوقوف على يمين ويسار العلامة',
      imageUrl: '$linkImag/4.PNG'),
  Traffic(title: 'تجاوز السرعة 90 ممنوع', imageUrl: '$linkImag/R (5).png'),
];
//danger signs
final List<Traffic> dangerData = [
  Traffic(imageUrl: '$linkImag/Y1ls8ACM3h.png', title: 'جسر متحرك'), //0
  Traffic(title: 'طريق مسنم', imageUrl: '$linkImag/R.png'), //1
  Traffic(
      title: 'مخفض للسرعة من نوع مسنم', //2
      imageUrl: '$linkImag/P-15A-400x355.jpg'),
  Traffic(
      title: 'منعرج خطير على اليمين',
      imageUrl: '$linkImag/bord-a1b-gevaarlijke-bocht-naar-rechts.jpg'),
  Traffic(
      title: 'منعرج خطير على اليسار',
      imageUrl: '$linkImag/bord-a1a-gevaarlijke-bocht-naar-links.jpg'),
  Traffic(
      title: 'حذاري منعرجات متتالية أولها إلى اليسار',
      imageUrl: '$linkImag/「警04」連續彎路標誌--連續彎路先向左.gif'),
  Traffic(
      title: 'حذاري تعاقب عدة منعرجات أولها إلى اليمين',
      imageUrl: '$linkImag/「警03」連續彎路標誌--連續彎路先向右.gif'),
  Traffic(
      title: 'حذاري طريق ذو اتجاهين',
      imageUrl: '$linkImag/panneau-circulation-dans-les-deux-sens-a18.jpg'),
  Traffic(
      title: 'طريق ضيق',
      imageUrl:
          '$linkImag/Werkstatt_2020_Freisteller_Verkehrszeichen-120-Dreieck-900-mm-verengte-Fahrbahn_200x200.jpg'),
  Traffic(title: 'منحدر خطير', imageUrl: '$linkImag/R (3).jpg'),
  Traffic(
      title: 'إشارات ضوئية',
      imageUrl:
          '$linkImag/49-496278_job-clipart-job-hunt-rules-of-traffic-light.png'),
  Traffic(title: 'حذاري خطر غير معين', imageUrl: '$linkImag/872963.webp'),
  Traffic(title: 'طريق زالق', imageUrl: '$linkImag/R (4).jpg'),
  Traffic(title: 'طريق ضيق من اليمين', imageUrl: '$linkImag/OIP (5).jpg'),
  Traffic(title: 'طريق ضيق من اليسار', imageUrl: '$linkImag/OIP (6).jpg'),
  Traffic(title: 'خروج دراجات عادية', imageUrl: '$linkImag/R.gif'),
  Traffic(
      title: 'تقاطع طريق مع سكة حديدية مجهزة بحواجز ذات تشغيل يدوي',
      imageUrl: '$linkImag/OIP (7).jpg'),
  Traffic(
      title: 'تقاطع طريق مع سكة حديدة بدون حواجز أو نصف حواجز',
      imageUrl: '$linkImag/1.2-768x768.png'),
  Traffic(
      title: 'طريق تنتهي إلى رصيف أو حافة النهر',
      imageUrl: '$linkImag/A20_T2.gif'),
  Traffic(
      title: 'تساقط الأحجار',
      imageUrl: '$linkImag/caduta-massi-destra-000.jpg'),
  Traffic(
      title: 'طريق تنتهي إلى رصيف أو حافة نهر',
      imageUrl: '$linkImag/R (5).jpg'),
  Traffic(title: 'ممر خاص بالمرتجلين', imageUrl: '$linkImag/OIP (8).jpg'),
  Traffic(title: 'انتباه الرياح', imageUrl: '$linkImag/OIP (9).jpg'),
  Traffic(title: 'انتباه حيوانات الغابة', imageUrl: '$linkImag/142-10.jpg'),
  // Traffic(
  //     title: 'خطر جوي',
  //     imageUrl:
  //         '$linkImag/пътен-знак-А-36Възможно-е-ниско-прелитане-на-самолети-1-400x351.jpg'),
  // Traffic(
  //     title: 'إنتباه تقاطع طريق رئيسي مع فرعي الأسبقية لطريق الرئيسية',
  //     imageUrl:
  //         '$linkImag/пътен-знак-А-26кръстовище-с-път-без-предимство-от-дясно-2-1-400x351.jpg'),
  Traffic(
      title: 'مكان يكثر فيه الأطفال',
      imageUrl:
          '$linkImag/220_F_282284428_xOncOtQNuHLwa3clLeGK2Su3nzn9AiJx.jpg'),
  Traffic(
      title: 'إنتباه حيوان أليف',
      imageUrl:
          '$linkImag/089d2dd3ab75d9561c8184a6823bc553--traffic-sign-sign-design.jpg'),
  Traffic(title: 'تساقط الأحجار', imageUrl: '$linkImag/SEGFLR190030B_g.jpg'),
  Traffic(
      title: 'تقاطع الطريق مع ترامواي أو مترو',
      imageUrl: '$linkImag/R (1).gif'),
  Traffic(
      title: 'انتباه وجود حصى أو مزرار', imageUrl: '$linkImag/پرتاب-سنگ.jpg'),
  Traffic(
      title: 'الطريق يتجه لنهاية حافة رصيف بحري أو نهري',
      imageUrl:
          '$linkImag/57484759e4b019122cccba2d_5748475ce4b019122cccbf3d_p854x570.webp'),
  Traffic(title: 'منعطف حاد  يمين', imageUrl: '$linkImag/OIP (10).jpg'),
  Traffic(
      title: 'منعطف حاد يسار',
      imageUrl: '$linkImag/Ua_1.2_warning-dangerous_left_curve.svg.png'),
  Traffic(
      title: 'معبر أطفال المدارس',
      imageUrl: '$linkImag/fig-23art-94bambini,902.jpg'),
  Traffic(
      title: 'أعط الأفضلية',
      imageUrl:
          '$linkImag/verkehrsschilder-vorfahrt-gewaehren-1531-300x269.png'),
  Traffic(
      title: 'تقاطع الطرق الأسبقية جهة اليمين',
      imageUrl: '$linkImag/OIP (20).jpg'),
];
//guidance signs
final List<Traffic> guidanceData = [
  Traffic(
      title: 'ممر خاص بالمعاقين',
      imageUrl:
          '$linkImag/gratis-png-senalizacion-pwd-permiso-de-estacionamiento-para-discapacitados-senal-de-invalidez-aparcamiento-senal-de-estacionamiento-para-discapacitados.png'),
  Traffic(title: 'مطعم', imageUrl: '$linkImag/R (6).jpg'),
  Traffic(
      title: 'باركينك بأداء',
      imageUrl: '$linkImag/parking-avec-disque-350x350mm-classe-2.jpg'),
  Traffic(title: 'باركينك', imageUrl: '$linkImag/signalisation-indication.jpg'),
  Traffic(title: 'ممر الراجلين', imageUrl: '$linkImag/senal-s-13.jpg'),
  Traffic(title: 'ممر الدرجات الهوائية', imageUrl: '$linkImag/OIP (11).jpg'),
  Traffic(title: 'محطة الطرمواي', imageUrl: '$linkImag/R (6).png'),
  Traffic(
      title: 'محطة الوقوف', imageUrl: '$linkImag/2015c122z0294p005o125.png'),
  Traffic(title: 'ممر الطرامواي', imageUrl: '$linkImag/R (7).png'),
  Traffic(title: 'مركز الإغاثة', imageUrl: '$linkImag/پست-امدادی..png'),
  Traffic(title: 'طفاية العافية', imageUrl: '$linkImag/OIP (12).jpg'),
  Traffic(title: 'إرتداء القفازات', imageUrl: '$linkImag/OIP (13).jpg'),
  Traffic(title: 'مستشفى', imageUrl: '$linkImag/R (8).jpg'),
  Traffic(title: 'محطة الوقود', imageUrl: '$linkImag/OIP (15).jpg'),
  Traffic(title: 'طريق مسدود', imageUrl: '$linkImag/R (8).png'),
  Traffic(title: 'مخيم', imageUrl: '$linkImag/OIP (16).jpg'),
];

//signs of compulsion
final List<Traffic> compulsionData = [
  Traffic(title: 'مسلك أو ممر إجباري للخيالة', imageUrl: '$linkImag/D8.jpg'),
  Traffic(
      title: 'إتجاه السير الإجبري إلى الأمام أو اليسار',
      imageUrl: '$linkImag/R (7).jpg'),
  Traffic(
      title: 'اتجاه السير الإجباري إلى الأمام أواليمين',
      imageUrl:
          '$linkImag/depositphotos_109881906-stock-photo-go-straight-or-right-in.jpg'),
  Traffic(
      title: 'إتجاه السير إجباري في ملتقى طرق علي اليمين أواليسار',
      imageUrl: '$linkImag/OIP (14).jpg'),
  Traffic(
      title: 'إتجاه السير الإجباري إلى الأمام',
      imageUrl: '$linkImag/rijrichting.jpg'),
  Traffic(
      title: 'إتجاه السير الإجباري إلى اليسار في ملتقى طرق القادم',
      imageUrl: '$linkImag/D05-300x225.webp'),
  Traffic(
      title: 'إتجاه السير الإجباري إلى اليمين في ملتقى طرق القادم',
      imageUrl: '$linkImag/R (9).jpg'),
  Traffic(
      title: 'إتجاه اجباري نتبع سهم على ليسر مع تخفيض السرعة',
      imageUrl: '$linkImag/istockphoto-1071783456-612x612.jpg'),
  Traffic(
      title: 'إتجاه إجباري إلي اليمين',
      imageUrl: '$linkImag/dmeu_b2165_15_1_std.lang.all.png'),
  Traffic(title: 'إتجاه إجباري إلي اليسار', imageUrl: '$linkImag/OIP (17).jpg'),
  Traffic(title: 'إنعطاف إجباري على اليمين', imageUrl: '$linkImag/s-l400.jpg'),
  Traffic(
      title: 'إنعطاف أجباري على اليسار', imageUrl: '$linkImag/OIP (18).jpg'),
  Traffic(
      title: 'مسلك أو ممر خاص مسموح فيه على الدراجات أجباري',
      imageUrl: '$linkImag/21901155614_8dd0d99868_b.jpg'),
  Traffic(
      title: 'مسلك أو ممر خاص بالراجلين إجباري',
      imageUrl: '$linkImag/7cd292adc88dec8a94dc9fd5b382d6d7.jpg'),
  Traffic(
      title: 'إجباري السير بسرعة 30 كم/س على الأقل',
      imageUrl: '$linkImag/200px-UK-min-speed-limit.jpg'),
  Traffic(
      title: 'ممر او مسلك خاص بالحافلات',
      imageUrl:
          '$linkImag/b27a_voie_reservee_aux_bus_metropole_equipements.1568793816.png'),
  Traffic(
      title: 'ممر أو مسلك خاص بالحيوانات الأليفة',
      imageUrl: '$linkImag/OIP (19).jpg'),
];
//priority signs in junctions
final List<Traffic> priorityTraffic = [
  Traffic(
      title: 'حذاري:طريق رئيسي يقطعها طريق فرعي و الأولوية للرئيسي',
      imageUrl: '$linkImag/R (10).jpg'),
  Traffic(
      title: 'حذاري:مفترق طرق دائري و الأولوية للقادمين من جهة اليسار',
      imageUrl: '$linkImag/50_3a57f563011aae85XSIzD07ajdLx_600x600@2x.jpg'),
  Traffic(
      title: 'حذاري:مفنرق طرق و الأولوية للقادمين من جهة اليمين',
      imageUrl: '$linkImag/OIP (20).jpg'),
  Traffic(title: 'بداية طريق الأولوية', imageUrl: '$linkImag/R (9).png'),
  Traffic(title: 'نهاية طريق الأولوية', imageUrl: '$linkImag/R (10).png'),
  Traffic(title: 'انتباه في المكان', imageUrl: '$linkImag/vz-205.webp'),
  Traffic(title: 'انتباه على 150م ', imageUrl: '$linkImag/AB3.png'),
  Traffic(
      title: 'قف على 150 م',
      imageUrl:
          '$linkImag/vorrangzeichen-halt-vorfahrt-gewaehren-nach-150m.jpg'),
  Traffic(
      title: 'قف في المكان',
      imageUrl:
          '$linkImag/kisspng-stop-sign-traffic-sign-clip-art-sign-stop-5ad4ac08490d76.0643528915238871122992.jpg'),
];

//signs of the end of prohibition
final List<Traffic> theendoftheprohibitionTraffic = [
  Traffic(
      title: 'نهاية كل الممنوعات ماعداالوقوف و التوقف',
      imageUrl: '$linkImag/OIP (21).jpg'),
  Traffic(title: 'نهاية تحديد السرعة في 50', imageUrl: '$linkImag/R (11).jpg'),
  Traffic(title: 'نهاية منع التجاوز', imageUrl: '$linkImag/3.png'),
  Traffic(
      title: 'نهاية منع إستعمال المنبه الصوتي',
      imageUrl:
          '$linkImag/panneau-fin-interdiction-de-klaxonner-b35-5258125-1.jpg'),
];
//tomporary signs
final List<Traffic> tomporaryTraffic = [
  Traffic(title: 'أمامك حامل راية ', imageUrl: '$linkImag/012.gif'),
  Traffic(
      title: 'الطريق يضيق من اليمين',
      imageUrl:
          '$linkImag/TP-17a_Estrechamiento_calzada-_derecha_Economica_Rotuvall-300x280.jpg'),
  Traffic(title: 'الطريق يضيق من اليسار', imageUrl: '$linkImag/R (12).jpg'),
  Traffic(title: 'طريق ذو إتجاهين', imageUrl: '$linkImag/OIP (22).jpg'),
  Traffic(title: 'إشارات  ضوئية', imageUrl: '$linkImag/AK17-1024x915.png'),
  Traffic(
      title: 'نزول',
      imageUrl: '$linkImag/240px-Korean_Traffic_sign_(Descent).svg.png'),
  Traffic(
      title: 'منعطف لليسار',
      imageUrl:
          '$linkImag/znak-a-2-niebezpieczny-zakret-w-lewo-drogowy-ostrzegawczy-6749-2223-160-160-0.jpg'),
  Traffic(title: 'منعطف لليمين', imageUrl: '$linkImag/R (13).jpg'),
  Traffic(title: 'مسار مغلق', imageUrl: '$linkImag/011.gif'),
  Traffic(title: 'أعمال طرق', imageUrl: '$linkImag/إشارة خطر مؤقتة .png'),
  Traffic(title: 'تقاطع طريق', imageUrl: '$linkImag/008.gif'),
];
final List<List<Traffic>> list = [
  prohibitionData,
  dangerData,
  guidanceData,
  compulsionData,
  priorityTraffic,
  theendoftheprohibitionTraffic,
  tomporaryTraffic,
];
