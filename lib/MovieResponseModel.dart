// ///
// /// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
// ///
// class SomeRootEntityMdComicsMdCovers {
// /*
// {
//   "w": 760,
//   "h": 1200,
//   "url": "dfc14954-f855-47a3-9401-4abe2a78621a.jpg",
//   "gpurl": "https://uploads.mangadex.org/covers/d8a959f7-648e-4c8d-8f23-f1f3f8e129f3/dfc14954-f855-47a3-9401-4abe2a78621a.jpg",
//   "b2key": "lalkm.jpg"
// } 
// */

//   int? w;
//   int? h;
//   String? url;
//   String? gpurl;
//   String? b2key;

//   SomeRootEntityMdComicsMdCovers({
//     this.w,
//     this.h,
//     this.url,
//     this.gpurl,
//     this.b2key,
//   });
//   SomeRootEntityMdComicsMdCovers.fromJson(Map<String, dynamic> json) {
//     w = json['w']?.toInt();
//     h = json['h']?.toInt();
//     url = json['url']?.toString();
//     gpurl = json['gpurl']?.toString();
//     b2key = json['b2key']?.toString();
//   }
//   Map<String, dynamic> toJson() {
//     final data = <String, dynamic>{};
//     data['w'] = w;
//     data['h'] = h;
//     data['url'] = url;
//     data['gpurl'] = gpurl;
//     data['b2key'] = b2key;
//     return data;
//   }
// }

// class SomeRootEntityMdComics {
// /*
// {
//   "id": 30118,
//   "title": "One Punch-Man",
//   "slug": "one-punch-man",
//   "country": "jp",
//   "status": 1,
//   "translation_completed": false,
//   "last_chapter": "270",
//   "genres": [
//     292
//   ],
//   "md_covers": [
//     {
//       "w": 760,
//       "h": 1200,
//       "url": "dfc14954-f855-47a3-9401-4abe2a78621a.jpg",
//       "gpurl": "https://uploads.mangadex.org/covers/d8a959f7-648e-4c8d-8f23-f1f3f8e129f3/dfc14954-f855-47a3-9401-4abe2a78621a.jpg",
//       "b2key": "lalkm.jpg"
//     }
//   ]
// } 
// */

//   int? id;
//   String? title;
//   String? slug;
//   String? country;
//   int? status;
//   bool? translationCompleted;
//   String? lastChapter;
//   List<int?>? genres;
//   List<SomeRootEntityMdComicsMdCovers?>? mdCovers;

//   SomeRootEntityMdComics({
//     this.id,
//     this.title,
//     this.slug,
//     this.country,
//     this.status,
//     this.translationCompleted,
//     this.lastChapter,
//     this.genres,
//     this.mdCovers,
//   });
//   SomeRootEntityMdComics.fromJson(Map<String, dynamic> json) {
//     id = json['id']?.toInt();
//     title = json['title']?.toString();
//     slug = json['slug']?.toString();
//     country = json['country']?.toString();
//     status = json['status']?.toInt();
//     translationCompleted = json['translation_completed'];
//     lastChapter = json['last_chapter']?.toString();
//     if (json['genres'] != null) {
//       final v = json['genres'];
//       final arr0 = <int>[];
//       v.forEach((v) {
//         arr0.add(v.toInt());
//       });
//       genres = arr0;
//     }
//     if (json['md_covers'] != null) {
//       final v = json['md_covers'];
//       final arr0 = <SomeRootEntityMdComicsMdCovers>[];
//       v.forEach((v) {
//         arr0.add(SomeRootEntityMdComicsMdCovers.fromJson(v));
//       });
//       mdCovers = arr0;
//     }
//   }
//   Map<String, dynamic> toJson() {
//     final data = <String, dynamic>{};
//     data['id'] = id;
//     data['title'] = title;
//     data['slug'] = slug;
//     data['country'] = country;
//     data['status'] = status;
//     data['translation_completed'] = translationCompleted;
//     data['last_chapter'] = lastChapter;
//     if (genres != null) {
//       final v = genres;
//       final arr0 = [];
//       v!.forEach((v) {
//         arr0.add(v);
//       });
//       data['genres'] = arr0;
//     }
//     if (mdCovers != null) {
//       final v = mdCovers;
//       final arr0 = [];
//       v!.forEach((v) {
//         arr0.add(v!.toJson());
//       });
//       data['md_covers'] = arr0;
//     }
//     return data;
//   }
// }

// class SomeRootEntityMdImages {
// /*
// {
//   "id": 76602774,
//   "name": "0158-001.png",
//   "md_chapter_id": 1838554,
//   "w": 800,
//   "h": 1138,
//   "s": 218574,
//   "gpurl": null,
//   "error": null,
//   "error_count": 0,
//   "b2key": "0158-001-JThKp1ZX6I-H_.png",
//   "origin": null,
//   "optimized": null
// } 
// */

//   int? id;
//   String? name;
//   int? mdChapterId;
//   int? w;
//   int? h;
//   int? s;
//   String? gpurl;
//   String? error;
//   int? errorCount;
//   String? b2key;
//   String? origin;
//   String? optimized;

