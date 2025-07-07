import 'package:ahmed/modle/rule.dart';

import 'traffic.dart';

// class Test {
//   final List<String?>? quze;
//   final String? pathImage;
//   final int numberAnser;
//   Test({
//     required this.quze,
//     required this.pathImage,
//     required this.numberAnser,
//   });
// }

// //

// final List<List<Test>> testDataTotal = [
//   testData1,
//   testData2,
//   testData3,
//   testData4,
//   testData5,
//   testData6,
//   testData7,
//   testData8,
//   testData9,
//   testData10,
//   testRule1,
//   testRule2,
//   testRule3,
//   testRule4,
//   testRule5,
// ];

// //data test
// final List<Test> testData1 = [
//   Test(
//       pathImage: prohibitionData[0].imageUrl,
//       quze: [
//         'مممنوع ترك مسافة بين سيارتين اقل من 70 متر', //0
//         prohibitionData[0].title!, //1
//         'ممنوع مرور المركبات التي تزن 10 طن او اكثر', //2
//       ],
//       numberAnser: 1),
//   Test(quze: [
//     'ممنوع مرور المركبات التي تزن 10 طن او اكثر', //0
//     'ممنوع تجاوز الشاحنات', //1
//     prohibitionData[2].title //2
//   ], pathImage: prohibitionData[2].imageUrl, numberAnser: 2),
//   //2
//   Test(quze: [
//     dangerData[2].title,
//     'منعرج خطير على اليمين',
//     'منعرج خطير على اليسار',
//   ], pathImage: dangerData[2].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'أعط الأفضلية',
//     dangerData.last.title,
//     'معبر أطفال المدارس',
//   ], pathImage: dangerData.last.imageUrl, numberAnser: 1),
//   Test(
//       quze: [guidanceData.first.title, 'محطة الوقوف', 'مطعم'],
//       pathImage: guidanceData.first.imageUrl,
//       numberAnser: 0),
//   Test(
//       quze: ['طريق مسدود', 'مطعم', guidanceData.last.title],
//       pathImage: guidanceData.last.imageUrl,
//       numberAnser: 2),
//   Test(quze: [
//     'اتجاه السير الإجباري إلى الأمام أواليمين',
//     'إتجاه السير الإجبري إلى الأمام أو اليسار',
//     compulsionData.first.title
//   ], pathImage: compulsionData.first.imageUrl, numberAnser: 2),
//   Test(quze: [
//     compulsionData.last.title,
//     'إتجاه السير الإجباري إلى الأمام',
//     'إتجاه السير الإجباري إلى الأمام',
//   ], pathImage: compulsionData.last.imageUrl, numberAnser: 0),
//   Test(quze: [
//     priorityTraffic.first.title,
//     'حذاري:مفنرق طرق و الأولوية للقادمين من جهة اليمين',
//     'حذاري:مفترق طرق دائري و الأولوية للقادمين من جهة اليسار',
//   ], pathImage: priorityTraffic.first.imageUrl, numberAnser: 0),
//   Test(quze: [
//     priorityTraffic.last.title,
//     'نهاية طريق الأولوية',
//     'بداية طريق الأولوية',
//   ], pathImage: priorityTraffic.last.imageUrl, numberAnser: 0),
// ];
// final List<Test> testData2 = [
//   Test(
//       pathImage: prohibitionData[3].imageUrl,
//       quze: [
//         'مممنوع ترك مسافة بين سيارتين اقل من 70 متر', //0
//         prohibitionData[3].title!, //1
//         'ممنوع مرور المركبات التي تزن 10 طن او اكثر', //2
//       ],
//       numberAnser: 1), //ttr
//   Test(quze: [
//     'ممنوع مرور المركبات التي تزن 10 طن او اكثر', //0
//     'ممنوع تجاوز الشاحنات', //1
//     prohibitionData[4].title //2
//   ], pathImage: prohibitionData[4].imageUrl, numberAnser: 2),
//   Test(quze: [
//     tomporaryTraffic.first.title,
//     'الطريق يضيق من اليسار',
//     'الطريق يضيق من اليمين',
//   ], pathImage: tomporaryTraffic.first.imageUrl, numberAnser: 0),
//   Test(
//       quze: ['مسار مغلق', 'أعمال طرق', tomporaryTraffic.last.title],
//       pathImage: tomporaryTraffic.last.imageUrl,
//       numberAnser: 2),
//   Test(quze: [
//     'نهاية منع التجاوز',
//     theendoftheprohibitionTraffic.last.title,
//     'نهاية تحديد السرعة في 50',
//   ], pathImage: theendoftheprohibitionTraffic.last.imageUrl, numberAnser: 1),
//   Test(quze: [
//     theendoftheprohibitionTraffic.first.title,
//     'نهاية منع التجاوز',
//     'نهاية كل الممنوعات ماعداالوقوف و التوقف',
//   ], pathImage: theendoftheprohibitionTraffic.first.imageUrl, numberAnser: 0),
//   Test(quze: [
//     'قف على 150 م',
//     priorityTraffic[4].title,
//     'قف في المكان',
//   ], pathImage: priorityTraffic[4].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'إتجاه السير الإجبري إلى الأمام أو اليسار',
//     'مسلك أو ممر إجباري للخيالة',
//     compulsionData[3].title
//   ], pathImage: compulsionData[3].imageUrl, numberAnser: 2),
//   Test(quze: [
//     guidanceData[9].title, //0
//     guidanceData[0].title, //1
//     guidanceData[2].title, //2
//   ], pathImage: guidanceData[9].imageUrl, numberAnser: 0),
//   Test(quze: [
//     guidanceData[2].title, //0
//     guidanceData[6].title, //1
//     guidanceData[0].title, //2
//   ], pathImage: guidanceData[6].imageUrl, numberAnser: 1),
// ];
// final List<Test> testData3 = [
//   Test(
//       pathImage: prohibitionData[4].imageUrl,
//       quze: [
//         'مممنوع ترك مسافة بين سيارتين اقل من 70 متر', //0
//         prohibitionData[4].title!, //1
//         'ممنوع مرور المركبات التي تزن 10 طن او اكثر', //2
//       ],
//       numberAnser: 1), //ttr
//   Test(quze: [
//     'ممنوع مرور المركبات التي تزن 10 طن او اكثر', //0
//     'ممنوع تجاوز الشاحنات', //1
//     prohibitionData[2].title //2
//   ], pathImage: prohibitionData[2].imageUrl, numberAnser: 2), //tt
//   //2
//   Test(quze: [
//     tomporaryTraffic[2].title,
//     'طريق ذو إتجاهين',
//     'الطريق يضيق من اليمين',
//   ], pathImage: tomporaryTraffic[2].imageUrl, numberAnser: 0),
//   Test(
//       quze: [
//         'مسار مغلق',
//         'نزول',
//         tomporaryTraffic[tomporaryTraffic.length - 2].title
//       ],
//       pathImage: tomporaryTraffic[tomporaryTraffic.length - 2].imageUrl,
//       numberAnser: 2),
//   Test(
//       quze: [
//         'نهاية منع إستعمال المنبه الصوتي',
//         theendoftheprohibitionTraffic[theendoftheprohibitionTraffic.length - 2]
//             .title,
//         'نهاية تحديد السرعة في 50',
//       ],
//       pathImage: theendoftheprohibitionTraffic[
//               theendoftheprohibitionTraffic.length - 2]
//           .imageUrl,
//       numberAnser: 1),
//   Test(quze: [
//     theendoftheprohibitionTraffic[1].title,
//     'نهاية منع التجاوز',
//     'نهاية كل الممنوعات ماعداالوقوف و التوقف',
//   ], pathImage: theendoftheprohibitionTraffic[1].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'قف على 150 م',
//     priorityTraffic[2].title,
//     'قف في المكان',
//   ], pathImage: priorityTraffic[2].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'إتجاه السير الإجباري إلى اليسار في ملتقى طرق القادم',
//     'مسلك أو ممر إجباري للخيالة',
//     compulsionData[1].title
//   ], pathImage: compulsionData[1].imageUrl, numberAnser: 2),
//   Test(quze: [
//     compulsionData[7].title, //0
//     compulsionData[4].title, //1
//     compulsionData[0].title, //2
//   ], pathImage: compulsionData[7].imageUrl, numberAnser: 0),
//   Test(quze: [
//     compulsionData[8].title, //0
//     compulsionData[6].title, //1
//     compulsionData[4].title, //2
//   ], pathImage: compulsionData[6].imageUrl, numberAnser: 1),
// ];
// final List<Test> testData4 = [
//   Test(quze: [
//     tomporaryTraffic[0].title, //0
//     'طريق ذو إتجاهين', //1
//     'الطريق يضيق من اليمين' //2
//   ], pathImage: tomporaryTraffic[0].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'محطة الوقوف', //0
//     'باركينك بأداء', //1
//     guidanceData[2].title, //2
//   ], pathImage: guidanceData[2].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'حذاري:مفترق طرق دائري و الأولوية للقادمين من جهة اليسار', //0
//     priorityTraffic[4].title, //1
//     'نهاية طريق الأولوية', //2
//   ], pathImage: priorityTraffic[4].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'اتجاه السير الإجباري إلى الأمام أواليمين', //0
//     compulsionData[1].title, //1
//     'إتجاه السير الإجباري إلى اليمين في ملتقى طرق القادم' //2
//   ], pathImage: compulsionData[1].imageUrl, numberAnser: 1),
//   Test(quze: [
//     guidanceData[0].title, //0
//     'محطة الطرمواي', //1
//     'ممر الدرجات الهوائية', //2
//   ], pathImage: guidanceData[0].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'منعرج خطير على اليسار', //0
//     'طريق مسنم', //1
//     dangerData[5].title, //2
//   ], pathImage: dangerData[5].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'ممنوع مرور السيارات و الدراجات', //0
//     prohibitionData[7].title, //1
//     ' ممنوع مرور قطيع حيوانات', //2
//   ], pathImage: prohibitionData[7].imageUrl, numberAnser: 1),
//   Test(quze: [
//     prohibitionData[10].title, //0
//     'ممنوع تجاوز سرعة 60 كيلومتر في الساعة', //1
//     'ممنوع استعمال المنبه الصوتي', //2
//   ], pathImage: prohibitionData[10].imageUrl, numberAnser: 0),
//   Test(quze: [
//     dangerData[20].title, //0
//     dangerData[17].title, //1
//     dangerData[18].title, //2
//   ], pathImage: dangerData[20].imageUrl, numberAnser: 0),
//   Test(quze: [
//     dangerData[7].title, //0
//     dangerData[19].title, //1
//     dangerData[9].title, //2
//   ], pathImage: dangerData[19].imageUrl, numberAnser: 1),
// ];

