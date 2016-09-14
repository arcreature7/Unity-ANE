UnityAds ANE for flash 
------
UnityAds ane for flash air mobile app ,witch enable as3 developer integrate Unity video Ad and rewarded video in their ios and android apps <br/>
flex and actionscript can show u3d ad with the same code in ios and android apps<br/>
all Unity Ads native event is supported<br/>
base on UnityAd 2.0<br/>
requred  air sdk 19.0 or later <br/>

very easy to use ,just 3 line code to integrate unity ads to air app<br/>

### show Unity Video Ad:
```
UnityAds.getInstance().setUnityKeys("game id");
UnityAds.getInstance().addEventListener(UnityAdsEvent.onLoadVideoSuccess, onAdReceived);
```
after a period of time
```
if(UnityAds.getInstance().isVideoReady()){
	UnityAds.getInstance().showVideo();
}
```


###for android.  you need add following config in application-app.xml
```
<android>
        <manifestAdditions><![CDATA[
			<manifest android:installLocation="auto">
			    <uses-permission android:name="android.permission.INTERNET"/>
			    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
			    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>
			     <uses-permission android:name="android.permission.READ_PHONE_STATE"/>
			     <application>
	   <activity
            android:name="com.unity3d.ads.adunit.AdUnitActivity"
            android:configChanges="fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen"
            android:hardwareAccelerated="true"
            android:theme="@android:style/Theme.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.unity3d.ads.adunit.AdUnitSoftwareActivity"
            android:configChanges="fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen"
            android:hardwareAccelerated="false"
            android:theme="@android:style/Theme.NoTitleBar.Fullscreen" />
			     </application>
			</manifest>
		]]></manifestAdditions>
    </android>
```

contact:wohaosea@gmail.com<br/>
related lib: https://github.com/lilili87222/as3-air-ad-network-framework<br/>
project home:https://github.com/lilili87222/Unity-ANE<br />
UnityAds home:https://unityads.unity3d.com<br />