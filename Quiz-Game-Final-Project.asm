;include "emu8086.inc"
.MODEL LARGE
.STACK 100H
.DATA
    M1  dw  10,13,"                       *                      "
    M2  dw  10,13,"                      ***                     "     
    M3  dw  10,13,"                     ** **                    "
    M4  dw  10,13,"                    **   **                   "
    M5  dw  10,13,"                   **     **                  "
    M6  dw  10,13,"                  **       **                 "
    M7  dw  10,13,"                 **         **                "
    M8  dw  10,13,"                **           **               "
    M9  dw  10,13,"               **             **              "
    M10 dw  10,13,"              **    WELCOME    **             "
    M11 dw  10,13,"             **       TO        **            "
    M12 dw  10,13,"              **  OUR PROJECT  **             "
    M13 dw  10,13,"               **             **              "
    M14 dw  10,13,"                **           **               "
    M15 dw  10,13,"                 **         **                "
    M16 dw  10,13,"                  **       **                 "
    M17 dw  10,13,"                   **     **                  "
    M18 dw  10,13,"                    **   **                   "
    M19 dw  10,13,"                     ** **                    "
    M20 dw  10,13,"                      ***                     "
    M21 dw  10,13,"                       *                      "
    M22 dw  10,13,"               *****************              "
    M23 dw  10,13,"               *****************              "
    M24 dw  10,13,"               **             **              "
    M25 dw  10,13,"               **  QUIZ GAME  **              "
    M26 dw  10,13,"               **             **              "
    M27 dw  10,13,"        *******************************       "
    M28 dw  10,13,"        *******************************       "
    M29 dw  10,13,"        **                           **       "
    M30 dw  10,13,"        **        1. START           **       "
    M31 dw  10,13,"        **        2. LEVEL           **       "
    M32 dw  10,13,"        **        3. HELP            **       "
    M33 dw  10,13,"        **        4. EXIT            **       "
    M34 dw  10,13,"        **                           **       "
    M35 dw  10,13,"        *******************************       "
    M36 dw  10,13,"        *******************************       ",10,13,"$" 
    
    
    FM1  DW 0AH,0DH,09H,09H,"       :::::::::::: ::::      ::::: :::::::::             "
    FM2  DW 0AH,0DH,09H,09H,"        :::::::::::  :::'      :::   :::::::::            "
    FM3  DW 0AH,0DH,09H,09H,"        :::       :  :::""     :::   :::     ::           "
    FM4  DW 0AH,0DH,09H,09H,"        :::    :     ::: ""    :::   :::      ::          "
    FM5  DW 0AH,0DH,09H,09H,"        ::::::::     :::  ""   :::   :::      ::          "
    FM6  DW 0AH,0DH,09H,09H,"        ::::::::     :::   ""  :::   :::      ::          "
    FM7  DW 0AH,0DH,09H,09H,"        :::    :     :::    "" :::   :::      ::          "
    FM8  DW 0AH,0DH,09H,09H,"        :::       :  :::     "":::   :::     ::           "
    FM9  DW 0AH,0DH,09H,09H,"        :::::::::::  :::      ':::   :::::::::            "
    FM10 DW 0AH,0DH,09H,09H,"       :::::::::::: :::::      :::: :::::::::             "
    FM11 DW 0AH,0DH,09H,09H,"                                                         $"
    FM12 DW 0AH,0DH,09H,09H,"                        ""   ""                           "
    FM13 DW 0AH,0DH,09H,09H,"         THANK           "" ""           YOU              "
    FM14 DW 0AH,0DH,09H,09H," **********************   """   **********************"   "
    FM15 DW 0AH,0DH,09H,09H," ***********************   "   ***********************"   "
    FM16 DW 0AH,0DH,09H,09H," **********************   """   **********************"   "                         
    FM17 DW 0AH,0DH,09H,09H,"                         "" ""                            "
    FM18 DW 0AH,0DH,09H,09H,"                        ""   ""                          $"                         
      
      MSG7 DB 0AH,0AH,0DH,09H,"Enter a number: $" 
      MSG8 DB 0AH,0AH,0DH,09H,"Which subject do you want to ans? $" 
      
      LEVEL1 DB 0AH,0AH,0DH,09H,09H,"1.Easy  $"
      LEVEL2 DB 0AH,0DH,09H,09H,"2.Medium  $"
      LEVEL3 DB 0AH,0DH,09H,09H,"3.Hard  $" 
      
      HELP1 DW 0AH,0AH,0DH,09H,"Every right ans:   "  
      HELPA DW 0AH,0AH,0DH,09H,"                Level Easy: add 1 marks   " 
      HELPB DW 0AH,0AH,0DH,09H,"                Level Medium: add 1 marks   " 
      HELPC DW 0AH,0AH,0DH,09H,"                Level Hard: add 1 marks   " 
      HELPD DW 0AH,0AH,0DH,09H,"Every wrong ans:   " 
      HELPE DW 0AH,0AH,0DH,09H,"                Level Easy: loss 0 marks   " 
      HELPF DW 0AH,0AH,0DH,09H,"                Level Medium: loss 1 marks   " 
      HELPG DW 0AH,0AH,0DH,09H,"                Level Hard:loss 2 marks   $" 
      
      HELP3 DB 0AH,0AH,0DH,09H,"Press 1 and go to main menu  $"
      HELP4 DB 0AH,0DH,09H,"Press 0 to stop game  $"  
      
      EMH1 DB 0AH,0AH,0DH,09H,09H,"1. Science $" 
      EMH2 DB 0AH,0DH,09H,09H,"2. General Knowledge $" 
      
      RA DB "Right Ans  $" 
      WA DB "Wrong Ans  $" 
      MARKS DB 0AH,0AH,0DH,09H,"Your obtained marks(out of 10)...    $" 
      OTS DB 0AH,0AH,0DH,09H,"!!!!!! Yeah ! For your outstanding performance you woned a laptop.Please, contract CDC in DIU $"
 ;     THK DB "*********** THANK YOU **********  $"  
      
      1Q DB 0AH,0AH,0DH,09H,"01.Which is the scalar quantity -  $" 
      1QA DB 0AH,0AH,0DH,09H,09H,"a.Force   b.Velocity  c.Work  $"      
      2Q DB 0AH,0AH,0DH,09H,"02.The example of periodic motion -  $"
      2QA DB 0AH,0AH,0DH,09H,09H,"a.Motor-bus   b.Watch  c.Earth  $"
      3Q DB 0AH,0AH,0DH,09H,"03.If,distance 5m and time 2s, then the velocity would be-  $" 
      3QA DB 0AH,0AH,0DH,09H,09H,"a.10   b.15  c.20  $"
      4Q DB 0AH,0AH,0DH,09H,"04.Attraction Force of any two object-  $" 
      4QA DB 0AH,0AH,0DH,09H,09H,"a.ma   b.m+a  c.m/a  $"
      5Q DB 0AH,0AH,0DH,09H,"05.The father of Biology  -  $"
      5QA DB 0AH,0AH,0DH,09H,09H,"a.Theophrastus   b.Socrates  c.Aristotle  $"
      6Q DB 0AH,0AH,0DH,09H,"06.Not found in DNA- -  $" 
      6QA DB 0AH,0AH,0DH,09H,09H,"a.Adenine   b.Uralic  c.Thymine  $"
      7Q DB 0AH,0AH,0DH,09H,"07.Charge Neutral- -  $" 
      7QA DB 0AH,0AH,0DH,09H,09H,"a.Electron    b.Proton  c.Neutron  $"
      8Q DB 0AH,0AH,0DH,09H,"08. 0.3 * 0.3 =   $"
      8QA DB 0AH,0AH,0DH,09H,09H,"a. 0.9   b. 0.09  c. 9.0  $"
      9Q DB 0AH,0AH,0DH,09H,"09. 12*12/4  $"
      9QA DB 0AH,0AH,0DH,09H,09H,"a.36   b.44  c.24  $"
      10Q DB 0AH,0AH,0DH,09H,"10.The sum of prime number from 10-20  $"  
      10QA DB 0AH,0AH,0DH,09H,09H,"a.50   b.60  c.70  $"  
      
      11Q DB 0AH,0AH,0DH,09H,"01.The power house of cell is-  $" 
      11QA DB 0AH,0AH,0DH,09H,09H,"a.Nucleus   b.Mitochondrion  c.Ribosome   $"      
      12Q DB 0AH,0AH,0DH,09H,"02.The scientific name of human-  $"
      12QA DB 0AH,0AH,0DH,09H,09H,"a.Homo sapiens   b.Rana Temporaria  c.Bos taurus  $"
      13Q DB 0AH,0AH,0DH,09H,"03.The percentage of nucleus in sperm-  $" 
      13QA DB 0AH,0AH,0DH,09H,09H,"a.70   b.80  c.90  $"
      14Q DB 0AH,0AH,0DH,09H,"04.If ABCD be a square and CD=5 , then the area be-  $" 
      14QA DB 0AH,0AH,0DH,09H,09H,"a.15   b.20  c.25  $"
      15Q DB 0AH,0AH,0DH,09H,"05.If a+b=8, a-b=6 then a.a + b.b = $"
      15QA DB 0AH,0AH,0DH,09H,09H,"a.50   b.54  c.60  $"
      16Q DB 0AH,0AH,0DH,09H,"06. 1,3,4,7,11,18,....then the next value-  $" 
      16QA DB 0AH,0AH,0DH,09H,09H,"a.25   b.29  c.30  $"
      17Q DB 0AH,0AH,0DH,09H,"07.The number of 9 from 1-100 is  $" 
      17QA DB 0AH,0AH,0DH,09H,09H,"a.10    b.19  c.20  $"
      18Q DB 0AH,0AH,0DH,09H,"08.The discoverer of X-rays is in  $"
      18QA DB 0AH,0AH,0DH,09H,09H,"a.1891   b.1895  c.1897  $"
      19Q DB 0AH,0AH,0DH,09H,"09.. If the velocity and frequency be 20 and 5 ,then the wavelength - $"
      19QA DB 0AH,0AH,0DH,09H,09H,"a.4   b.5  c.10  $"
      20Q DB 0AH,0AH,0DH,09H,"10.If x+5y=15 and y=2 then x=?  $"
      20QA DB 0AH,0AH,0DH,09H,09H,"a.5   b.10  c.8  $" 
      
      21Q DB 0AH,0AH,0DH,09H,"01.Which of the following is a thermosetting polymer-  $" 
      21QA DB 0AH,0AH,0DH,09H,09H,"a.Nylon   b.Acrylic resin  c.PVC  $"      
      22Q DB 0AH,0AH,0DH,09H,"02.How many chromosomes do people have?  $"
      22QA DB 0AH,0AH,0DH,09H,09H,"a.46   b.44  c.2  $"
      23Q DB 0AH,0AH,0DH,09H,"03.The equivalent DC voltage of an AC voltage is-  $" 
      23QA DB 0AH,0AH,0DH,09H,09H,"a.0.505   b.0.606  c.0.707  $"
      24Q DB 0AH,0AH,0DH,09H,"04.The nearest planets of earth?  $" 
      24QA DB 0AH,0AH,0DH,09H,09H,"a.Jupiter  b.Venus  c.Saturn  $"
      25Q DB 0AH,0AH,0DH,09H,"05.The skeleton of an adult human consists of- $"
      25QA DB 0AH,0AH,0DH,09H,09H,"a.204   b.206  c.207  $"
      26Q DB 0AH,0AH,0DH,09H,"06.Which property is measured by candela- $" 
      26QA DB 0AH,0AH,0DH,09H,09H,"a.Light   b.Wave  c.Electric potential  $"
      27Q DB 0AH,0AH,0DH,09H,"07.What is the smallest unit of an element- $" 
      27QA DB 0AH,0AH,0DH,09H,09H,"a.Electron    b.Proton  c.Atom  $"
      28Q DB 0AH,0AH,0DH,09H,"08.How long does it take sunlight to reach the Earth $"
      28QA DB 0AH,0AH,0DH,09H,09H,"a.08.20 min  b.08.08 min  c.10.08 min  $"
      29Q DB 0AH,0AH,0DH,09H,"09.What is the percentage of guanine base in human body? $"
      29QA DB 0AH,0AH,0DH,09H,09H,"a.75   b.90 c.20  $"
      30Q DB 0AH,0AH,0DH,09H,"10. 1,3,6,10,15,21,-------then the next value   $"  
      30QA DB 0AH,0AH,0DH,09H,09H,"a.27   b.28  c.33  $" 
      
      31Q DB 0AH,0AH,0DH,09H,"01.Which is the second country to recognize Bangladesh?  $" 
      31QA DB 0AH,0AH,0DH,09H,09H,"a.Bhutan   b.India  c.Arab  $"      
      32Q DB 0AH,0AH,0DH,09H,"02.When does Bangladesh celebrate Bangla New Year?  $"
      32QA DB 0AH,0AH,0DH,09H,09H,"a.14-December   b.14-February   c.14-April  $"
      33Q DB 0AH,0AH,0DH,09H,"03.Who wrote the national anthem of Bangladesh?  $" 
      33QA DB 0AH,0AH,0DH,09H,09H,"a.Kazi Nazrul Islam   b.Amiya Chakravarty  c.Rabindranath Tagore  $"
      34Q DB 0AH,0AH,0DH,09H,"04.Largest cities of Bangladesh  $" 
      34QA DB 0AH,0AH,0DH,09H,09H,"a.Rajshahi   b.Dhaka  c.Chittagong  $"
      35Q DB 0AH,0AH,0DH,09H,"05.Who is the national poet of Bangladesh? $"
      35QA DB 0AH,0AH,0DH,09H,09H,"a.Kazi Nazrul Islam   b.Rabindranath Tagore  c.Jasimuddin  $"
      36Q DB 0AH,0AH,0DH,09H,"06.The currency of india- $" 
      36QA DB 0AH,0AH,0DH,09H,09H,"a.Taka   b.Dirham  c.Rupee  $"
      37Q DB 0AH,0AH,0DH,09H,"07.Which crop is sown on the largest area in India?   $" 
      37QA DB 0AH,0AH,0DH,09H,09H,"a.Wheat   b.Rice  c.Potato  $"
      38Q DB 0AH,0AH,0DH,09H,"08.The capital city of France  $"
      38QA DB 0AH,0AH,0DH,09H,09H,"a.Paris  b.lyon  c.Toulouse  $"
      39Q DB 0AH,0AH,0DH,09H,"09.The 2019 Cricket World Cup scheduled to be hosted by  $"
      39QA DB 0AH,0AH,0DH,09H,09H,"a.India   b.England  c.Australia  $"
      40Q DB 0AH,0AH,0DH,09H,"10.The United Nation was founded in  $"  
      40QA DB 0AH,0AH,0DH,09H,09H,"a.1945   b.1948  c.1954  $" 
      
      41Q DB 0AH,0AH,0DH,09H,"01.The area of sundarban in Bangladesh $" 
      41QA DB 0AH,0AH,0DH,09H,09H,"a.6666 sqkm   b.6065 sqkm  c.6017 sqkm  $"      
      42Q DB 0AH,0AH,0DH,09H,"02.Which is the principal source of energy for earth?  $"
      42QA DB 0AH,0AH,0DH,09H,09H,"a.Electricity   b.Sun  c.Water  $"
      43Q DB 0AH,0AH,0DH,09H,"03.What is the standard taste of the water?   $" 
      43QA DB 0AH,0AH,0DH,09H,09H,"a.Sweet   b.Sour  c.No test  $"
      44Q DB 0AH,0AH,0DH,09H,"04.The census of population be counted after & after- $" 
      44QA DB 0AH,0AH,0DH,09H,09H,"a.10 years   b.5 years  c.3 years  $"
      45Q DB 0AH,0AH,0DH,09H,"05.Who was the first man to travel in space? $"
      45QA DB 0AH,0AH,0DH,09H,09H,"a.Neil Armstrong   b.Edwin Aldrin  c.Yuri Gagarin  $"
      46Q DB 0AH,0AH,0DH,09H,"06.University of Dhaka was founded in  $" 
      46QA DB 0AH,0AH,0DH,09H,09H,"a.1887   b.1921  c.1959  $"
      47Q DB 0AH,0AH,0DH,09H,"07.The designer of our national flag is- $" 
      47QA DB 0AH,0AH,0DH,09H,09H,"a.Hamidur Rahman    b.Abdur Rob  c.Kamrul Sujon  $"
      48Q DB 0AH,0AH,0DH,09H,"08. 0.3 * 0.3 =   $"
      48QA DB 0AH,0AH,0DH,09H,09H,"a. 0.9   b. 0.09  c. 9.0  $"
      49Q DB 0AH,0AH,0DH,09H,"09.FIFA world cup 2014 champion- $"
      49QA DB 0AH,0AH,0DH,09H,09H,"a.Argentina   b.Brazil  c.Germany  $"
      50Q DB 0AH,0AH,0DH,09H,"10.Who won the last t20 world cup $"  
      50QA DB 0AH,0AH,0DH,09H,09H,"a.West-Indies   b.India  c.South-Africa  $"
      
      51Q DB 0AH,0AH,0DH,09H,"01.When celebrate Children's day in Bangladesh?  $" 
      51QA DB 0AH,0AH,0DH,09H,09H,"a.17-Auguest   b.15-March   c.17-March  $"      
      52Q DB 0AH,0AH,0DH,09H,"02.The largest seaport in Bangladesh located in-  $"
      52QA DB 0AH,0AH,0DH,09H,09H,"a.Chittagong   b.Cox's Bazar   c.Kuakata  $"
      53Q DB 0AH,0AH,0DH,09H,"03.Which district of Bangladesh was part of Assam? $" 
      53QA DB 0AH,0AH,0DH,09H,09H,"a.Barishal   b.Sylhet  c.Old Dhaka  $"
      54Q DB 0AH,0AH,0DH,09H,"04.Which river of Bangladesh originates in Tibet? $" 
      54QA DB 0AH,0AH,0DH,09H,09H,"a.Padma   b.Jamuna  c.Brahmaputra  $"
      55Q DB 0AH,0AH,0DH,09H,"05.Which is the hottest place in the earth?  $"
      55QA DB 0AH,0AH,0DH,09H,09H,"a.Vietnam   b. Ethiopia   c.Jeddah  $"
      56Q DB 0AH,0AH,0DH,09H,"06.Which is the nearest star to planet earth?   $" 
      56QA DB 0AH,0AH,0DH,09H,09H,"a.Sun   b.Proxima Centauri  c.Wolf 359  $"
      57Q DB 0AH,0AH,0DH,09H,"07.Which is the longest river on the earth?   $" 
      57QA DB 0AH,0AH,0DH,09H,09H,"a.Nile    b.Amazon   c.Congo  $"
      58Q DB 0AH,0AH,0DH,09H,"08.The biggest part of the brain is   $"
      58QA DB 0AH,0AH,0DH,09H,09H,"a.Spinal cord  b.Cerebrum   c.Brain Stem  $"
      59Q DB 0AH,0AH,0DH,09H,"09.In which country are the cities Ankara and Istanbul located?  $"
      59QA DB 0AH,0AH,0DH,09H,09H,"a.Afghanistan    b.Turkey   c.Iraq  $"
      60Q DB 0AH,0AH,0DH,09H,"10.What is the capital of Brazil?   $"  
      60QA DB 0AH,0AH,0DH,09H,09H,"a.Barreiras   b.Comodoro  c.Brasilia  $"    
      
      VALUE DB 0 
      TEMP DB 0 
      TEMP2 DB 0
            
