def sample_titles
  [
    "#33 01.10.2016",
    "#32 24.09.2016",
    "#31 17.09.2016",
    "#30 10.09.2016",
    "#29 27.08.2016"
  ]
end

def sample_bodies
  [
    "01. 808 State - In Yer Face (Bicep Remix) \n
     02. Jakobin & Domino - Static Tides (Coeo 'High Tide' Remix)\n
     03. Realitycheck - Trafficjamblues\n
     04. Paolo Macri - Daydream\n
     05. Timmy P, Stefano Esposito - Hold On (Original Mix)\n
     06. Green Velvet - Bigger Than Prince (Hot Since 82 Remix)\n
     07. Vktor & Lowris - Bit My Jazz (Original Mix)\n
     08. Mark Ronson feat. Amy Winehouse - Valerie (Andy Cato's 'Pack Up & Dance' Remix)\n
     09. Kollektiv Turmstrasse - Sorry I'm Late (Original Mix)\n
     10. Fritz Kalkbrenner - Center To Center\n
     11. Franky Rizardo - Power Flanger (Original Mix)\n
     12. JFunc - From the Ghetto\n
     13. Colaars - Backseat Kisses (TYSMN Remix)",
    "01. Tiga - Blondes Have More Fun (Extended Alternate Mix)\n
     02. Låpsley - Operator (DJ Koze's Disco Edit)\n
     03. Kraak & Smaak - Way Back Home Feat. Ivar (Tiger & Woods Remix)\n
     04. Leon Vynehall - Butterflies (Original Mix)\n
     05. Angelo Ferreri - Turn In Silence\n
     06. Cleavage & Lars Vegas - Grace (Original Mix)\n
     07. Spiritchaser - Paradise Row (Richard Earnshaw Horizon RE-Vision)\n
     08. Miguel Puente - Enki\n
     09. Gabe feat. Barja - Sick Sick (Original Mix)\n
     10. Santo - Citizen (Original Mix)\n
     11. Vanilla Ace - Down With It (Original Mix)\n
     12. Beedeep - Don't Stop\n
     13. Iban Montoro, Jazzman Wax - Rapaz (Robb Swinga's Ginga Remix)\n
     14. Danny Howard - Don't Wanna Stop (Extended Mix)\n
     15. Lana Del Rey - BBM Baby",
    "01. Disco Fries - Somebody Told Me ft. Chrissy Quadros\n
     02. Freejak   Safety First V s Rosie Gaines - Close \n
     03. Anthony El Mejor - Shut Up (Original Mix)\n
     04. Jerome Price - Me Minus You (Extended)\n
     05. Fatboy Slim - Praise You Right Now (Dunisco Remix)\n
     06. Alexis Raphael - Total Confusion\n
     07. Ritmo Du Vela - Keep It Underground\n
     08. Julio Navas -  Matematico (Marco Lys Remix)\n
     09. Chus & Ceballos vs. The Fog - Been A Long Time (Mark Knight Remix)\n
     10. Alex Kosoglaz & John Joshua feat. SKYLR - Out Of Time (Hoxton Whores Club Mix)\n
     11. Kydus,Moji - Boomtang (Original Mix)\n
     12. Mandal & Forbes - Really Love (Dirty Freek Remix)\n
     13. ZHU - In the Morning (Cooperated Souls Remix)\n
     14. Mat Zo feat. I See MONSTAS - Sinful (Original Mix)\n
     15. Saint Tropez Caps, Damae - Human Nature (Luca Debonaire Club Mix)",
    "01. Phillipi & Rodrigo - New Beach\n
     02. Angelo Ferreri - Children In Love\n
     03. Bawrut - Ciquita (Ransom Note Edit) \n
     04. Claptone Ft. Nathan Nicholson - Heartbeat (Mat.Joe Remix)\n
     05. Federico Scavo - Let's All Chant (Goondocks Remix)\n
     06. Luca Debonaire & Leandro Da Silva - Soiree Disco (Original Mix)\n
     07. Sannie - In The Morning (Francois Extended Remix)\n
     08. Sam Feldt ft. Heidi Rojas - Shadows Of Love ( THE FIRST STATION REMIX )\n
     09. Chace & Moksi - For a Day\n
     10. Sean Roman, Richard Brooks & Uros Raickovic - Delaney Crescent (Original Club Mix)\n
     11. Diplo - Revolution (Schnor Remix)\n
     12. Duke Dumont - Be Here\n
     13. Don Sizzle - Naked Attempt \n
     14. Till West - Same Man (Engelhart Rework)",
    "01. Hannah Wants - Dot Com (Original Mix)\n
     02. EDX - My Friend (Extended Mix)\n
     03. D Ramirez - Brutal Power (Barber Remix)\n
     04. Lee Cabrera - Shake It (Joe Stone Remix)\n
     05. CID & Kaskade - Sweet Memories (Extended Mix)\n
     06. Onuka - Vidlik  (Fatan & Forlen Remix)\n
     07. Agua Sin Gas by Antoine Clamaran - Jumbo Jumbo (Original Mix)\n
     08. Anil Aras - Shake Dat Ass\n
     09. Chris Hartwig - Take It Easy (Original Mix)\n
     10. Drop Department - Mahala (Original mix)\n
     11. Jauz - Goodiez (Original Mix)\n
     12. Dusty Kid - Constant Rising (Original Mix)\n
     13. Sted-E & Hybrid Heights - Buenaventura (Original Mix)\n
     14. Luca Debonaire - Got the Feelin (Club Mix)\n
     15. Kryder & Eddie Thoneick - The Chant (Extended Mix)"
  ]
end

Post.delete_all
5.times { Post.create( title: sample_titles.sample, body: sample_bodies.sample) }