// final List<Test> testData5 = [
//   Test(quze: [
//     prohibitionData[4].title, //0
//     'الأفضلية للسيارة القادمة من الجهة المقابلة', //1
//     'ممنوع مرور على الشاحنات التي يتجاوز وزن و حمولة محاورها 5.5 طن', //2
//   ], pathImage: prohibitionData[4].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'منعرج خطير على اليسار', //0
//     'حذاري منعرجات متتالية أولها إلى اليسار', //1
//     dangerData[1].title, //2
//   ], pathImage: dangerData[1].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'محطة الوقوف', //0
//     guidanceData[0].title, //1
//     'ممر الطرامواي', //2
//   ], pathImage: guidanceData[0].imageUrl, numberAnser: 1),
//   Test(quze: [
//     compulsionData[0].title, //0
//     'إتجاه السير إجباري في ملتقى طرق علي اليمين أواليسار', //1
//     'إتجاه السير الإجباري إلى الأمام', //2
//   ], pathImage: compulsionData[0].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'مسلك أو ممر إجباري للخيالة', //0
//     'إتجاه إجباري إلي اليمين', //1
//     compulsionData[2].title, //2
//   ], pathImage: compulsionData[2].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'نهاية منع إستعمال المنبه الصوتي', //0
//     theendoftheprohibitionTraffic[2].title, //1
//     'نهاية كل الممنوعات ماعداالوقوف و التوقف', //2
//   ], pathImage: theendoftheprohibitionTraffic[2].imageUrl, numberAnser: 1),
//   Test(quze: [
//     tomporaryTraffic[5].title, //0
//     'الطريق يضيق من اليمين', //1
//     'طريق ذو إتجاهين', //2
//   ], pathImage: tomporaryTraffic[5].imageUrl, numberAnser: 0),
//   Test(quze: [
//     dangerData[8].title, //0
//     'منعرج خطير على اليمين', //1
//     'حذاري منعرجات متتالية أولها إلى اليسار', //2
//   ], pathImage: dangerData[8].imageUrl, numberAnser: 0),
//   Test(quze: [
//     dangerData[28].title, //0
//     dangerData[2].title, //1
//     dangerData[11].title, //2
//   ], pathImage: dangerData[28].imageUrl, numberAnser: 0),
//   Test(quze: [
//     dangerData[2].title, //0
//     dangerData[29].title, //1
//     dangerData[16].title, //2
//   ], pathImage: dangerData[29].imageUrl, numberAnser: 1),
// ];
// final List<Test> testData6 = [
//   Test(quze: [
//     'إشارات  ضوئية', //0
//     tomporaryTraffic[2].title, //1
//     'منعطف لليمين', //2
//   ], pathImage: tomporaryTraffic[2].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'بداية طريق الأولوية', //0
//     'حذاري:طريق رئيسي يقطعها طريق فرعي و الأولوية للرئيسي', //1
//     priorityTraffic[1].title, //2
//   ], pathImage: priorityTraffic[1].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'انتباه في المكان', //0
//     priorityTraffic[0].title, //1
//     'قف في المكان', //2
//   ], pathImage: priorityTraffic[0].imageUrl, numberAnser: 1),
//   Test(quze: [
//     compulsionData[7].title, //0
//     'مسلك أو ممر إجباري للخيالة', //1
//     'مسلك أو ممر خاص بالراجلين إجباري', //2
//   ], pathImage: compulsionData[7].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'ممر خاص بالمعاقين', //0
//     guidanceData[11].title, //1
//     'مركز الإغاثة', //2
//   ], pathImage: guidanceData[11].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'مستشفى', //0
//     'مخيم', //1
//     guidanceData[6].title, //2
//   ], pathImage: guidanceData[6].imageUrl, numberAnser: 2),
//   Test(quze: [
//     dangerData[9].title, //0
//     'مخفض للسرعة من نوع مسنم', //1
//     'خروج دراجات عادية', //2
//   ], pathImage: dangerData[9].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'تساقط الأحجار', //0
//     dangerData[14].title, //1
//     'انتباه حيوانات الغابة', //2
//   ], pathImage: dangerData[14].imageUrl, numberAnser: 1),
//   Test(quze: [
//     dangerData[30].title, //0
//     dangerData[29].title, //1
//     dangerData[16].title, //2
//   ], pathImage: dangerData[30].imageUrl, numberAnser: 0),
//   Test(quze: [
//     dangerData[11].title, //0
//     dangerData[1].title, //1
//     dangerData[31].title, //2
//   ], pathImage: dangerData[31].imageUrl, numberAnser: 2),
// ];
// final List<Test> testData7 = [
//   Test(quze: [
//     'الأفضلية للسيارة القادمة من الجهة المقابلة', //0
//     'ممنوع مرور على السيارات التي يتجاوز وزن وحمولة احد محاورها 2طن', //1
//     prohibitionData[4].title, //2
//   ], pathImage: prohibitionData[4].imageUrl, numberAnser: 2),
//   Test(quze: [
//     prohibitionData[8].title, //0
//     'ممنوع مرور العربات التي تحمل مواد متفجرة', //1
//     'ممنوع استعمال المنبه الصوتي', //2
//   ], pathImage: prohibitionData[8].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'انتباه حيوانات الغابة', //0
//     dangerData[10].title, //1
//     'انتباه الرياح', //2
//   ], pathImage: dangerData[10].imageUrl, numberAnser: 1),
//   Test(quze: [
//     dangerData[16].title, //0
//     'تقاطع الطرق الأسبقية جهة اليمين', //1
//     'معبر أطفال المدارس', //2
//   ], pathImage: dangerData[16].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'محطة الوقوف', //0
//     guidanceData[14].title, //1
//     'باركينك', //2
//   ], pathImage: guidanceData[14].imageUrl, numberAnser: 1),
//   Test(quze: [
//     guidanceData[11].title, //0
//     'ممر الدرجات الهوائية', //1
//     'مخيم', //2
//   ], pathImage: guidanceData[11].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'إتجاه السير الإجباري إلى اليمين في ملتقى طرق القادم', //0
//     'إنعطاف إجباري على اليمين', //1
//     compulsionData[11].title, //2
//   ], pathImage: compulsionData[11].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'نهاية تحديد السرعة في 50', //0
//     theendoftheprohibitionTraffic[0].title, //1
//     'نهاية منع إستعمال المنبه الصوتي', //2
//   ], pathImage: theendoftheprohibitionTraffic[0].imageUrl, numberAnser: 1),
//   Test(quze: [
//     dangerData[26].title, //0
//     dangerData[0].title, //1
//     dangerData[2].title, //2
//   ], pathImage: dangerData[26].imageUrl, numberAnser: 0),
//   Test(quze: [
//     dangerData[19].title, //0
//     dangerData[1].title, //1
//     dangerData[27].title, //2
//   ], pathImage: dangerData[27].imageUrl, numberAnser: 2),
// ];
// final List<Test> testData8 = [
//   Test(quze: [
//     prohibitionData[6].title, //0
//     'ممنوع مرور المركبات التي تزن 5.5 طن او اكثر', //1
//     'ممنوع مرور المركبات التي عرضها 2.5متر او اكثر', //2
//   ], pathImage: prohibitionData[6].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'ممنوع مرور السيارات و الدراجات', //0
//     prohibitionData[0].title, //1
//     'الأفضلية للسيارة القادمة من الجهة المقابلة', //2
//   ], pathImage: prohibitionData[0].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'منعرج خطير على اليمين', //0
//     'طريق ضيق', //1
//     dangerData[0].title, //2
//   ], pathImage: dangerData[0].imageUrl, numberAnser: 2),
//   Test(quze: [
//     dangerData[19].title, //0
//     'انتباه حيوانات الغابة', //1
//     'إنتباه حيوان أليف', //2
//   ], pathImage: dangerData[19].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'محطة الوقود', //0
//     'ممر خاص بالمعاقين', //1
//     guidanceData[7].title, //2
//   ], pathImage: guidanceData[7].imageUrl, numberAnser: 2),
//   Test(quze: [
//     compulsionData[9].title, //0
//     'إتجاه السير الإجباري إلى اليسار في ملتقى طرق القادم', //1
//     'إجباري السير بسرعة 30 كم/س على الأقل', //2
//   ], pathImage: compulsionData[9].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'حذاري:مفترق طرق دائري و الأولوية للقادمين من جهة اليسار', //0
//     priorityTraffic[8].title, //1
//     'انتباه في المكان', //2
//   ], pathImage: priorityTraffic[8].imageUrl, numberAnser: 1),
//   Test(quze: [
//     priorityTraffic[4].title, //0
//     'حذاري:طريق رئيسي يقطعها طريق فرعي و الأولوية للرئيسي', //1
//     'حذاري:مفترق طرق دائري و الأولوية للقادمين من جهة اليسار', //2
//   ], pathImage: priorityTraffic[4].imageUrl, numberAnser: 0),
//   Test(quze: [
//     dangerData[24].title, //0
//     dangerData[26].title, //1
//     dangerData[4].title, //2
//   ], pathImage: dangerData[24].imageUrl, numberAnser: 0),
//   Test(quze: [
//     dangerData[2].title, //0
//     dangerData[25].title, //1
//     dangerData[3].title, //2
//   ], pathImage: dangerData[25].imageUrl, numberAnser: 1),
// ];
// final List<Test> testData9 = [
//   Test(quze: [
//     tomporaryTraffic[1].title, //0
//     'منعطف لليسار', //1
//     'نزول', //2
//   ], pathImage: tomporaryTraffic[1].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'الطريق يضيق من اليمين', //0
//     tomporaryTraffic[5].title, //1
//     'أمامك حامل راية ', //2
//   ], pathImage: tomporaryTraffic[5].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'إشارات  ضوئية', //0
//     'مسار مغلق', //1
//     tomporaryTraffic[8].title, //2
//   ], pathImage: tomporaryTraffic[8].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'نهاية كل الممنوعات ماعداالوقوف و التوقف', //0
//     theendoftheprohibitionTraffic[1].title, //1
//     'نهاية منع التجاوز', //2
//   ], pathImage: theendoftheprohibitionTraffic[1].imageUrl, numberAnser: 1),
//   Test(quze: [
//     priorityTraffic[0].title, //0
//     'بداية طريق الأولوية', //1
//     'انتباه على 150م ', //2
//   ], pathImage: priorityTraffic[0].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'إتجاه إجباري إلي اليمين', //0
//     compulsionData[13].title, //1
//     'إتجاه إجباري إلي اليسار', //2
//   ], pathImage: compulsionData[13].imageUrl, numberAnser: 1),
//   Test(quze: [
//     compulsionData[11].title, //0
//     'مسلك أو ممر خاص بالراجلين إجباري', //1
//     'ممر أو مسلك خاص بالحيوانات الأليفة', //2
//   ], pathImage: compulsionData[11].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'ممر خاص بالمعاقين', //0
//     'باركينك', //1
//     guidanceData[13].title, //2
//   ], pathImage: guidanceData[13].imageUrl, numberAnser: 2),
//   Test(quze: [
//     dangerData[22].title, //0
//     dangerData[19].title, //1
//     dangerData[7].title, //2
//   ], pathImage: dangerData[22].imageUrl, numberAnser: 0),
//   Test(quze: [
//     dangerData[20].title, //0
//     dangerData[23].title, //1
//     dangerData[0].title, //2
//   ], pathImage: dangerData[23].imageUrl, numberAnser: 1),
// ];
// final List<Test> testData10 = [
//   Test(quze: [
//     theendoftheprohibitionTraffic[3].title, //0
//     'نهاية تحديد السرعة في 50', //1
//     'نهاية منع التجاوز', //2
//   ], pathImage: theendoftheprohibitionTraffic[3].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'قف على 150 م', //0
//     'حذاري:مفنرق طرق و الأولوية للقادمين من جهة اليمين', //1
//     priorityTraffic[4].title, //2
//   ], pathImage: priorityTraffic[4].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'ممر أو مسلك خاص بالحيوانات الأليفة', //0
//     compulsionData[14].title, //1
//     'مسلك أو ممر خاص بالراجلين إجباري', //2
//   ], pathImage: compulsionData[14].imageUrl, numberAnser: 1),
//   Test(quze: [
//     guidanceData[14].title, //0
//     'مركز الإغاثة', //1
//     'طفاية العافية', //2
//   ], pathImage: guidanceData[14].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'ممر الدرجات الهوائية', //0
//     'طريق مسدود', //1
//     guidanceData[8].title, //2
//   ], pathImage: guidanceData[8].imageUrl, numberAnser: 2),
//   Test(quze: [
//     prohibitionData[5].title, //0
//     'ممنوع مرور العربات التي تحمل مواد تلوث المياه', //1
//     'ممنوع التجاوز', //2
//   ], pathImage: prohibitionData[5].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'ممنوع الوقوف مكان خاص', //0
//     prohibitionData[20].title, //1
//     'ممنوع مرور على السيارات التي يتجاوز وزن وحمولة احد محاورها 2طن', //2
//   ], pathImage: prohibitionData[20].imageUrl, numberAnser: 1),
//   Test(quze: [
//     prohibitionData[18].title, //0
//     'ممنوع الإلتفاف للخلف', //1
//     'حاجز الثلج', //2
//   ], pathImage: prohibitionData[18].imageUrl, numberAnser: 0),
//   Test(quze: [
//     prohibitionData[22].title, //0
//     'ممنوع الوقوف مكان خاص', //1
//     'الأداء', //2
//   ], pathImage: prohibitionData[22].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'ممنوع استعمال المنبه الصوتي', //0
//     prohibitionData[14].title, //1
//     'مرور الدراجات و الدراجات النارية ممنوع', //2
//   ], pathImage: prohibitionData[14].imageUrl, numberAnser: 1)
// ];
// final List<Test> testRule1 = [
//   Test(quze: [
//     'السيارة الصفراء', //0
//     'السيارة الحمراء', //1
//   ], pathImage: rilesData[0].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'الزرقاء و الصفراء في نفس الوقت', //0
//     'السيارة الحمراء', //1
//   ], pathImage: rilesData[1].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'السيارة الحمراء', //0
//     'السيارة الزرقاء', //1
//     'السيارة الصفراء', //2
//   ], pathImage: rilesData[2].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'السيارة الزرقاء', //0
//     'السيارة الحمراء تنتظر الضوء الأخضر', //1
//     'السيارة الصفراء و الرجل في نفس الوقت', //2
//   ], pathImage: rilesData[3].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'السيارتان الحمراء و الزرقاء', //0
//     'السيارة الصفراء', //1
//   ], pathImage: rilesData[4].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'السيارة الصفراء تنتظر الضوء الأخضر', //0
//     'السيارة الحمراء', //1
//     'السيارة الزرقاء تنتظر الضوء الأخضر', //2
//   ], pathImage: rilesData[5].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'السيارة الزرقاء', //0
//     'السيارة الحمراء', //1
//     'السيارة الصفراء', //2
//   ], pathImage: rilesData[6].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'الخضراء تتجاوز الحمراء', //0
//     'السيارة الصفراء تتابع السيارة الخضراء', //1
//   ], pathImage: rilesData[7].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'السيارة البيضاء', //0
//     'السيارة الزرقاء', //1
//   ], pathImage: rilesData[8].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'السيارة الحمراء', //0
//     'السيارتان الخضراء و الصفراء', //1
//   ], pathImage: rilesData[9].imageUrl, numberAnser: 1),
// ];
// final List<Test> testRule2 = [
//   Test(quze: [
//     'السيارتان الصفراء و الزرقاء', //0
//     'السيارة الحمراء', //1
//   ], pathImage: rilesData[10].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'السيارة الحمراء', //0
//     'السيارتان الزرقاء و الصفراء', //1
//   ], pathImage: rilesData[11].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'السيارتان الحمراء و الزرقاء', //0
//     'السيارة الصفراء', //1
//   ], pathImage: rilesData[12].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'السيارة الحمراء', //0
//     'السيارة الصفراء', //1
//     'السيارة الزرقاء', //2
//   ], pathImage: rilesData[13].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'السيارة الزرقاء تتجاوز السيارة الصفراء', //0
//     'السيارة الزرقاء لا تستطيع تجاوز السيارة الصفراء', //1
//   ], pathImage: rilesData[14].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'السيارة الزرقاء', //0
//     'السيارة الحمراء', //1
//   ], pathImage: rilesData[15].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'السيارتان الزرقاء و الحمراء', //1
//     'السيارة الصفراء', //2
//   ], pathImage: rilesData[16].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'السيارة الحمراء', //0
//     'السيارة الزرقاء', //1
//     'السيارة الصفراء', //2
//   ], pathImage: rilesData[17].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'مكان علامة إستفهام لاتوجد إشارة', //0
//     'مكان علامة الإستفهام توجد إشارة قف على 150م', //1
//   ], pathImage: rilesData[18].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'السيارة الحمراء', //0
//     'السيارة الصفراء', //1
//     'السيارة الزرقاء', //2
//   ], pathImage: rilesData[19].imageUrl, numberAnser: 1),
// ];
// final List<Test> testRule3 = [
//   Test(quze: [
//     'السيارة الزرقاء تنتظر الضوء الأحمر', //0
//     'السيارة الصفراء تنتظر الضوء الأحمر', //1
//     'السيارة الحمراء', //2
//   ], pathImage: rilesData[20].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'السيارة الزرقاء', //0
//     'السيارة الحمراء', //1
//     'السيارة الصفراء', //2
//   ], pathImage: rilesData[21].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'السيارة الحمراء', //0
//     'السيارة الزرقاء', //1
//     'السيارة الصفراء', //2
//   ], pathImage: rilesData[22].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'السيارة الصفراء', //0
//     'السيارة الزرقاء', //1
//     'السيارة الحمراء', //2
//   ], pathImage: rilesData[23].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'السيارتان الصفراوتان و الزرقاء', //0
//     'السيارة الحمراء', //1
//   ], pathImage: rilesData[24].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'لاتوجد إشارة ناقصة', //0
//     'الإشارة الناقصة هي ترك المرور', //1
//   ], pathImage: rilesData[25].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'السيارة الصفراء', //0
//     'السيارة الحمراء', //1
//   ], pathImage: rilesData[26].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'السيارة الصفراء', //0
//     'السيارة الحمراء', //1
//     'السيارة الزرقاء', //2
//   ], pathImage: rilesData[27].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'السيارة الصفراء و الرجل في نفس الوقت', //0
//     'السيارة الحمراء', //1
//     'السيارة الزرقاء', //2
//   ], pathImage: rilesData[28].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'السيارة الصفراء', //0
//     'السيارة الحمراء', //1
//     'السيارتان الزرقاء و الخضراء', //2
//   ], pathImage: rilesData[29].imageUrl, numberAnser: 2),
// ];
// final List<Test> testRule4 = [
//   Test(quze: [
//     'السيارة الحمراء', //0
//     'السيارتان الزرقاء و الخضراء', //1
//     'السيارة الصفراء', //2
//   ], pathImage: rilesData[30].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'السيارة الحمراء', //0
//     'السيارة الزرقاء', //1
//     'السيارة الصفراء', //2
//   ], pathImage: rilesData[31].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'السيارتان الحمراء و السوداء', //0
//     'السيارة الصفراء', //1
//     'السيارتان الزرقاء', //2
//   ], pathImage: rilesData[32].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'السيارة الزرقاء', //0
//     'السيارتان الحمراء و الصفراء', //1
//     'السيارة البيضاء', //2
//   ], pathImage: rilesData[34].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'السيارة الصفراء', //0
//     'السيارتان الزرقاوان', //1
//     'السيارة الحمراء', //2
//   ], pathImage: rilesData[35].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'السيارة الصفراء', //0
//     'السيارتان الحمراء و الزرقاء', //1
//   ], pathImage: rilesData[36].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'السيارتان الصفراء و الحمراء', //0
//     'السيارتان الزرقاء و البيضاء', //1
//   ], pathImage: rilesData[37].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'السيارتان الحمراء و الصفراء', //0
//     'السيارة الزرقاء', //1
//   ], pathImage: rilesData[38].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'السيارة الصفراء', //0
//     'السيارة الزرقاء', //1
//     'السيارتان الحمراوتان', //2
//   ], pathImage: rilesData[39].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'السيارة الحمراء', //0
//     'السيارة الزرقاء', //1
//     'السيارتان الصفراوتان', //2
//   ], pathImage: rilesData[40].imageUrl, numberAnser: 1),
// ];
// final List<Test> testRule5 = [
//   Test(quze: [
//     'السيارة القادمة أولا', //0
//     'السيارة الحمراء أولا', //1
//   ], pathImage: rilesData[41].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'لاتوجد إشارة ناقصة', //0
//     'إشارة طريق ذات أولوية', //1
//   ], pathImage: rilesData[43].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'السيارة الزرقاء', //0
//     'السيارة الخضراء', //1
//     'السيارة الحمراء', //2
//   ], pathImage: rilesData[42].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'السيارة الحمراء', //0
//     'السيارة الصفراء', //1
//   ], pathImage: rilesData[41].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'السيارة الزرقاء', //0
//     'السيارة الحمراء', //1
//     'السيارتان الصفراء و الخضراء', //2
//   ], pathImage: rilesData[45].imageUrl, numberAnser: 2),
//   Test(quze: [
//     'السيارتان الصفراء و الخضراء', //0
//     'السيارة الحمراء', //1
//     'السيارة الزرقاء', //2
//   ], pathImage: rilesData[46].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'السيارة الحمراء', //0
//     'السيارة الصفراء', //1
//   ], pathImage: rilesData[47].imageUrl, numberAnser: 1),
//   Test(quze: [
//     'السيارة الحمراء', //0
//     'السيارة الصفراء', //1
//   ], pathImage: rilesData[48].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'السيارتان الصفراء و الخضراء', //0
//     'السيارتان الزرقاء و الحمراء', //1
//   ], pathImage: rilesData[49].imageUrl, numberAnser: 0),
//   Test(quze: [
//     'السيارة الخضراء', //0
//     'الدراجة', //1
//     'السيارة الحمراء', //2
//     'الشاحنة', //3
//   ], pathImage: rilesData[50].imageUrl, numberAnser: 3),
// ];
class Test {
  final List<String?>? quze;
  final String? pathImage;
  final int numberAnser;
  Test({
    required this.quze,
    required this.pathImage,
    required this.numberAnser,
  });
}

