UnityAds ANE for flash 
------
UnityAds ane for flash air mobile app ,witch enable as3 developer integrate Unity video Ad and rewarded video in their ios and android apps <br/>
flex and actionscript can show u3d ad with the same code in ios and android apps<br/>
all Unity Ads native event is supported<br/>
base on UnityAd 1.5.4<br/>
requred  air sdk 19.0 or later <br/>

very easy to use ,just 3 line code to integrate unity ads to air app<br/>

### show Unity Video Ad:
```
UnityAds.getInstance().setUnityKeys("game id");
```
after a period of time
```
if(UnityAds.getInstance().isVideoReady()){
	UnityAds.getInstance().showVideo();
}
```

###show Unity Rewarded Video Ads
```
UnityAds.getInstance().setUnityKeys("game id");
UnityAds.getInstance().addEventListener(UnityAdsEvent.onLoadVideoSuccess, onAdReceived);
protected function onAdReceived(event:UnityAdsEvent):void
{
	UnityAds.getInstance().showRewardVideo();
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
            android:name="com.unity3d.ads.android.view.UnityAdsFullscreenActivity"
            android:configChanges="fontScale|keyboard|keyboardHidden|locale|mnc|mcc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|uiMode|touchscreen"
            android:theme="@android:style/Theme.NoTitleBar.Fullscreen"
            android:hardwareAccelerated="true"
            />
			     </application>
			</manifest>
		]]></manifestAdditions>
    </android>
```

contact:wohaosea@gmail.com
related lib: https://github.com/lilili87222/as3-air-ad-network-framework<br/>
project home:https://github.com/lilili87222/admob-for-flash/ <br />
UnityAds home:https://unityads.unity3d.com<br />