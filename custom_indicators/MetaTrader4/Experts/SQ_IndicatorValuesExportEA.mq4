//+------------------------------------------------------------------+
//|                                 IndicatorExportEA.mq4 |
//|                                                                  |
//|                    EA to export indicator values from MetaTrader |
//|              /MetaTrader directory/tester/files/******.csv |
//+------------------------------------------------------------------+

#property copyright "Copyright © 2015 StrategyQuant"
#property link      "http://www.StrategyQuant.com"

string currentTime = "";
string lastTime = "";

bool start = true;

//+------------------------------------------------------------------+

int init() {
   return(0);
}

//+------------------------------------------------------------------+

int deinit() {
   return(0);
}

//+------------------------------------------------------------------+

int start() {
   currentTime = TimeToStr(Time[1], TIME_DATE|TIME_MINUTES|TIME_SECONDS);
   if(currentTime == lastTime) {
      return(0);
   }
   
   int startBar = 0;
   
   if(start){
      start = false;
      startBar = Bars - 1;
   }
   else {
      startBar = 1;
   }
   
   for(int a=startBar; a>=1; a--){
      double value;
   
   	string fileName = "";
   	
      //fileName = "ADX_14_Main.csv"; value = iCustom(NULL, 0, "SqADX", 14, PRICE_CLOSE, MODE_MAIN, a);
      //fileName = "ADX_14_DI-.csv"; value = iCustom(NULL, 0, "SqADX", 14, PRICE_CLOSE, MODE_MINUSDI, a);
      //fileName = "ADX_14_DI+.csv"; value = iCustom(NULL, 0, "SqADX", 14, PRICE_CLOSE, MODE_PLUSDI, a);
      //fileName = "Aroon_14_up.csv"; value = iCustom(NULL, 0, "SqAroon", 14, false, false, 0, a);            //Aroon up
      //fileName = "Aroon_14_down.csv"; value = iCustom(NULL, 0, "SqAroon", 14, false, false, 1, a);            //Aroon down
      //fileName = "ATR_14.csv"; value = iCustom(NULL, 0, "SqATR", 14, 0, a); 
      //fileName = "AvgVolume_14.csv"; value = iCustom(NULL,0, "SqAvgVolume", 14, 0, a); 
      //    fileName = "Awesome_Oscillator.csv"; value = iAO(NULL, 0, a);
    	//    fileName = "BBRange_16_2.2_Low.csv"; value = iBands(NULL, 0, 16, 2.2, 0, PRICE_LOW, MODE_UPPER, a) - iBands(NULL, 0, 16, 2.2, 0, PRICE_LOW, MODE_LOWER, a);     //BBRange
      //fileName = "BBWidthRatio_20_2_Open.csv"; value = iCustom(NULL,0, "SqBBWidthRatio", 20, 2.0, PRICE_OPEN, 0, a); 
      //    fileName = "BB_20_0_2.0_Upper.csv"; value = iBands(NULL, 0, 20, 2, 0, PRICE_CLOSE, MODE_UPPER, a);
      //    fileName = "BB_20_0_2.0_Lower.csv"; value = iBands(NULL, 0, 20, 2, 0, PRICE_CLOSE, MODE_LOWER, a);
      //    fileName = "BearsPower_Close_14.csv"; value = iBearsPower(NULL, 0, 14, PRICE_CLOSE, a);
      //    fileName = "BullsPower_Close_14.csv"; value = iBullsPower(NULL, 0, 14, PRICE_CLOSE, a);
      //    fileName = "CCI_Close_14.csv"; value = iCCI(NULL, 0, 14, PRICE_CLOSE, a);
      //    fileName = "CCI_Typical_14.csv"; value = iCCI(NULL, 0, 14, PRICE_TYPICAL, a);
      //    fileName = "DeMarker_14.csv"; value = iDeMarker(NULL, 0, 14, a);
    	//    fileName = "EMA_Close_60.csv"; value = iMA(NULL, 0, 60, 0, MODE_EMA, PRICE_CLOSE, a);   
      //fileName = "Fibo_1_61.8.csv"; value = iCustom(NULL, 0, "SqFibo", 1, 61.8, 0, 0, a);    
      //fileName = "Fibo_1_72.5.csv"; value = iCustom(NULL, 0, "SqFibo", 1, 72.5, 0, 0, a);    
      //fileName = "Fibo_2_61.8.csv"; value = iCustom(NULL, 0, "SqFibo", 2, 61.8, 0, 0, a);    
      //fileName = "Fibo_3_61.8.csv"; value = iCustom(NULL, 0, "SqFibo", 3, 61.8, 0, 0, a);    
      //fileName = "Fibo_5_-161.8.csv"; value = iCustom(NULL, 0, "SqFibo", 5, -161.8, 0, 0, a);    
      //fileName = "Fibo_6_-161.8.csv"; value = iCustom(NULL, 0, "SqFibo", 6, -161.8, 0, 0, a);    
      //fileName = "Fibo_7_-161.8.csv"; value = iCustom(NULL, 0, "SqFibo", 7, -161.8, 0, 0, a);    
    	//fileName = "HA_Open.csv"; value = iCustom( NULL, 0, "SqHeikenAshi", 0,0,0,0, 2, a); // HA_OPEN
      //fileName = "HA_Close.csv"; value = iCustom( NULL, 0, "SqHeikenAshi", 0,0,0,0, 3, a); // HA_CLOSE
      //fileName = "Highest_10_Close.csv"; value = iCustom( NULL, 0, "SqHighest", 10, PRICE_CLOSE, 0, a); 
      //fileName = "HighestIndex_10_Close.csv"; value = iCustom(NULL, 0, "SqHighestIndex", 10, PRICE_CLOSE, 0, a);
      //fileName = "Ichimoku_9_26_52_KijunSen.csv"; value = iCustom(NULL, 0, "SqIchimoku", 9, 26, 52, 1, a);
      //fileName = "Ichimoku_9_26_52_SenkouSpanA.csv"; value = iCustom(NULL, 0, "SqIchimoku", 9, 26, 52, 2, a);
      //fileName = "Ichimoku_9_26_52_SenkouSpanB.csv"; value = iCustom(NULL, 0, "SqIchimoku", 9, 26, 52, 3, a);
      //fileName = "Ichimoku_9_26_52_TenkanSen.csv"; value = iCustom(NULL, 0, "SqIchimoku", 9, 26, 52, 0, a);
      //fileName = "Ichimoku_21_33_28_TenkanSen.csv"; value = iCustom(NULL, 0, "SqIchimoku", 21, 33, 28, 0, a);
      //fileName = "KeltnerChannel_16_0.2_Upper.csv"; value = iCustom(NULL, 0, "SqKeltnerChannel", 16, 0.2, 0, a);            //Upper
      //fileName = "KeltnerChannel_16_0.2_Lower.csv"; value = iCustom(NULL, 0, "SqKeltnerChannel", 16, 0.2, 1, a);            //Lower
      //fileName = "LinearRegression_14_Low.csv"; value = iCustom(NULL, 0, "SqLinReg", 14, PRICE_LOW, 0, a);            //Lower
      //fileName = "LowestIndex_10_Close.csv"; value = iCustom(NULL, 0, "SqLowestIndex", 10, PRICE_CLOSE, 0, a);
      //    fileName = "LWMA_14_Close.csv"; value = iMA(NULL, 0, 14, 0, MODE_LWMA, PRICE_CLOSE, a);  
      //    fileName = "MACD_Close_12_26_9_Main.csv"; value = iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_MAIN, a);
      //    fileName = "MACD_Close_12_26_9_Signal.csv"; value = iMACD(NULL, 0, 12, 26, 9, PRICE_CLOSE, MODE_SIGNAL, a);
      //    fileName = "Momentum_Close_60.csv"; value = iMomentum(NULL, 0, 60, PRICE_CLOSE, a);
      //    fileName = "MTATR_14.csv"; value = iATR(NULL, 0, 14, a); 
      //fileName = "MTKeltnerChannel_16_0.2_Upper.csv"; value = iCustom(NULL, 0, "SqMTKeltnerChannel", 16, 0.2, 0, a);            //Upper
      //fileName = "MTKeltnerChannel_16_0.2_Lower.csv"; value = iCustom(NULL, 0, "SqMTKeltnerChannel", 16, 0.2, 1, a);            //Lower
      //    fileName = "OSMA_Close_12_26_9.csv"; value = iOsMA(NULL, 0, 12, 26, 9, PRICE_CLOSE, a);
      //    fileName = "ParabolicSAR_0.02_0.2.csv"; value = iCustom(NULL,0, "SqParabolicSAR", 0.02, 0.2, 0, a); 
      //    fileName = "Pivots_0_0_0_P.csv"; value = iCustom(NULL, 0, "SqPivots", 0, 0, 0, 0, 0, 0, 0, 0, 0, a);    //P
      //    fileName = "Pivots_0_0_0_R1.csv"; value = iCustom(NULL, 0, "SqPivots", 0, 0, 0, 0, 0, 0, 0, 0, 1, a);    //R1
      //    fileName = "Pivots_0_0_0_R2.csv"; value = iCustom(NULL, 0, "SqPivots", 0, 0, 0, 0, 0, 0, 0, 0, 2, a);    //R2
      //    fileName = "Pivots_0_0_0_R3.csv"; value = iCustom(NULL, 0, "SqPivots", 0, 0, 0, 0, 0, 0, 0, 0, 3, a);    //R3
      //    fileName = "Pivots_0_0_0_S1.csv"; value = iCustom(NULL, 0, "SqPivots", 0, 0, 0, 0, 0, 0, 0, 0, 4, a);    //S1
      //    fileName = "Pivots_0_0_0_S2.csv"; value = iCustom(NULL, 0, "SqPivots", 0, 0, 0, 0, 0, 0, 0, 0, 5, a);    //S2
      //    fileName = "Pivots_0_0_0_S3.csv"; value = iCustom(NULL, 0, "SqPivots", 0, 0, 0, 0, 0, 0, 0, 0, 6, a);    //S3
      //    fileName = "Pivots_8_20_0_P.csv"; value = iCustom(NULL, 0, "SqPivots", 8, 20, 0, 0, 0, 0, 0, 0, 0, a);    //P
      //    fileName = "QQE_14_5_7_Value1.csv"; value = iCustom(NULL,0, "SqQQE", 14, 5, 7, 0, a);           //Value1
      //    fileName = "QQE_14_5_7_Value2.csv"; value = iCustom(NULL,0, "SqQQE", 14, 5, 7, 1, a);           //Value2
      //fileName = "RSI_Close_14.csv"; value = iRSI(NULL, 0, 14, PRICE_CLOSE, a);   
      //    fileName = "SMA_Close_60.csv"; value = iMA(NULL, 0, 60, 0, MODE_SMA, PRICE_CLOSE, a);
      //    fileName = "SMMA_14_Close.csv"; value = iMA(NULL, 0, 14, 0, MODE_SMMA, PRICE_CLOSE, a); 
      //    fileName = "StdDev_Close_20.csv"; value = iStdDev(NULL, 0, 70, 0, MODE_SMA, PRICE_CLOSE, a);
    	//    fileName = "STOCH_20_10_45_EMA_HL_FastK.csv"; value = iCustom(NULL, 0, "SqStochastic", 20, 10, 45, MODE_EMA, 0, MODE_MAIN, a);     //High-low
      //    fileName = "STOCH_20_10_45_EMA_HL_SLOWD.csv"; value = iCustom(NULL, 0, "SqStochastic", 20, 10, 45, MODE_EMA, 0, MODE_SIGNAL, a);     //High-low
      //    fileName = "TEMA_Close_14.csv"; value = iCustom(NULL, 0, "SqTEMA", 14, PRICE_CLOSE, 0, a);
      //    fileName = "WilliamsPR_14.csv"; value = iWPR(NULL, 0, 14, a);
      
       
       //value = iCustom(NULL, 0, "TradersDynamicIndex", PRICE_OPEN, 13, 34, 2, 0, 7, 0, 0, 1);        //RSIBuf
       //value = iCustom(NULL, 0, "TradersDynamicIndex", PRICE_OPEN, 13, 34, 2, 0, 7, 0, 1, 1);        //UpZone
       //value = iCustom(NULL, 0, "TradersDynamicIndex", PRICE_OPEN, 13, 34, 2, 0, 7, 0, 2, 1);        //MdZone
       //value = iCustom(NULL, 0, "TradersDynamicIndex", PRICE_OPEN, 13, 34, 2, 0, 7, 0, 3, 1);        //DnZone
       //value = iCustom(NULL, 0, "TradersDynamicIndex", PRICE_OPEN, 13, 34, 2, 0, 7, 0, 4, 1);        //MaBuf
       //value = iCustom(NULL, 0, "TradersDynamicIndex", PRICE_OPEN, 13, 34, 2, 0, 7, 0, 5, 1);        //MbBuf
       
       //value = iCustom(NULL, 0, "SqFractals", 3, 0, 1);        //Fractals Up
       //value = iCustom(NULL, 0, "SqFractals", 5, 0, 1);        //Fractals Up
       //value = iCustom(NULL, 0, "SqFractals", 5, 1, 1);        //Fractals Down
      
   	int handle = FileOpen(fileName, FILE_READ | FILE_WRITE, ";");
   	if(handle>0) {
       	FileSeek(handle,0,SEEK_END);
          
          
          FileWrite(handle, TimeToStr(Time[a], TIME_DATE | TIME_MINUTES | TIME_SECONDS), Open[a], High[a], Low[a], Close[a], Volume[a], value);
      
          FileClose(handle);
   	}
   }

	lastTime = currentTime;

	return(0);
}

