package com.snail.sys_info;

import android.os.Build;
import java.util.Arrays;
import java.util.List;

class DeviceInfo {
    public String systemName = "'Android OS'";
    public final String brand = Build.BRAND;
    public final String device = Build.DEVICE;
    public final String identifier = Build.FINGERPRINT;
    public final String id = Build.ID;
    public final String model = Build.MODEL;
    public final int sdkInt = Build.VERSION.SDK_INT;
    public final String systemVersion = Build.VERSION.RELEASE;
    public final List<String> supported32BitAbis = Arrays.asList(Build.SUPPORTED_32_BIT_ABIS);
    public final List<String> supported64BitAbis = Arrays.asList(Build.SUPPORTED_64_BIT_ABIS);
    public final List<String> supportedAbis = Arrays.asList(Build.SUPPORTED_ABIS);

//    public String[] systemFeatures = null;

    public long totalDiskSpaceBytes = StorageUtils.totalInternalDiskSpaceBytes();
    public long freeDiskSpaceBytes = StorageUtils.freeInternalDiskSpaceBytes();
    /*public static  String macAddress(Context context){
        String macAddress = null ;
        WifiManager wifiManager =
                (WifiManager)context.getApplicationContext().getSystemService(Context.WIFI_SERVICE);
        WifiInfo info = ( null == wifiManager ? null : wifiManager.getConnectionInfo());

        if (!wifiManager.isWifiEnabled())
        {
            //必须先打开，才能获取到MAC地址
            wifiManager.setWifiEnabled( true );
            wifiManager.setWifiEnabled( false );
        }
        if ( null != info) {
            macAddress = info.getMacAddress();
        }
        return macAddress;
    }*/
}
