#include <ArduinoWiFiServer.h>
#include <BearSSLHelpers.h>
#include <CertStoreBearSSL.h>
#include <ESP8266WiFi.h>
#include <ESP8266WiFiAP.h>
#include <ESP8266WiFiGeneric.h>
#include <ESP8266WiFiGratuitous.h>
#include <ESP8266WiFiMulti.h>
#include <ESP8266WiFiScan.h>
#include <ESP8266WiFiSTA.h>
#include <ESP8266WiFiType.h>
#include <WiFiClient.h>
#include <WiFiClientSecure.h>
#include <WiFiClientSecureBearSSL.h>
#include <WiFiServer.h>
#include <WiFiServerSecure.h>
#include <WiFiServerSecureBearSSL.h>
#include <WiFiUdp.h>

#include <dummy.h>

#include <Arduino.h>
#if defined(ESP32)
#include <WiFi.h>
#elif defined(ESP8266)
#include <ESP8266WiFi.h>
#endif
#include <Firebase_ESP_Client.h>  
//Provide the token generation process info.
#include "addons/TokenHelper.h"
//Provide the RTDB payload printing info and other helper functions.
#include "addons/RTDBHelper.h"

#include <LiquidCrystal.h>

// Insert Firebase project API Key
#define API_KEY "AIzaSyAu6KdFuQADfCJdG2BMp_M11NWdXo6Unx0"

// Insert RTDB URLefine the RTDB URL */
#define DATABASE_URL "https://smart-home-app-322f4-default-rtdb.firebaseio.com"

//Configure WIFI SSID AND PASS by replacing those XXXX 
#define WIFI_SSID "XXXX"
#define WIFI_PASSWORD "XXXX"

const int rs = D0, en = D1, d4 = D2, d5 = D3, d6 = D4, d7 = D5;

FirebaseData fbdo;
FirebaseAuth auth;
FirebaseConfig config;
String message;

LiquidCrystal lcd(rs, en, d4, d5, d6, d7);
//----------------------------------
int Li          = 17, Lii    = 1;
int Ri          = -1, Rii    = -1;

bool signupOK = false;
unsigned long sendDataPrevMillis = 0;
//----------------------------------
void setup() {
  lcd.begin(16, 2);

  Serial.begin(115200);

  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
  Serial.print("Connecting to Wi-Fi");
  while (WiFi.status() != WL_CONNECTED)
  {
    Serial.print(".");
    delay(300);

  }
  Serial.println();
  Serial.print("Connected with IP: ");
  Serial.println(WiFi.localIP());
  Serial.println();

  /* Assign the api key (required) */
  config.api_key = API_KEY;

  /* Assign the RTDB URL (required) */
  config.database_url = DATABASE_URL;

  auth.user.email = "seifibrahim32@gmail.com";
  auth.user.password = "xxxxxx";
  /* Sign up */
  if (Firebase.signUp(&config, &auth, "", "")) {
    Serial.println("ok");
    signupOK = true;
  }
  else {
    Serial.printf("%s\n", config.signer.signupError.message.c_str());
  }

  /* Assign the callback function for the long running token generation task */
  config.token_status_callback = tokenStatusCallback; //see addons/TokenHelper.h

  Firebase.begin(&config, &auth);
  Firebase.reconnectWiFi(true);
  Serial.println("------------------------------------");
  //Serial.println("Connected...");
}

void loop() {
  Serial.begin(115200);
  Serial.println(fbdo.stringData());
  Serial.println(fbdo.dataPath());
  if (Firebase.ready() && signupOK && (millis()
                                       - sendDataPrevMillis > 15000 || sendDataPrevMillis == 0)) {
    sendDataPrevMillis = millis();
    
    if (Firebase.RTDB.getString(&fbdo, "/light/light")) {
      Serial.println(message);
      message = fbdo.stringData();
      if (message.equals("null")) {
        message = "No new message came";
      }
    }
    else {
      Serial.println(fbdo.errorReason());
    }
  }
  for (int i = 0; i <= 15; i++) {
    lcd.setCursor(2, 0);
    lcd.print( "Firebase IoT" );
  }

  for (int i = 0; i <= 90; i++) {                                       // 50 is the result of the lcd = 16 column plus the length of the string, in this example string length 34.
    lcd.setCursor(0, 1);
    lcd.print(Scroll_LCD_Left(message));   // So from the start the text appears until the text disappears with a value of 50.
    delay(300);
  }
    Clear_Scroll_LCD_Left();
}

String Scroll_LCD_Left(String StrDisplay) {
  String result;
  String StrProcess = "                " + StrDisplay + "                ";
  result = StrProcess.substring(Li, Lii);
  Li++;
  Lii++;
  if (Li > StrProcess.length()) {
    Li = 16;
    Lii = 0;
  }
  return result;
}

void Clear_Scroll_LCD_Left() {
  Li = 16;
  Lii = 0;
} 
