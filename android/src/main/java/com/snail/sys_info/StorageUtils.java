package com.snail.sys_info;

import android.os.Environment;
import android.os.StatFs;

import java.io.File;


class StorageUtils {
   public static long totalInternalDiskSpaceBytes() {
      File file = Environment.getDataDirectory();
      StatFs statFs = new StatFs(file.getPath());
      return  statFs.getTotalBytes();
   }

   public static long freeInternalDiskSpaceBytes() {
      File file = Environment.getDataDirectory();
      StatFs statFs = new StatFs(file.getPath());
      return  statFs.getFreeBytes();
   }
}