//   SomeRootEntityMdImages({
//     this.id,
//     this.name,
//     this.mdChapterId,
//     this.w,
//     this.h,
//     this.s,
//     this.gpurl,
//     this.error,
//     this.errorCount,
//     this.b2key,
//     this.origin,
//     this.optimized,
//   });
//   SomeRootEntityMdImages.fromJson(Map<String, dynamic> json) {
//     id = json['id']?.toInt();
//     name = json['name']?.toString();
//     mdChapterId = json['md_chapter_id']?.toInt();
//     w = json['w']?.toInt();
//     h = json['h']?.toInt();
//     s = json['s']?.toInt();
//     gpurl = json['gpurl']?.toString();
//     error = json['error']?.toString();
//     errorCount = json['error_count']?.toInt();
//     b2key = json['b2key']?.toString();
//     origin = json['origin']?.toString();
//     optimized = json['optimized']?.toString();
//   }
//   Map<String, dynamic> toJson() {
//     final data = <String, dynamic>{};
//     data['id'] = id;
//     data['name'] = name;
//     data['md_chapter_id'] = mdChapterId;
//     data['w'] = w;
//     data['h'] = h;
//     data['s'] = s;
//     data['gpurl'] = gpurl;
//     data['error'] = error;
//     data['error_count'] = errorCount;
//     data['b2key'] = b2key;
//     data['origin'] = origin;
//     data['optimized'] = optimized;
//     return data;
//   }
// }

// class SomeRootEntity {
// /*
// {
//   "id": 1838554,
//   "status": "OK",
//   "chap": "270",
//   "last_at": "2022-03-09T23:37:26.000Z",
//   "hid": "vk64L",
//   "created_at": "2022-03-09T23:37:26.429Z",
//   "up_count": 111,
//   "lang": "en",
//   "down_count": 0,
//   "md_images": [
//     {
//       "id": 76602774,
//       "name": "0158-001.png",
//       "md_chapter_id": 1838554,
//       "w": 800,
//       "h": 1138,
//       "s": 218574,
//       "gpurl": null,
//       "error": null,
//       "error_count": 0,
//       "b2key": "0158-001-JThKp1ZX6I-H_.png",
//       "origin": null,
//       "optimized": null
//     }
//   ],
//   "md_comics": {
//     "id": 30118,
//     "title": "One Punch-Man",
//     "slug": "one-punch-man",
//     "country": "jp",
//     "status": 1,
//     "translation_completed": false,
//     "last_chapter": "270",
//     "genres": [
//       292
//     ],
//     "md_covers": [
//       {
//         "w": 760,
//         "h": 1200,
//         "url": "dfc14954-f855-47a3-9401-4abe2a78621a.jpg",
//         "gpurl": "https://uploads.mangadex.org/covers/d8a959f7-648e-4c8d-8f23-f1f3f8e129f3/dfc14954-f855-47a3-9401-4abe2a78621a.jpg",
//         "b2key": "lalkm.jpg"
//       }
//     ]
//   },
//   "max": 270,
//   "count": 1,
//   "distanceTime": "8 hours",
//   "last_at_date": "2022-03-09T23:37:26.000Z"
// } 
// */

//   int? id;
//   String? status;
//   String? chap;
//   String? lastAt;
//   String? hid;
//   String? createdAt;
//   int? upCount;
//   String? lang;
//   int? downCount;
//   List<SomeRootEntityMdImages?>? mdImages;
//   SomeRootEntityMdComics? mdComics;
//   int? max;
//   int? count;
//   String? distanceTime;
//   String? lastAtDate;

//   SomeRootEntity({
//     this.id,
//     this.status,
//     this.chap,
//     this.lastAt,
//     this.hid,
//     this.createdAt,
//     this.upCount,
//     this.lang,
//     this.downCount,
//     this.mdImages,
//     this.mdComics,
//     this.max,
//     this.count,
//     this.distanceTime,
//     this.lastAtDate,
//   });
//   SomeRootEntity.fromJson(Map<String, dynamic> json) {
//     id = json['id']?.toInt();
//     status = json['status']?.toString();
//     chap = json['chap']?.toString();
//     lastAt = json['last_at']?.toString();
//     hid = json['hid']?.toString();
//     createdAt = json['created_at']?.toString();
//     upCount = json['up_count']?.toInt();
//     lang = json['lang']?.toString();
//     downCount = json['down_count']?.toInt();
//     if (json['md_images'] != null) {
//       final v = json['md_images'];
//       final arr0 = <SomeRootEntityMdImages>[];
//       v.forEach((v) {
//         arr0.add(SomeRootEntityMdImages.fromJson(v));
//       });
//       mdImages = arr0;
//     }
//     mdComics = (json['md_comics'] != null)
//         ? SomeRootEntityMdComics.fromJson(json['md_comics'])
//         : null;
//     max = json['max']?.toInt();
//     count = json['count']?.toInt();
//     distanceTime = json['distanceTime']?.toString();
//     lastAtDate = json['last_at_date']?.toString();
//   }
//   Map<String, dynamic> toJson() {
//     final data = <String, dynamic>{};
//     data['id'] = id;
//     data['status'] = status;
//     data['chap'] = chap;
//     data['last_at'] = lastAt;
//     data['hid'] = hid;
//     data['created_at'] = createdAt;
//     data['up_count'] = upCount;
//     data['lang'] = lang;
//     data['down_count'] = downCount;
//     if (mdImages != null) {
//       final v = mdImages;
//       final arr0 = [];
//       v!.forEach((v) {
//         arr0.add(v!.toJson());
//       });
//       data['md_images'] = arr0;
//     }
//     if (mdComics != null) {
//       data['md_comics'] = mdComics!.toJson();
//     }
//     data['max'] = max;
//     data['count'] = count;
//     data['distanceTime'] = distanceTime;
//     data['last_at_date'] = lastAtDate;
//     return data;
//   }
// }
