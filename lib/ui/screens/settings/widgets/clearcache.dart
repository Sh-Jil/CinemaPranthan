import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

void clearcache() {
  imageCache.clear();
  imageCache.clearLiveImages();
  DefaultCacheManager().emptyCache();
}