//

final List<List<Test>> testDataTotal = [
  testData1,
  testData2,
  testData3,
  testData4,
  testData5,
  testData6,
  testData7,
  testData8,
  testData9,
  testData10,
  testRule1,
  testRule2,
  testRule3,
  testRule4,
  testRule5,
];

//data test
final List<Test> testData1 = [
  Test(
      pathImage: prohibitionData[0].imageUrl,
      quze: [
        'مممنوع ترك مسافة بين سيارتين اقل من 70 متر', //0
        prohibitionData[0].title!, //1
        'ممنوع مرور المركبات التي تزن 10 طن او اكثر', //2
      ],
      numberAnser: 1),
  Test(quze: [
    'ممنوع مرور المركبات التي تزن 10 طن او اكثر', //0
    'ممنوع تجاوز الشاحنات', //1
    prohibitionData[2].title //2
  ], pathImage: prohibitionData[2].imageUrl, numberAnser: 2),
  //2
  Test(quze: [
    dangerData[2].title,
    'منعرج خطير على اليمين',
    'منعرج خطير على اليسار',
  ], pathImage: dangerData[2].imageUrl, numberAnser: 0),
  Test(quze: [
    'أعط الأفضلية',
    dangerData.last.title,
    'معبر أطفال المدارس',
  ], pathImage: dangerData.last.imageUrl, numberAnser: 1),
  Test(
      quze: [guidanceData.first.title, 'محطة الوقوف', 'مطعم'],
      pathImage: guidanceData.first.imageUrl,
      numberAnser: 0),
  Test(
      quze: ['طريق مسدود', 'مطعم', guidanceData.last.title],
      pathImage: guidanceData.last.imageUrl,
      numberAnser: 2),
  Test(quze: [
    'اتجاه السير الإجباري إلى الأمام أواليمين',
    'إتجاه السير الإجبري إلى الأمام أو اليسار',
    compulsionData.first.title
  ], pathImage: compulsionData.first.imageUrl, numberAnser: 2),
  Test(quze: [
    compulsionData.last.title,
    'إتجاه السير الإجباري إلى الأمام',
    'إتجاه السير الإجباري إلى الأمام',
  ], pathImage: compulsionData.last.imageUrl, numberAnser: 0),
  Test(quze: [
    priorityTraffic.first.title,
    'حذاري:مفنرق طرق و الأولوية للقادمين من جهة اليمين',
    'حذاري:مفترق طرق دائري و الأولوية للقادمين من جهة اليسار',
  ], pathImage: priorityTraffic.first.imageUrl, numberAnser: 0),
  Test(quze: [
    priorityTraffic.last.title,
    'نهاية طريق الأولوية',
    'بداية طريق الأولوية',
  ], pathImage: priorityTraffic.last.imageUrl, numberAnser: 0),
];
final List<Test> testData2 = [
  Test(
      pathImage: prohibitionData[3].imageUrl,
      quze: [
        'مممنوع ترك مسافة بين سيارتين اقل من 70 متر', //0
        prohibitionData[3].title!, //1
        'ممنوع مرور المركبات التي تزن 10 طن او اكثر', //2
      ],
      numberAnser: 1), //ttr
  Test(quze: [
    'ممنوع مرور المركبات التي تزن 10 طن او اكثر', //0
    'ممنوع تجاوز الشاحنات', //1
    prohibitionData[4].title //2
  ], pathImage: prohibitionData[4].imageUrl, numberAnser: 2),
  Test(quze: [
    tomporaryTraffic.first.title,
    'الطريق يضيق من اليسار',
    'الطريق يضيق من اليمين',
  ], pathImage: tomporaryTraffic.first.imageUrl, numberAnser: 0),
  Test(
      quze: ['مسار مغلق', 'أعمال طرق', tomporaryTraffic.last.title],
      pathImage: tomporaryTraffic.last.imageUrl,
      numberAnser: 2),
  Test(quze: [
    'نهاية منع التجاوز',
    theendoftheprohibitionTraffic.last.title,
    'نهاية تحديد السرعة في 50',
  ], pathImage: theendoftheprohibitionTraffic.last.imageUrl, numberAnser: 1),
  Test(quze: [
    theendoftheprohibitionTraffic.first.title,
    'نهاية منع التجاوز',
    'نهاية كل الممنوعات ماعداالوقوف و التوقف',
  ], pathImage: theendoftheprohibitionTraffic.first.imageUrl, numberAnser: 0),
  Test(quze: [
    'قف على 150 م',
    priorityTraffic[4].title,
    'قف في المكان',
  ], pathImage: priorityTraffic[4].imageUrl, numberAnser: 1),
  Test(quze: [
    'إتجاه السير الإجبري إلى الأمام أو اليسار',
    'مسلك أو ممر إجباري للخيالة',
    compulsionData[3].title
  ], pathImage: compulsionData[3].imageUrl, numberAnser: 2),
  Test(quze: [
    guidanceData[9].title, //0
    guidanceData[0].title, //1
    guidanceData[2].title, //2
  ], pathImage: guidanceData[9].imageUrl, numberAnser: 0),
  Test(quze: [
    guidanceData[2].title, //0
    guidanceData[6].title, //1
    guidanceData[0].title, //2
  ], pathImage: guidanceData[6].imageUrl, numberAnser: 1),
];
final List<Test> testData3 = [
  Test(
      pathImage: prohibitionData[4].imageUrl,
      quze: [
        'مممنوع ترك مسافة بين سيارتين اقل من 70 متر', //0
        prohibitionData[4].title!, //1
        'ممنوع مرور المركبات التي تزن 10 طن او اكثر', //2
      ],
      numberAnser: 1), //ttr
  Test(quze: [
    'ممنوع مرور المركبات التي تزن 10 طن او اكثر', //0
    'ممنوع تجاوز الشاحنات', //1
    prohibitionData[2].title //2
  ], pathImage: prohibitionData[2].imageUrl, numberAnser: 2), //tt
  //2
  Test(quze: [
    tomporaryTraffic[2].title,
    'طريق ذو إتجاهين',
    'الطريق يضيق من اليمين',
  ], pathImage: tomporaryTraffic[2].imageUrl, numberAnser: 0),
  Test(
      quze: [
        'مسار مغلق',
        'نزول',
        tomporaryTraffic[tomporaryTraffic.length - 2].title
      ],
      pathImage: tomporaryTraffic[tomporaryTraffic.length - 2].imageUrl,
      numberAnser: 2),
  Test(
      quze: [
        'نهاية منع إستعمال المنبه الصوتي',
        theendoftheprohibitionTraffic[theendoftheprohibitionTraffic.length - 2]
            .title,
        'نهاية تحديد السرعة في 50',
      ],
      pathImage: theendoftheprohibitionTraffic[
              theendoftheprohibitionTraffic.length - 2]
          .imageUrl,
      numberAnser: 1),
  Test(quze: [
    theendoftheprohibitionTraffic[1].title,
    'نهاية منع التجاوز',
    'نهاية كل الممنوعات ماعداالوقوف و التوقف',
  ], pathImage: theendoftheprohibitionTraffic[1].imageUrl, numberAnser: 0),
  Test(quze: [
    'قف على 150 م',
    priorityTraffic[2].title,
    'قف في المكان',
  ], pathImage: priorityTraffic[2].imageUrl, numberAnser: 1),
  Test(quze: [
    'إتجاه السير الإجباري إلى اليسار في ملتقى طرق القادم',
    'مسلك أو ممر إجباري للخيالة',
    compulsionData[1].title
  ], pathImage: compulsionData[1].imageUrl, numberAnser: 2),
  Test(quze: [
    compulsionData[7].title, //0
    compulsionData[4].title, //1
    compulsionData[0].title, //2
  ], pathImage: compulsionData[7].imageUrl, numberAnser: 0),
  Test(quze: [
    compulsionData[8].title, //0
    compulsionData[6].title, //1
    compulsionData[4].title, //2
  ], pathImage: compulsionData[6].imageUrl, numberAnser: 1),
];
final List<Test> testData4 = [
  Test(quze: [
    tomporaryTraffic[0].title, //0
    'طريق ذو إتجاهين', //1
    'الطريق يضيق من اليمين' //2
  ], pathImage: tomporaryTraffic[0].imageUrl, numberAnser: 0),
  Test(quze: [
    'محطة الوقوف', //0
    'باركينك بأداء', //1
    guidanceData[2].title, //2
  ], pathImage: guidanceData[2].imageUrl, numberAnser: 2),
  Test(quze: [
    'حذاري:مفترق طرق دائري و الأولوية للقادمين من جهة اليسار', //0
    priorityTraffic[4].title, //1
    'نهاية طريق الأولوية', //2
  ], pathImage: priorityTraffic[4].imageUrl, numberAnser: 1),
  Test(quze: [
    'اتجاه السير الإجباري إلى الأمام أواليمين', //0
    compulsionData[1].title, //1
    'إتجاه السير الإجباري إلى اليمين في ملتقى طرق القادم' //2
  ], pathImage: compulsionData[1].imageUrl, numberAnser: 1),
  Test(quze: [
    guidanceData[0].title, //0
    'محطة الطرمواي', //1
    'ممر الدرجات الهوائية', //2
  ], pathImage: guidanceData[0].imageUrl, numberAnser: 0),
  Test(quze: [
    'منعرج خطير على اليسار', //0
    'طريق مسنم', //1
    dangerData[5].title, //2
  ], pathImage: dangerData[5].imageUrl, numberAnser: 2),
  Test(quze: [
    'ممنوع مرور السيارات و الدراجات', //0
    prohibitionData[7].title, //1
    ' ممنوع مرور قطيع حيوانات', //2
  ], pathImage: prohibitionData[7].imageUrl, numberAnser: 1),
  Test(quze: [
    prohibitionData[10].title, //0
    'ممنوع تجاوز سرعة 60 كيلومتر في الساعة', //1
    'ممنوع استعمال المنبه الصوتي', //2
  ], pathImage: prohibitionData[10].imageUrl, numberAnser: 0),
  Test(quze: [
    dangerData[20].title, //0
    dangerData[17].title, //1
    dangerData[18].title, //2
  ], pathImage: dangerData[20].imageUrl, numberAnser: 0),
  Test(quze: [
    dangerData[7].title, //0
    dangerData[19].title, //1
    dangerData[9].title, //2
  ], pathImage: dangerData[19].imageUrl, numberAnser: 1),
];