//+------------------------------------------------------------------+


double sqLowestInRange(string symbol, int timeframe, string timeFrom, string timeTo) {
   int indexTo = -1;
   int indexFrom = -1;
   int i;

   // find index of bar for timeTo
   for(i=1; i<=2000; i++) {
      if(TimeToStr(Time[i], TIME_MINUTES) == timeTo || (TimeToStr(Time[i], TIME_MINUTES) >= timeTo && TimeToStr(Time[i+1], TIME_MINUTES) < timeTo)) {
         //Log("Found timeTo: ", TimeToStr(Time[i]));
         indexTo = i;
         break;
      }
   }

   if(indexTo == -1) {
      Print("Not found timeTo");
      return(-1);
   }

   // find index of bar for timeFrom
   for(i=indexTo+1; i<=2000; i++) {
      if(TimeToStr(Time[i], TIME_MINUTES) == timeFrom || (TimeToStr(Time[i], TIME_MINUTES) >= timeFrom && TimeToStr(Time[i+1], TIME_MINUTES) < timeFrom)) {
         //Log("Found timeFrom: ", TimeToStr(Time[i]));
         indexFrom = i;
         break;
      }
   }

   if(indexFrom == -1) {
      Print("Not found time From");
      return(-1);
   }

   double value = 100000000.0;

   for(i=indexTo; i<=indexFrom; i++) {
      if(symbol == "NULL") {
         value = MathMin(value, iLow(NULL, timeframe, i));
      } else {
         value = MathMin(value, iLow(symbol, timeframe, i));
      }
   }

   return(value);
}