.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    XOR AX,AX
    XOR BX,BX
    XOR CX,CX
    
    MOV AH,09H                   ; color
    MOV BX,1011B                 ; lyght cyan
    MOV CX,1992
    INT 10H 
    
    MOV AH,9                     ; display welcome... message
    LEA DX,M1
    INT 21H
   
    
    INITIAL:                     ; display message
    MOV AH,9   
    LEA DX,MSG7
    INT 21H 
    
    INPUT:
   
    ADD VALUE,48                 ; extra addition value 
    ADD TEMP,48 
    ADD TEMP2,48
    
    MOV AH,1                     ; input function
    INT 21H
    MOV BL,AL
    
    CMP BL,'1'                   ; comparism
    JE START 
    CMP BL,'2' 
    JE LEVEL
    CMP BL,'3' 
    JE HELP
    CMP BL,'4' 
    JE EXIT    
     
    START:
    JMP EASY
        
    LEVEL:                      ; level
    MOV AH,9
    LEA DX,LEVEL1
    INT 21H 
    LEA DX,LEVEL2
    INT 21H
    LEA DX,LEVEL3
    INT 21H
    
    MOV AH,9
    LEA DX,MSG7
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    CMP BL,'1'
    JE  EASY
    CMP BL,'2'
    JE  MEDIUM
    CMP BL,'3'
    JE  HARD 
        
    EASY:                      ; easy level
    MOV AH,9 
    LEA DX,MSG8
    INT 21H
    
    LEA DX,EMH1
    INT 21H
    LEA DX,EMH2
    INT 21H 
    
    LEA DX,MSG7
    INT 21H
    
    MOV AH,1
    INT 21H
    
    CMP AL,'1'
    JE  ESC
    CMP AL,'2'
    JE EGK
        
    MEDIUM:
    MOV AH,9 
    LEA DX,MSG8
    INT 21H
    
    LEA DX,EMH1                  ; message science
    INT 21H
    LEA DX,EMH2                  ; message general knowledge
    INT 21H 
    
    LEA DX,MSG7
    INT 21H
    
    MOV AH,1
    INT 21H
    
    CMP AL,'1'
    JE  MSC
    CMP AL,'2'
    JE  MGK
                                  ; hard level
    HARD:
    MOV AH,9 
    LEA DX,MSG8
    INT 21H
    
    LEA DX,EMH1                  ; science
    INT 21H
    LEA DX,EMH2                  ; general knowledge
    INT 21H 
    
    LEA DX,MSG7
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    CMP BH,'1'
    JE  HSC
    CMP BH,'2'
    JE  HGK
       
                                  ; easy level ,science questions
    ESC:
         QS1:
         MOV AH,9
         LEA DX,1Q
         INT 21H  
         LEA DX,1QA
         INT 21H    
         CALL ANS_INPUT          ; take ans input         
         CMP AL,'c'              ; comparism with right ans
         JE  QSI1
         JMP QSD1
                       
         QS2:  
         MOV AH,9
         LEA DX,2Q
         INT 21H  
         LEA DX,2QA
         INT 21H    
         CALL ANS_INPUT                   
         CMP AL,'b'
         JE  QSI2
         JMP QSD2  
         
         QS3:           
         MOV AH,9
         LEA DX,3Q
         INT 21H  
         LEA DX,3QA
         INT 21H             
         CALL ANS_INPUT                  
         CMP AL,'a'
         JE  QSI3
         JMP QSD3  
    
         QS4:          
         MOV AH,9
         LEA DX,4Q
         INT 21H  
         LEA DX,4QA
         INT 21H     
         CALL ANS_INPUT                    
         CMP AL,'a'
         JE  QSI4
         JNE QSD4
           
         QS5:                   
         MOV AH,9
         LEA DX,5Q
         INT 21H  
         LEA DX,5QA
         INT 21H     
         CALL ANS_INPUT                           
         CMP AL,'c'
         JE  QSI5
         JNE QSD5
          
         QS6:          
         MOV AH,9
         LEA DX,6Q
         INT 21H  
         LEA DX,6QA
         INT 21H     
         CALL ANS_INPUT                  
         CMP AL,'b'
         JE  QSI6
         JNE QSD6
           
         QS7:         
         MOV AH,9
         LEA DX,7Q
         INT 21H  
         LEA DX,7QA
         INT 21H     
         CALL ANS_INPUT                           
         CMP AL,'c'
         JE  QSI7
         JNE QSD7
           
         QS8:          
         MOV AH,9
         LEA DX,8Q
         INT 21H  
         LEA DX,8QA
         INT 21H     
         CALL ANS_INPUT                           
         CMP AL,'b'
         JE  QSI8
         JNE QSD8 
          
         QS9:         
         MOV AH,9
         LEA DX,9Q
         INT 21H  
         LEA DX,9QA
         INT 21H     
         CALL ANS_INPUT             
         CMP AL,'a'
         JE  QSI9
         JNE QSD9 
          
         QS10:         
         MOV AH,9
         LEA DX,10Q
         INT 21H  
         LEA DX,10QA
         INT 21H     
         CALL ANS_INPUT             
         CMP AL,'b'
         JE  QSI10
         JNE QSD10                              
    EGK: 
         QS31:                        ; easy level,general knowledge questions
         MOV AH,9
         LEA DX,31Q
         INT 21H  
         LEA DX,31QA
         INT 21H     
         CALL ANS_INPUT                   
         CMP AL,'a'
         JE  QSI31
         JMP QSD31      
        
         QS32:          
         MOV AH,9
         LEA DX,32Q
         INT 21H  
         LEA DX,32QA
         INT 21H     
         CALL ANS_INPUT                   
         CMP AL,'c'
         JE  QSI32
         JMP QSD32  
         
         QS33:        
         MOV AH,9
         LEA DX,33Q
         INT 21H  
         LEA DX,33QA
         INT 21H             
         CALL ANS_INPUT                  
         CMP AL,'c'
         JE  QSI33
         JMP QSD33  
    
         QS34:          
         MOV AH,9
         LEA DX,34Q
         INT 21H  
         LEA DX,34QA
         INT 21H     
         CALL ANS_INPUT                    
         CMP AL,'b'
         JE  QSI34
         JNE QSD34 
          
         QS35: 
         MOV AH,9
         LEA DX,35Q
         INT 21H  
         LEA DX,35QA
         INT 21H     
         CALL ANS_INPUT                           
         CMP AL,'a'
         JE  QSI35
         JNE QSD35
          
         QS36:         
         MOV AH,9
         LEA DX,36Q
         INT 21H  
         LEA DX,36QA
         INT 21H     
         CALL ANS_INPUT                  
         CMP AL,'c'
         JE  QSI36
         JNE QSD36
           
         QS37:                  
         MOV AH,9
         LEA DX,37Q
         INT 21H  
         LEA DX,37QA
         INT 21H     
         CALL ANS_INPUT                           
         CMP AL,'b'
         JE  QSI37
         JNE QSD37
           
         QS38:                  
         MOV AH,9
         LEA DX,38Q
         INT 21H  
         LEA DX,38QA
         INT 21H     
         CALL ANS_INPUT                           
         CMP AL,'a'
         JE  QSI38
         JNE QSD38
           
         QS39:         
         MOV AH,9
         LEA DX,39Q
         INT 21H  
         LEA DX,39QA
         INT 21H     
         CALL ANS_INPUT             
         CMP AL,'b'
         JE  QSI39
         JNE QSD39
           
         QS40:         
         MOV AH,9
         LEA DX,40Q
         INT 21H  
         LEA DX,40QA
         INT 21H     
         CALL ANS_INPUT             
         CMP AL,'a'
         JE  QSI40
         JNE QSD40              
    MSC:                            ; medium level questions (science)
         QS11:
         MOV AH,9
         LEA DX,11Q
         INT 21H  
         LEA DX,11QA
         INT 21H    
         CALL ANS_INPUT                   
         CMP AL,'b'
         JE  QSI11
         JMP QSD11      
        
         QS12:         
         MOV AH,9
         LEA DX,12Q
         INT 21H  
         LEA DX,12QA
         INT 21H     
         CALL ANS_INPUT                   
         CMP AL,'a'
         JE  QSI12
         JMP QSD12  
         
         QS13:                   
         MOV AH,9
         LEA DX,13Q
         INT 21H  
         LEA DX,13QA
         INT 21H             
         CALL ANS_INPUT                  
         CMP AL,'c'
         JE  QSI13
         JMP QSD13  
    
         QS14:                  
         MOV AH,9
         LEA DX,14Q
         INT 21H  
         LEA DX,14QA
         INT 21H     
         CALL ANS_INPUT                    
         CMP AL,'c'
         JE  QSI14
         JNE QSD14
           
         QS15:                    
         MOV AH,9
         LEA DX,15Q
         INT 21H  
         LEA DX,15QA
         INT 21H     
         CALL ANS_INPUT                           
         CMP AL,'a'
         JE  QSI15
         JNE QSD15 
         
         QS16:         
         MOV AH,9
         LEA DX,16Q
         INT 21H  
         LEA DX,16QA
         INT 21H     
         CALL ANS_INPUT                  
         CMP AL,'b'
         JE  QSI16
         JNE QSD16
           
         QS17:        
         MOV AH,9
         LEA DX,17Q
         INT 21H  
         LEA DX,17QA
         INT 21H     
         CALL ANS_INPUT                           
         CMP AL,'c'
         JE  QSI17
         JNE QSD17 
          
         QS18:                   
         MOV AH,9
         LEA DX,18Q
         INT 21H  
         LEA DX,18QA
         INT 21H     
         CALL ANS_INPUT                           
         CMP AL,'b'
         JE  QSI18
         JNE QSD18
           
         QS19:                   
         MOV AH,9
         LEA DX,19Q
         INT 21H  
         LEA DX,19QA
         INT 21H     
         CALL ANS_INPUT             
         CMP AL,'a'
         JE  QSI19
         JNE QSD19
           
         QS20:         
         MOV AH,9
         LEA DX,20Q
         INT 21H  
         LEA DX,20QA
         INT 21H     
         CALL ANS_INPUT             
         CMP AL,'b'
         JE  QSI20
         JNE QSD20 
    MGK:                              ; medium level questions (general knowledge)
         QS41:
         MOV AH,9
         LEA DX,41Q
         INT 21H  
         LEA DX,41QA
         INT 21H     
         CALL ANS_INPUT                   
         CMP AL,'c'
         JE  QSI41
         JMP QSD41      
        
         QS42:         
         MOV AH,9
         LEA DX,42Q
         INT 21H  
         LEA DX,42QA
         INT 21H     
         CALL ANS_INPUT                   
         CMP AL,'b'
         JE  QSI42
         JMP QSD42  
         
         QS43:        
         MOV AH,9
         LEA DX,43Q
         INT 21H  
         LEA DX,43QA
         INT 21H            
         CALL ANS_INPUT                  
         CMP AL,'c'
         JE  QSI43
         JMP QSD43  
    
         QS44:                  
         MOV AH,9
         LEA DX,44Q
         INT 21H  
         LEA DX,44QA
         INT 21H     
         CALL ANS_INPUT                   
         CMP AL,'a'
         JE  QSI44
         JNE QSD44
           
         QS45:                   
         MOV AH,9
         LEA DX,45Q
         INT 21H  
         LEA DX,45QA
         INT 21H     
         CALL ANS_INPUT                         
         CMP AL,'c'
         JE  QSI45
         JNE QSD45
          
         QS46:                   
         MOV AH,9
         LEA DX,46Q
         INT 21H  
         LEA DX,46QA
         INT 21H     
         CALL ANS_INPUT                  
         CMP AL,'b'
         JE  QSI46
         JNE QSD46
           
         QS47:         
         MOV AH,9
         LEA DX,47Q
         INT 21H  
         LEA DX,47QA
         INT 21H     
         CALL ANS_INPUT                           
         CMP AL,'a'
         JE  QSI47
         JNE QSD47
           
         QS48:          
         MOV AH,9
         LEA DX,48Q
         INT 21H  
         LEA DX,48QA
         INT 21H    
         CALL ANS_INPUT                           
         CMP AL,'b'
         JE  QSI48
         JNE QSD48
           
         QS49:         
         MOV AH,9
         LEA DX,49Q
         INT 21H  
         LEA DX,49QA
         INT 21H     
         CALL ANS_INPUT             
         CMP AL,'c'
         JE  QSI49
         JNE QSD49
           
         QS50:                  
         MOV AH,9
         LEA DX,50Q
         INT 21H  
         LEA DX,50QA
         INT 21H     
         CALL ANS_INPUT             
         CMP AL,'a'
         JE  QSI50
         JNE QSD50    
    HSC:                                ; hard level questions (science)
         QS21:
         MOV AH,9
         LEA DX,21Q
         INT 21H  
         LEA DX,21QA
         INT 21H     
         CALL ANS_INPUT                   
         CMP AL,'c'
         JE  QSI21
         JMP QSD21      
        
         QS22:          
         MOV AH,9
         LEA DX,22Q
         INT 21H  
         LEA DX,22QA
         INT 21H     
         CALL ANS_INPUT                   
         CMP AL,'a'
         JE  QSI22
         JMP QSD22  
         
         QS23:        
         MOV AH,9
         LEA DX,23Q
         INT 21H  
         LEA DX,23QA
         INT 21H             
         CALL ANS_INPUT                  
         CMP AL,'c'
         JE  QSI23
         JMP QSD23  
    
         QS24:          
         MOV AH,9
         LEA DX,24Q
         INT 21H  
         LEA DX,24QA
         INT 21H     
         CALL ANS_INPUT                    
         CMP AL,'b'
         JE  QSI24
         JNE QSD24  
         
         QS25:          
         MOV AH,9
         LEA DX,25Q
         INT 21H  
         LEA DX,25QA
         INT 21H     
         CALL ANS_INPUT                           
         CMP AL,'b'
         JE  QSI25
         JNE QSD25
          
         QS26:         
         MOV AH,9
         LEA DX,26Q
         INT 21H  
         LEA DX,26QA
         INT 21H     
         CALL ANS_INPUT                 
         CMP AL,'a'
         JE  QSI26
         JNE QSD26
           
         QS27:        
         MOV AH,9
         LEA DX,27Q
         INT 21H  
         LEA DX,27QA
         INT 21H     
         CALL ANS_INPUT                           
         CMP AL,'c'
         JE  QSI27
         JNE QSD27 
          
         QS28:          
         MOV AH,9
         LEA DX,28Q
         INT 21H  
         LEA DX,28QA
         INT 21H     
         CALL ANS_INPUT                           
         CMP AL,'a'
         JE  QSI28
         JNE QSD28
           
         QS29:         
         MOV AH,9
         LEA DX,29Q
         INT 21H  
         LEA DX,29QA
         INT 21H     
         CALL ANS_INPUT             
         CMP AL,'c'
         JE  QSI29
         JNE QSD29
           
         QS30:         
         MOV AH,9
         LEA DX,30Q
         INT 21H  
         LEA DX,30QA
         INT 21H     
         CALL ANS_INPUT             
         CMP AL,'b'
         JE  QSI30
         JNE QSD30              
    HGK:                               ; medium level questions (general knowledge)
         QS51:
         MOV AH,9
         LEA DX,51Q
         INT 21H  
         LEA DX,51QA
         INT 21H    
         CALL ANS_INPUT                   
         CMP AL,'c'
         JE  QSI51
         JMP QSD51
                       
         QS52:         
         MOV AH,9
         LEA DX,52Q
         INT 21H  
         LEA DX,52QA
         INT 21H    
         CALL ANS_INPUT                   
         CMP AL,'a'
         JE  QSI52
         JMP QSD52  
         
         QS53:         
         MOV AH,9
         LEA DX,53Q
         INT 21H  
         LEA DX,53QA
         INT 21H             
         CALL ANS_INPUT                  
         CMP AL,'b'
         JE  QSI53
         JMP QSD53  
    
         QS54:         
         MOV AH,9
         LEA DX,54Q
         INT 21H  
         LEA DX,54QA
         INT 21H     
         CALL ANS_INPUT                    
         CMP AL,'c'
         JE  QSI54
         JNE QSD54
           
         QS55:         
         MOV AH,9
         LEA DX,55Q
         INT 21H  
         LEA DX,55QA
         INT 21H     
         CALL ANS_INPUT                           
         CMP AL,'b'
         JE  QSI55
         JNE QSD55 
         
         QS56:          
         MOV AH,9
         LEA DX,56Q
         INT 21H  
         LEA DX,56QA
         INT 21H     
         CALL ANS_INPUT                  
         CMP AL,'a'
         JE  QSI56
         JNE QSD56
           
         QS57:         
         MOV AH,9
         LEA DX,57Q
         INT 21H  
         LEA DX,57QA
         INT 21H     
         CALL ANS_INPUT                           
         CMP AL,'a'
         JE  QSI57
         JNE QSD57 
          
         QS58:          
         MOV AH,9
         LEA DX,58Q
         INT 21H  
         LEA DX,58QA
         INT 21H     
         CALL ANS_INPUT                           
         CMP AL,'b'
         JE  QSI58
         JNE QSD58 
          
         QS59:         
         MOV AH,9
         LEA DX,59Q
         INT 21H  
         LEA DX,59QA
         INT 21H     
         CALL ANS_INPUT             
         CMP AL,'b'
         JE  QSI59
         JNE QSD59 
          
         QS60:         
         MOV AH,9
         LEA DX,60Q
         INT 21H  
         LEA DX,60QA
         INT 21H     
         CALL ANS_INPUT             
         CMP AL,'c'
         JE  QSI60
         JNE QSD60         
     
    HELP:                       ; about quiz game instraction
    MOV AH,9
    LEA DX,HELP1
    INT 21H
    
    LEA DX,HELP3
    INT 21H
    LEA DX,HELP4
    INT 21H
    
    LEA DX,MSG7
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    CMP CL,'1'
    JE INITIAL
    CMP CL,'0'
    JE EXIT 
      
  
   QSI1:                          ; obtaine marks for every qustion
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS2   
   QSD1:
        CALL WRONG_ANS
        CALL QS2   
   QSI2:
        INC VALUE
        CALL RIGHT_ANS
        CALL QS3   
   QSD2: 
        CALL WRONG_ANS
        CALL QS3
   QSI3: 
        INC VALUE
        CALL RIGHT_ANS
        CALL QS4   
   QSD3:
        CALL WRONG_ANS
        CALL QS4   
   QSI4:
        INC VALUE
        CALL RIGHT_ANS
        CALL QS5   
   QSD4: 
        CALL WRONG_ANS
        CALL QS5
   QSI5: 
        INC VALUE
        CALL RIGHT_ANS
        CALL QS6   
   QSD5: 
        CALL WRONG_ANS
        CALL QS6   
   QSI6:
        INC VALUE
        CALL RIGHT_ANS
        CALL QS7   
   QSD6:
        CALL WRONG_ANS
        CALL QS7  
   QSI7: 
        INC VALUE
        CALL RIGHT_ANS
        CALL QS8   
   QSD7:
        CALL WRONG_ANS
        CALL QS8   
   QSI8:
        INC VALUE
        CALL RIGHT_ANS
        CALL QS9   
   QSD8:
        CALL WRONG_ANS
        CALL QS9
   QSI9: 
        INC VALUE
        CALL RIGHT_ANS
        CALL QS10   
   QSD9: 
        CALL WRONG_ANS
        CALL QS10
   QSI10: 
        INC VALUE   
        CALL RIGHT_ANS
        CALL RESULT    
   QSD10:
        CALL WRONG_ANS
        CALL RESULT           
   QSI11: 
        INC VALUE           ; medium science
        CALL RIGHT_ANS
        CALL QS12   
   QSD11:
        DEC VALUE
        CALL WRONG_ANS
        CALL QS12   
   QSI12:
        INC VALUE
        CALL RIGHT_ANS
        CALL QS13   
   QSD12:
        DEC VALUE 
        CALL WRONG_ANS
        CALL QS13
   QSI13: 
        INC VALUE
        CALL RIGHT_ANS
        CALL QS14   
   QSD13:
        DEC VALUE
        CALL WRONG_ANS
        CALL QS14   
   QSI14:
        INC VALUE
        CALL RIGHT_ANS
        CALL QS15   
   QSD14:
        DEC VALUE 
        CALL WRONG_ANS
        CALL QS15
   QSI15: 
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS16   
   QSD15:
        DEC VALUE
        CALL WRONG_ANS
        CALL QS16   
   QSI16:
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS17   
   QSD16: 
        DEC VALUE
        CALL WRONG_ANS
        CALL QS17  
   QSI17: 
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS18   
   QSD17:
        DEC VALUE
        CALL WRONG_ANS
        CALL QS18   
   QSI18:
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS19   
   QSD18:
        DEC VALUE 
        CALL WRONG_ANS
        CALL QS19
   QSI19: 
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS20   
   QSD19:
        DEC VALUE 
        CALL WRONG_ANS
        CALL QS20
   QSI20: 
        INC VALUE
        CALL RIGHT_ANS
        CALL RESULT    
   QSD20:
        DEC VALUE
        CALL WRONG_ANS
        CALL RESULT         
   QSI21:                  ; hard science
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS22   
   QSD21:
        DEC VALUE
        DEC VALUE
        CALL WRONG_ANS
        CALL QS22   
   QSI22:
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS23   
   QSD22:
        DEC VALUE
        DEC VALUE
        CALL WRONG_ANS
        CALL QS23
   QSI23: 
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS24   
   QSD23:
        DEC VALUE
        DEC VALUE 
        CALL WRONG_ANS
        CALL QS24   
   QSI24:
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS25   
   QSD24:
        DEC VALUE
        DEC VALUE 
        CALL WRONG_ANS
        CALL QS25
   QSI25: 
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS26   
   QSD25:
        DEC VALUE
        DEC VALUE 
        CALL WRONG_ANS
        CALL QS26   
   QSI26:
        INC VALUE
        CALL RIGHT_ANS
        CALL QS27   
   QSD26:
        DEC VALUE
        DEC VALUE 
        CALL WRONG_ANS
        CALL QS27  
   QSI27: 
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS28   
   QSD27:
        DEC VALUE
        DEC VALUE 
        CALL WRONG_ANS
        CALL QS28   
   QSI28:
        INC VALUE
        CALL RIGHT_ANS
        CALL QS29   
   QSD28:
        DEC VALUE
        DEC VALUE  
        CALL WRONG_ANS
        CALL QS29
   QSI29: 
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS30   
   QSD29:
        DEC VALUE 
        DEC VALUE 
        CALL WRONG_ANS
        CALL QS30
   QSI30: 
        INC VALUE 
        CALL RIGHT_ANS
        CALL RESULT    
   QSD30:
        DEC VALUE
        DEC VALUE  
        CALL WRONG_ANS
        CALL RESULT        
   QSI31:                  ; easy general knowledge
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS32   
   QSD31: 
        CALL WRONG_ANS
        CALL QS32   
   QSI32:
        INC VALUE
        CALL RIGHT_ANS
        CALL QS33   
   QSD32:
        CALL WRONG_ANS
        CALL QS33
   QSI33: 
        INC VALUE
        CALL RIGHT_ANS
        CALL QS34   
   QSD33:
        CALL WRONG_ANS
        CALL QS34   
   QSI34:
        INC VALUE
        CALL RIGHT_ANS
        CALL QS35   
   QSD34:
        CALL WRONG_ANS
        CALL QS35
   QSI35: 
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS36   
   QSD35: 
        CALL WRONG_ANS
        CALL QS36   
   QSI36:
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS37   
   QSD36:
        CALL WRONG_ANS
        CALL QS37  
   QSI37: 
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS38   
   QSD37:
        CALL WRONG_ANS
        CALL QS38   
   QSI38:
        INC VALUE
        CALL RIGHT_ANS
        CALL QS39   
   QSD38:
        CALL WRONG_ANS
        CALL QS39
   QSI39: 
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS40   
   QSD39:
        CALL WRONG_ANS
        CALL QS40
   QSI40: 
        INC VALUE 
        CALL RIGHT_ANS
        CALL RESULT    
   QSD40: 
        CALL WRONG_ANS
        CALL RESULT                          
   QSI41:                        ; medium general knowledge
        INC VALUE
        CALL RIGHT_ANS
        CALL QS42   
   QSD41:  
        DEC VALUE
        CALL WRONG_ANS
        CALL QS42   
   QSI42:
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS43   
   QSD42:
        DEC VALUE
        CALL WRONG_ANS
        CALL QS43
   QSI43: 
        INC VALUE
        CALL RIGHT_ANS
        CALL QS44   
   QSD43:
        DEC VALUE 
        CALL WRONG_ANS
        CALL QS44   
   QSI44:
        INC VALUE
        CALL RIGHT_ANS
        CALL QS45   
   QSD44:
        DEC VALUE 
        CALL WRONG_ANS
        CALL QS45
   QSI45: 
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS46   
   QSD45:
        DEC VALUE
        CALL WRONG_ANS
        CALL QS46   
   QSI46:
        INC VALUE
        CALL RIGHT_ANS
        CALL QS47   
   QSD46:
        DEC VALUE 
        CALL WRONG_ANS
        CALL QS47  
   QSI47: 
        INC VALUE
        CALL RIGHT_ANS
        CALL QS48   
   QSD47:
        DEC VALUE
        CALL WRONG_ANS
        CALL QS48   
   QSI48:
        INC VALUE
        CALL RIGHT_ANS
        CALL QS49   
   QSD48:
        DEC VALUE
        CALL WRONG_ANS
        CALL QS49
   QSI49: 
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS50   
   QSD49:
        DEC VALUE
        CALL WRONG_ANS
        CALL QS50
   QSI50: 
        INC VALUE
        CALL RIGHT_ANS
        CALL RESULT    
   QSD50: 
        DEC VALUE
        CALL WRONG_ANS
        CALL RESULT                    
   QSI51:                    ; hard general knowledge
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS52   
   QSD51:
        DEC VALUE 
        DEC VALUE
        CALL WRONG_ANS
        CALL QS52   
   QSI52:
        INC VALUE
        CALL RIGHT_ANS
        CALL QS53   
   QSD52:
        DEC VALUE
        DEC VALUE
        CALL WRONG_ANS
        CALL QS53
   QSI53: 
        INC VALUE
        CALL RIGHT_ANS
        CALL QS54   
   QSD53:
        DEC VALUE
        DEC VALUE
        CALL WRONG_ANS
        CALL QS54   
   QSI54:
        INC VALUE
        CALL RIGHT_ANS
        CALL QS55   
   QSD54:
        DEC VALUE 
        DEC VALUE
        CALL WRONG_ANS
        CALL QS55
   QSI55: 
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS56   
   QSD55:
        DEC VALUE
        DEC VALUE
        CALL WRONG_ANS
        CALL QS56   
   QSI56:
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS57   
   QSD56:
        DEC VALUE
        DEC VALUE
        CALL WRONG_ANS
        CALL QS57  
   QSI57: 
        INC VALUE  
        CALL RIGHT_ANS
        CALL QS58   
   QSD57:
        DEC VALUE
        DEC VALUE
        CALL WRONG_ANS
        CALL QS58   
   QSI58:
        INC VALUE
        CALL RIGHT_ANS
        CALL QS59   
   QSD58:
        DEC VALUE
        DEC VALUE
        CALL WRONG_ANS
        CALL QS59
   QSI59: 
        INC VALUE 
        CALL RIGHT_ANS
        CALL QS60   
   QSD59:
        DEC VALUE 
        DEC VALUE
        CALL WRONG_ANS
        CALL QS60
   QSI60: 
        INC VALUE 
        CALL RIGHT_ANS
        CALL RESULT    
   QSD60:
        DEC VALUE
        DEC VALUE
        CALL WRONG_ANS
        CALL RESULT         
     
   
   RESULT:                    ; final result
   CMP VALUE,39H
   JG EXELENT
   CALL NEW_LINE    
   
   MOV AH,9                   ; marks messge print
   LEA DX,MARKS
   INT 21H 
   
   CMP VALUE,'0'
   JL BELLO
   
   MOV AH,09                  ; color function
   MOV BX,1100B
   MOV CX,01
   INT 10H 
   
   
   
   MOV AH,2                   ; value of obatined marks print
   MOV DL,VALUE
   INT 21H
    
   CALL NEW_LINE              ; print new line
   CALL TAB                   ; print tab
    
   XOR AX,AX
   XOR BX,BX
   XOR CX,CX
   
   MOV AH,09H
   MOV BX,1101B               ; color function
   MOV CX,890
   INT 10H 
        
   MOV AH,9    
   LEA DX,FM1
   INT 21H 
    
   XOR AX,AX
   XOR BX,BX
   XOR CX,CX
     
   MOV AH,09H
   MOV BX,1001B
   MOV CX,700
   INT 10H
                
   MOV AH,9    
   LEA DX,FM12
   INT 21H 
  
   JMP EXIT
   
  
   
   EXELENT:                 ; for outstanding performance
   MOV AH,9
   LEA DX,MARKS
   INT 21H 
   
   MOV AH,09H
   MOV BX,1100B             ;color function 
   MOV CX,02
   INT 10H 
   
   MOV AH,2
   MOV DL,'1'
   INT 21H
   MOV DL,'0'
   INT 21H  
   
   MOV AH,9
   LEA DX,OTS
   INT 21H
   
   CALL NEW_LINE
   CALL TAB
   
   XOR AX,AX
   XOR BX,BX
   XOR CX,CX   
    
   MOV AH,09H
   MOV BX,1101B
   MOV CX,890
   INT 10H 
        
   MOV AH,9    
   LEA DX,FM1
   INT 21H 
    
   XOR AX,AX
   XOR BX,BX
   XOR CX,CX
     
   MOV AH,09H
   MOV BX,1001B
   MOV CX,700
   INT 10H
                
   MOV AH,9    
   LEA DX,FM12
   INT 21H 
   JMP EXIT
    
   NEW_LINE:               ; display newline
   MOV AH,2
   MOV DL,0AH
   INT 21H
   MOV DL,0DH
   INT 21H
   RET 
                           ; user ans input function
   ANS_INPUT:
   MOV AH,1
   INT 21H
   RET 
   
   RIGHT_ANS: 
   CALL NEW_LINE           ; function for right ans
   CALL TAB 
   
   MOV AH,09H
   MOV BX,1010B
   MOV CX,09
   INT 10H
   
   MOV AH,9
   LEA DX,RA
   INT 21H  
   RET
   
   WRONG_ANS:
   CALL NEW_LINE           ; function for wrong ans
   MOV AH,2    
   MOV DL,07H              ; sound adding function
   INT 21H 
   
   CALL TAB 
      
   MOV AH,09H
   MOV BX,1100B
   MOV CX,09
   INT 10H
    
   MOV AH,9    
   LEA DX,WA
   INT 21H 
   RET
   
   TAB:                   ; print a tab
   MOV AH,2
   MOV DL,09H
   INT 21H
   RET 
   
   BELLO:          ; bello 0 marks
   INC TEMP
   INC VALUE
   CMP VALUE,'0'
   JE PNV
   JMP BELLO
   
   PNV:      ; print negative value
   CMP TEMP,'9'
   JG BUT    ; bello uper 10 
    
   XOR AX,AX
   XOR BX,BX
   XOR CX,CX
   MOV AH,09                  ; color function
   MOV BX,1100B
   MOV CX,02
   INT 10H 
   
   MOV AH,2
   MOV DL,'-'
   INT 21H
   MOV DL,TEMP
   INT 21H 
   
   CALL FINISH
   
   BUT:
   
   CMP TEMP,58
   JE PBUT 
   INC TEMP2
   DEC TEMP
   JMP BUT
   
   PBUT:          ; print bello epper 10  value
   XOR AX,AX
   XOR BX,BX
   XOR CX,CX
   MOV AH,09                  ; color function
   MOV BX,1100B
   MOV CX,03
   INT 10H 
   
   MOV AH,2
   MOV DL,'-'
   INT 21H   
   
   MOV AH,2
   MOV DL,'1'
   INT 21H 
   
   MOV AH,2
   MOV DL,TEMP2
   INT 21H
   
    CALL FINISH
    
   FINISH:
   CALL NEW_LINE              ; print new line
   CALL TAB                   ; print tab
    
   XOR AX,AX
   XOR BX,BX
   XOR CX,CX
   
   MOV AH,09H
   MOV BX,1101B               ; color function
   MOV CX,890
   INT 10H 
        
   MOV AH,9    
   LEA DX,FM1
   INT 21H 
    
   XOR AX,AX
   XOR BX,BX
   XOR CX,CX
     
   MOV AH,09H
   MOV BX,1001B
   MOV CX,700
   INT 10H
                
   MOV AH,9    
   LEA DX,FM12
   INT 21H 
      
     
    EXIT:
    XOR CX,CX
    MOV CX,5 
    SD:
    MOV AH,2               ; sound
    MOV DL,07H
    INT 21H
    LOOP SD
     
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN





; 0      0000      black
; 1      0001      blue
; 2      0010      green
; 3      0011      cyan
; 4      0100      red
; 5      0101      magenta
; 6      0110      brown
; 7      0111      light gray
; 8      1000      dark gray
; 9      1001      light blue
; a      1010      light green
; b      1011      light cyan
; c      1100      light red
; d      1101      light magenta
; e      1110      yellow
; f      1111      white