final List<Test> testData5 = [
  Test(quze: [
    prohibitionData[4].title, //0
    'الأفضلية للسيارة القادمة من الجهة المقابلة', //1
    'ممنوع مرور على الشاحنات التي يتجاوز وزن و حمولة محاورها 5.5 طن', //2
  ], pathImage: prohibitionData[4].imageUrl, numberAnser: 0),
  Test(quze: [
    'منعرج خطير على اليسار', //0
    'حذاري منعرجات متتالية أولها إلى اليسار', //1
    dangerData[1].title, //2
  ], pathImage: dangerData[1].imageUrl, numberAnser: 2),
  Test(quze: [
    'محطة الوقوف', //0
    guidanceData[0].title, //1
    'ممر الطرامواي', //2
  ], pathImage: guidanceData[0].imageUrl, numberAnser: 1),
  Test(quze: [
    compulsionData[0].title, //0
    'إتجاه السير إجباري في ملتقى طرق علي اليمين أواليسار', //1
    'إتجاه السير الإجباري إلى الأمام', //2
  ], pathImage: compulsionData[0].imageUrl, numberAnser: 0),
  Test(quze: [
    'مسلك أو ممر إجباري للخيالة', //0
    'إتجاه إجباري إلي اليمين', //1
    compulsionData[2].title, //2
  ], pathImage: compulsionData[2].imageUrl, numberAnser: 2),
  Test(quze: [
    'نهاية منع إستعمال المنبه الصوتي', //0
    theendoftheprohibitionTraffic[2].title, //1
    'نهاية كل الممنوعات ماعداالوقوف و التوقف', //2
  ], pathImage: theendoftheprohibitionTraffic[2].imageUrl, numberAnser: 1),
  Test(quze: [
    tomporaryTraffic[5].title, //0
    'الطريق يضيق من اليمين', //1
    'طريق ذو إتجاهين', //2
  ], pathImage: tomporaryTraffic[5].imageUrl, numberAnser: 0),
  Test(quze: [
    dangerData[8].title, //0
    'منعرج خطير على اليمين', //1
    'حذاري منعرجات متتالية أولها إلى اليسار', //2
  ], pathImage: dangerData[8].imageUrl, numberAnser: 0),
  Test(quze: [
    dangerData[28].title, //0
    dangerData[2].title, //1
    dangerData[11].title, //2
  ], pathImage: dangerData[28].imageUrl, numberAnser: 0),
  Test(quze: [
    dangerData[2].title, //0
    dangerData[29].title, //1
    dangerData[16].title, //2
  ], pathImage: dangerData[29].imageUrl, numberAnser: 1),
];
final List<Test> testData6 = [
  Test(quze: [
    'إشارات  ضوئية', //0
    tomporaryTraffic[2].title, //1
    'منعطف لليمين', //2
  ], pathImage: tomporaryTraffic[2].imageUrl, numberAnser: 1),
  Test(quze: [
    'بداية طريق الأولوية', //0
    'حذاري:طريق رئيسي يقطعها طريق فرعي و الأولوية للرئيسي', //1
    priorityTraffic[1].title, //2
  ], pathImage: priorityTraffic[1].imageUrl, numberAnser: 2),
  Test(quze: [
    'انتباه في المكان', //0
    priorityTraffic[0].title, //1
    'قف في المكان', //2
  ], pathImage: priorityTraffic[0].imageUrl, numberAnser: 1),
  Test(quze: [
    compulsionData[7].title, //0
    'مسلك أو ممر إجباري للخيالة', //1
    'مسلك أو ممر خاص بالراجلين إجباري', //2
  ], pathImage: compulsionData[7].imageUrl, numberAnser: 0),
  Test(quze: [
    'ممر خاص بالمعاقين', //0
    guidanceData[11].title, //1
    'مركز الإغاثة', //2
  ], pathImage: guidanceData[11].imageUrl, numberAnser: 1),
  Test(quze: [
    'مستشفى', //0
    'مخيم', //1
    guidanceData[6].title, //2
  ], pathImage: guidanceData[6].imageUrl, numberAnser: 2),
  Test(quze: [
    dangerData[9].title, //0
    'مخفض للسرعة من نوع مسنم', //1
    'خروج دراجات عادية', //2
  ], pathImage: dangerData[9].imageUrl, numberAnser: 0),
  Test(quze: [
    'تساقط الأحجار', //0
    dangerData[14].title, //1
    'انتباه حيوانات الغابة', //2
  ], pathImage: dangerData[14].imageUrl, numberAnser: 1),
  Test(quze: [
    dangerData[30].title, //0
    dangerData[29].title, //1
    dangerData[16].title, //2
  ], pathImage: dangerData[30].imageUrl, numberAnser: 0),
  Test(quze: [
    dangerData[11].title, //0
    dangerData[1].title, //1
    dangerData[31].title, //2
  ], pathImage: dangerData[31].imageUrl, numberAnser: 2),
];
final List<Test> testData7 = [
  Test(quze: [
    'الأفضلية للسيارة القادمة من الجهة المقابلة', //0
    'ممنوع مرور على السيارات التي يتجاوز وزن وحمولة احد محاورها 2طن', //1
    prohibitionData[4].title, //2
  ], pathImage: prohibitionData[4].imageUrl, numberAnser: 2),
  Test(quze: [
    prohibitionData[8].title, //0
    'ممنوع مرور العربات التي تحمل مواد متفجرة', //1
    'ممنوع استعمال المنبه الصوتي', //2
  ], pathImage: prohibitionData[8].imageUrl, numberAnser: 0),
  Test(quze: [
    'انتباه حيوانات الغابة', //0
    dangerData[10].title, //1
    'انتباه الرياح', //2
  ], pathImage: dangerData[10].imageUrl, numberAnser: 1),
  Test(quze: [
    dangerData[16].title, //0
    'تقاطع الطرق الأسبقية جهة اليمين', //1
    'معبر أطفال المدارس', //2
  ], pathImage: dangerData[16].imageUrl, numberAnser: 0),
  Test(quze: [
    'محطة الوقوف', //0
    guidanceData[14].title, //1
    'باركينك', //2
  ], pathImage: guidanceData[14].imageUrl, numberAnser: 1),
  Test(quze: [
    guidanceData[11].title, //0
    'ممر الدرجات الهوائية', //1
    'مخيم', //2
  ], pathImage: guidanceData[11].imageUrl, numberAnser: 0),
  Test(quze: [
    'إتجاه السير الإجباري إلى اليمين في ملتقى طرق القادم', //0
    'إنعطاف إجباري على اليمين', //1
    compulsionData[11].title, //2
  ], pathImage: compulsionData[11].imageUrl, numberAnser: 2),
  Test(quze: [
    'نهاية تحديد السرعة في 50', //0
    theendoftheprohibitionTraffic[0].title, //1
    'نهاية منع إستعمال المنبه الصوتي', //2
  ], pathImage: theendoftheprohibitionTraffic[0].imageUrl, numberAnser: 1),
  Test(quze: [
    dangerData[26].title, //0
    dangerData[0].title, //1
    dangerData[2].title, //2
  ], pathImage: dangerData[26].imageUrl, numberAnser: 0),
  Test(quze: [
    dangerData[19].title, //0
    dangerData[1].title, //1
    dangerData[27].title, //2
  ], pathImage: dangerData[27].imageUrl, numberAnser: 2),
];
final List<Test> testData8 = [
  Test(quze: [
    prohibitionData[6].title, //0
    'ممنوع مرور المركبات التي تزن 5.5 طن او اكثر', //1
    'ممنوع مرور المركبات التي عرضها 2.5متر او اكثر', //2
  ], pathImage: prohibitionData[6].imageUrl, numberAnser: 0),
  Test(quze: [
    'ممنوع مرور السيارات و الدراجات', //0
    prohibitionData[0].title, //1
    'الأفضلية للسيارة القادمة من الجهة المقابلة', //2
  ], pathImage: prohibitionData[0].imageUrl, numberAnser: 1),
  Test(quze: [
    'منعرج خطير على اليمين', //0
    'طريق ضيق', //1
    dangerData[0].title, //2
  ], pathImage: dangerData[0].imageUrl, numberAnser: 2),
  Test(quze: [
    dangerData[19].title, //0
    'انتباه حيوانات الغابة', //1
    'إنتباه حيوان أليف', //2
  ], pathImage: dangerData[19].imageUrl, numberAnser: 0),
  Test(quze: [
    'محطة الوقود', //0
    'ممر خاص بالمعاقين', //1
    guidanceData[7].title, //2
  ], pathImage: guidanceData[7].imageUrl, numberAnser: 2),
  Test(quze: [
    compulsionData[9].title, //0
    'إتجاه السير الإجباري إلى اليسار في ملتقى طرق القادم', //1
    'إجباري السير بسرعة 30 كم/س على الأقل', //2
  ], pathImage: compulsionData[9].imageUrl, numberAnser: 0),
  Test(quze: [
    'حذاري:مفترق طرق دائري و الأولوية للقادمين من جهة اليسار', //0
    priorityTraffic[8].title, //1
    'انتباه في المكان', //2
  ], pathImage: priorityTraffic[8].imageUrl, numberAnser: 1),
  Test(quze: [
    priorityTraffic[4].title, //0
    'حذاري:طريق رئيسي يقطعها طريق فرعي و الأولوية للرئيسي', //1
    'حذاري:مفترق طرق دائري و الأولوية للقادمين من جهة اليسار', //2
  ], pathImage: priorityTraffic[4].imageUrl, numberAnser: 0),
  Test(quze: [
    dangerData[24].title, //0
    dangerData[26].title, //1
    dangerData[4].title, //2
  ], pathImage: dangerData[24].imageUrl, numberAnser: 0),
  Test(quze: [
    dangerData[2].title, //0
    dangerData[25].title, //1
    dangerData[3].title, //2
  ], pathImage: dangerData[25].imageUrl, numberAnser: 1),
];
final List<Test> testData9 = [
  Test(quze: [
    tomporaryTraffic[1].title, //0
    'منعطف لليسار', //1
    'نزول', //2
  ], pathImage: tomporaryTraffic[1].imageUrl, numberAnser: 0),
  Test(quze: [
    'الطريق يضيق من اليمين', //0
    tomporaryTraffic[5].title, //1
    'أمامك حامل راية ', //2
  ], pathImage: tomporaryTraffic[5].imageUrl, numberAnser: 1),
  Test(quze: [
    'إشارات  ضوئية', //0
    'مسار مغلق', //1
    tomporaryTraffic[8].title, //2
  ], pathImage: tomporaryTraffic[8].imageUrl, numberAnser: 2),
  Test(quze: [
    'نهاية كل الممنوعات ماعداالوقوف و التوقف', //0
    theendoftheprohibitionTraffic[1].title, //1
    'نهاية منع التجاوز', //2
  ], pathImage: theendoftheprohibitionTraffic[1].imageUrl, numberAnser: 1),
  Test(quze: [
    priorityTraffic[0].title, //0
    'بداية طريق الأولوية', //1
    'انتباه على 150م ', //2
  ], pathImage: priorityTraffic[0].imageUrl, numberAnser: 0),
  Test(quze: [
    'إتجاه إجباري إلي اليمين', //0
    compulsionData[13].title, //1
    'إتجاه إجباري إلي اليسار', //2
  ], pathImage: compulsionData[13].imageUrl, numberAnser: 1),
  Test(quze: [
    compulsionData[11].title, //0
    'مسلك أو ممر خاص بالراجلين إجباري', //1
    'ممر أو مسلك خاص بالحيوانات الأليفة', //2
  ], pathImage: compulsionData[11].imageUrl, numberAnser: 0),
  Test(quze: [
    'ممر خاص بالمعاقين', //0
    'باركينك', //1
    guidanceData[13].title, //2
  ], pathImage: guidanceData[13].imageUrl, numberAnser: 2),
  Test(quze: [
    dangerData[22].title, //0
    dangerData[19].title, //1
    dangerData[7].title, //2
  ], pathImage: dangerData[22].imageUrl, numberAnser: 0),
  Test(quze: [
    dangerData[20].title, //0
    dangerData[23].title, //1
    dangerData[0].title, //2
  ], pathImage: dangerData[23].imageUrl, numberAnser: 1),
];
final List<Test> testData10 = [
  Test(quze: [
    theendoftheprohibitionTraffic[3].title, //0
    'نهاية تحديد السرعة في 50', //1
    'نهاية منع التجاوز', //2
  ], pathImage: theendoftheprohibitionTraffic[3].imageUrl, numberAnser: 0),
  Test(quze: [
    'قف على 150 م', //0
    'حذاري:مفنرق طرق و الأولوية للقادمين من جهة اليمين', //1
    priorityTraffic[4].title, //2
  ], pathImage: priorityTraffic[4].imageUrl, numberAnser: 2),
  Test(quze: [
    'ممر أو مسلك خاص بالحيوانات الأليفة', //0
    compulsionData[14].title, //1
    'مسلك أو ممر خاص بالراجلين إجباري', //2
  ], pathImage: compulsionData[14].imageUrl, numberAnser: 1),
  Test(quze: [
    guidanceData[14].title, //0
    'مركز الإغاثة', //1
    'طفاية العافية', //2
  ], pathImage: guidanceData[14].imageUrl, numberAnser: 0),
  Test(quze: [
    'ممر الدرجات الهوائية', //0
    'طريق مسدود', //1
    guidanceData[8].title, //2
  ], pathImage: guidanceData[8].imageUrl, numberAnser: 2),
  Test(quze: [
    prohibitionData[5].title, //0
    'ممنوع مرور العربات التي تحمل مواد تلوث المياه', //1
    'ممنوع التجاوز', //2
  ], pathImage: prohibitionData[5].imageUrl, numberAnser: 0),
  Test(quze: [
    'ممنوع الوقوف مكان خاص', //0
    prohibitionData[20].title, //1
    'ممنوع مرور على السيارات التي يتجاوز وزن وحمولة احد محاورها 2طن', //2
  ], pathImage: prohibitionData[20].imageUrl, numberAnser: 1),
  Test(quze: [
    prohibitionData[18].title, //0
    'ممنوع الإلتفاف للخلف', //1
    'حاجز الثلج', //2
  ], pathImage: prohibitionData[18].imageUrl, numberAnser: 0),
  Test(quze: [
    prohibitionData[22].title, //0
    'ممنوع الوقوف مكان خاص', //1
    'الأداء', //2
  ], pathImage: prohibitionData[22].imageUrl, numberAnser: 0),
  Test(quze: [
    'ممنوع استعمال المنبه الصوتي', //0
    prohibitionData[14].title, //1
    'مرور الدراجات و الدراجات النارية ممنوع', //2
  ], pathImage: prohibitionData[14].imageUrl, numberAnser: 1)
];
final List<Test> testRule1 = [
  Test(quze: [
    'السيارة الصفراء', //0
    'السيارة الحمراء', //1
  ], pathImage: rilesData[0].imageUrl, numberAnser: 1),
  Test(quze: [
    'الزرقاء و الصفراء في نفس الوقت', //0
    'السيارة الحمراء', //1
  ], pathImage: rilesData[1].imageUrl, numberAnser: 0),
  Test(quze: [
    'السيارة الحمراء', //0
    'السيارة الزرقاء', //1
    'السيارة الصفراء', //2
  ], pathImage: rilesData[2].imageUrl, numberAnser: 1),
  Test(quze: [
    'السيارة الزرقاء', //0
    'السيارة الحمراء تنتظر الضوء الأخضر', //1
    'السيارة الصفراء و الرجل في نفس الوقت', //2
  ], pathImage: rilesData[3].imageUrl, numberAnser: 2),
  Test(quze: [
    'السيارتان الحمراء و الزرقاء', //0
    'السيارة الصفراء', //1
  ], pathImage: rilesData[4].imageUrl, numberAnser: 0),
  Test(quze: [
    'السيارة الصفراء تنتظر الضوء الأخضر', //0
    'السيارة الحمراء', //1
    'السيارة الزرقاء تنتظر الضوء الأخضر', //2
  ], pathImage: rilesData[5].imageUrl, numberAnser: 1),
  Test(quze: [
    'السيارة الزرقاء', //0
    'السيارة الحمراء', //1
    'السيارة الصفراء', //2
  ], pathImage: rilesData[6].imageUrl, numberAnser: 2),
  Test(quze: [
    'الخضراء تتجاوز الحمراء', //0
    'السيارة الصفراء تتابع السيارة الخضراء', //1
  ], pathImage: rilesData[7].imageUrl, numberAnser: 0),
  Test(quze: [
    'السيارة البيضاء', //0
    'السيارة الزرقاء', //1
  ], pathImage: rilesData[8].imageUrl, numberAnser: 1),
  Test(quze: [
    'السيارة الحمراء', //0
    'السيارتان الخضراء و الصفراء', //1
  ], pathImage: rilesData[9].imageUrl, numberAnser: 1),
];
final List<Test> testRule2 = [
  Test(quze: [
    'السيارتان الصفراء و الزرقاء', //0
    'السيارة الحمراء', //1
  ], pathImage: rilesData[10].imageUrl, numberAnser: 0),
  Test(quze: [
    'السيارة الحمراء', //0
    'السيارتان الزرقاء و الصفراء', //1
  ], pathImage: rilesData[11].imageUrl, numberAnser: 1),
  Test(quze: [
    'السيارتان الحمراء و الزرقاء', //0
    'السيارة الصفراء', //1
  ], pathImage: rilesData[12].imageUrl, numberAnser: 0),
  Test(quze: [
    'السيارة الحمراء', //0
    'السيارة الصفراء', //1
    'السيارة الزرقاء', //2
  ], pathImage: rilesData[13].imageUrl, numberAnser: 2),
  Test(quze: [
    'السيارة الزرقاء تتجاوز السيارة الصفراء', //0
    'السيارة الزرقاء لا تستطيع تجاوز السيارة الصفراء', //1
  ], pathImage: rilesData[14].imageUrl, numberAnser: 1),
  Test(quze: [
    'السيارة الزرقاء', //0
    'السيارة الحمراء', //1
  ], pathImage: rilesData[15].imageUrl, numberAnser: 0),
  Test(quze: [
    '', //0
    'السيارتان الزرقاء و الحمراء', //1
    'السيارة الصفراء', //2
  ], pathImage: rilesData[16].imageUrl, numberAnser: 1),
  Test(quze: [
    'السيارة الحمراء', //0
    'السيارة الزرقاء', //1
    'السيارة الصفراء', //2
  ], pathImage: rilesData[17].imageUrl, numberAnser: 2),
  Test(quze: [
    'مكان علامة إستفهام لاتوجد إشارة', //0
    'مكان علامة الإستفهام توجد إشارة قف على 150م', //1
  ], pathImage: rilesData[18].imageUrl, numberAnser: 1),
  Test(quze: [
    'السيارة الحمراء', //0
    'السيارة الصفراء', //1
    'السيارة الزرقاء', //2
  ], pathImage: rilesData[19].imageUrl, numberAnser: 1),
];
final List<Test> testRule3 = [
  Test(quze: [
    'السيارة الزرقاء تنتظر الضوء الأحمر', //0
    'السيارة الصفراء تنتظر الضوء الأحمر', //1
    'السيارة الحمراء', //2
  ], pathImage: rilesData[20].imageUrl, numberAnser: 2),
  Test(quze: [
    'السيارة الزرقاء', //0
    'السيارة الحمراء', //1
    'السيارة الصفراء', //2
  ], pathImage: rilesData[21].imageUrl, numberAnser: 0),
  Test(quze: [
    'السيارة الحمراء', //0
    'السيارة الزرقاء', //1
    'السيارة الصفراء', //2
  ], pathImage: rilesData[22].imageUrl, numberAnser: 1),
  Test(quze: [
    'السيارة الصفراء', //0
    'السيارة الزرقاء', //1
    'السيارة الحمراء', //2
  ], pathImage: rilesData[23].imageUrl, numberAnser: 2),
  Test(quze: [
    'السيارتان الصفراوتان و الزرقاء', //0
    'السيارة الحمراء', //1
  ], pathImage: rilesData[24].imageUrl, numberAnser: 0),
  Test(quze: [
    'لاتوجد إشارة ناقصة', //0
    'الإشارة الناقصة هي ترك المرور', //1
  ], pathImage: rilesData[25].imageUrl, numberAnser: 1),
  Test(quze: [
    'السيارة الصفراء', //0
    'السيارة الحمراء', //1
  ], pathImage: rilesData[26].imageUrl, numberAnser: 1),
  Test(quze: [
    'السيارة الصفراء', //0
    'السيارة الحمراء', //1
    'السيارة الزرقاء', //2
  ], pathImage: rilesData[27].imageUrl, numberAnser: 2),
  Test(quze: [
    'السيارة الصفراء و الرجل في نفس الوقت', //0
    'السيارة الحمراء', //1
    'السيارة الزرقاء', //2
  ], pathImage: rilesData[28].imageUrl, numberAnser: 0),
  Test(quze: [
    'السيارة الصفراء', //0
    'السيارة الحمراء', //1
    'السيارتان الزرقاء و الخضراء', //2
  ], pathImage: rilesData[30].imageUrl, numberAnser: 2),
];
final List<Test> testRule4 = [
  Test(quze: [
    'السيارة الحمراء', //0
    'السيارة الزرقاء', //1
    'السيارة الصفراء', //2
  ], pathImage: rilesData[31].imageUrl, numberAnser: 0),
  Test(quze: [
    'السيارتان الزرقاء و الصفراء ', //0
    'السيارتان الحمراء والتي وراءها ', //1
  ], pathImage: rilesData[32].imageUrl, numberAnser: 0),
  Test(quze: [
    '  لاتوجد إشارة ناقصة ', //0
    'الإشارة الناقصة  ترك المرور على بعد 150 متر ', //1
  ], pathImage: rilesData[33].imageUrl, numberAnser: 1),
  Test(quze: [
    'السيارة الزرقاء', //0
    'السيارتان الحمراء و الصفراء', //1
    'السيارتان البيضاء', //2
  ], pathImage: rilesData[34].imageUrl, numberAnser: 1),
  Test(quze: [
    'السيارة الصفراء', //0
    'السيارتان الزرقاوان', //1
    'السيارة الحمراء', //2
  ], pathImage: rilesData[35].imageUrl, numberAnser: 0),
  Test(quze: [
    'السيارة الصفراء', //0
    'السيارتان الحمراء و الزرقاء', //1
  ], pathImage: rilesData[36].imageUrl, numberAnser: 1),
  Test(quze: [
    'السيارتان الصفراء و الحمراء', //0
    'السيارتان الزرقاء و البيضاء', //1
  ], pathImage: rilesData[37].imageUrl, numberAnser: 0),
  Test(quze: [
    'السيارتان الحمراء و الصفراء', //0
    'السيارة الزرقاء', //1
  ], pathImage: rilesData[38].imageUrl, numberAnser: 0),
  Test(quze: [
    'السيارة الصفراء', //0
    'السيارة الزرقاء', //1
    'السيارتان الحمراوتان', //2
  ], pathImage: rilesData[39].imageUrl, numberAnser: 2),
  Test(quze: [
    'السيارة الحمراء', //0
    'السيارة الزرقاء', //1
    'السيارتان الصفراوتان', //2
  ], pathImage: rilesData[40].imageUrl, numberAnser: 1),
];
final List<Test> testRule5 = [
  Test(quze: [
    'السيارة القادمة أولا', //0
    'السيارة الحمراء أولا', //1
  ], pathImage: rilesData[41].imageUrl, numberAnser: 1),
  Test(quze: [
    'لاتوجد إشارة ناقصة', //0
    'إشارة طريق ذات أولوية', //1
  ], pathImage: rilesData[42].imageUrl, numberAnser: 1),
  Test(quze: [
    'السيارة الزرقاء', //0
    'السيارة الخضراء', //1
    'السيارة الحمراء', //2
  ], pathImage: rilesData[43].imageUrl, numberAnser: 2),
  Test(quze: [
    'السيارة الحمراء', //0
    'السيارة الصفراء', //1
  ], pathImage: rilesData[44].imageUrl, numberAnser: 0),
  Test(quze: [
    'السيارة الزرقاء', //0
    'السيارة الحمراء', //1
    'السيارتان الصفراء و الخضراء', //2
  ], pathImage: rilesData[46].imageUrl, numberAnser: 2),
  Test(quze: [
    'السيارة الحمراء', //0
    'السيارة الصفراء', //1
  ], pathImage: rilesData[47].imageUrl, numberAnser: 0),
  Test(quze: [
    'السيارتان الصفراء و الخضراء', //0
    'السيارة الحمراء', //1
    'السيارة الزرقاء', //2
  ], pathImage: rilesData[48].imageUrl, numberAnser: 0),
  Test(quze: [
    'السيارة الخضراء', //0
    'الدراجة', //1
    'السيارة الحمراء', //2
    'الشاحنة', //3
  ], pathImage: rilesData[49].imageUrl, numberAnser: 3),
  Test(quze: [
    'السيارة الزرقاء', //0
    ' تمر السيارتان البيضاء و الصفراء ', //1
    'السيارة الحمراء', //2
  ], pathImage: rilesData[50].imageUrl, numberAnser: 1),
  Test(quze: [
    '   تمر  السيارتان الزرقاء و الخضراء ', //0
    'السيارة الحمراء', //1
    'السيارة الصفراء', //2
  ], pathImage: rilesData[51].imageUrl, numberAnser: 0),
];
