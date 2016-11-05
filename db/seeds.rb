require 'database_cleaner'

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
    "01. 808 State - In Yer Face (Bicep Remix)
    02. Jakobin & Domino - Static Tides (Coeo 'High Tide' Remix)
    03. Realitycheck - Trafficjamblues
    04. Paolo Macri - Daydream
    05. Timmy P, Stefano Esposito - Hold On (Original Mix)
    06. Green Velvet - Bigger Than Prince (Hot Since 82 Remix)
    07. Vktor & Lowris - Bit My Jazz (Original Mix)
    08. Mark Ronson feat. Amy Winehouse - Valerie (Andy Cato's 'Pack Up & Dance' Remix)
    09. Kollektiv Turmstrasse - Sorry I'm Late (Original Mix)
    10. Fritz Kalkbrenner - Center To Center
    11. Franky Rizardo - Power Flanger (Original Mix)
    12. JFunc - From the Ghetto
    13. Colaars - Backseat Kisses (TYSMN Remix)",
    "01. Tiga - Blondes Have More Fun (Extended Alternate Mix)
    02. Låpsley - Operator (DJ Koze's Disco Edit)
    03. Kraak & Smaak - Way Back Home Feat. Ivar (Tiger & Woods Remix)
    04. Leon Vynehall - Butterflies (Original Mix)
    05. Angelo Ferreri - Turn In Silence
    06. Cleavage & Lars Vegas - Grace (Original Mix)
    07. Spiritchaser - Paradise Row (Richard Earnshaw Horizon RE-Vision)
    08. Miguel Puente - Enki
    09. Gabe feat. Barja - Sick Sick (Original Mix)
    10. Santo - Citizen (Original Mix)
    11. Vanilla Ace - Down With It (Original Mix)
    12. Beedeep - Don't Stop
    13. Iban Montoro, Jazzman Wax - Rapaz (Robb Swinga's Ginga Remix)
    14. Danny Howard - Don't Wanna Stop (Extended Mix)
    15. Lana Del Rey - BBM Baby",
    "01. Disco Fries - Somebody Told Me ft. Chrissy Quadros
    02. Freejak   Safety First V s Rosie Gaines - Close
    03. Anthony El Mejor - Shut Up (Original Mix)
    04. Jerome Price - Me Minus You (Extended)
    05. Fatboy Slim - Praise You Right Now (Dunisco Remix)
    06. Alexis Raphael - Total Confusion
    07. Ritmo Du Vela - Keep It Underground
    08. Julio Navas -  Matematico (Marco Lys Remix)
    09. Chus & Ceballos vs. The Fog - Been A Long Time (Mark Knight Remix)
    10. Alex Kosoglaz & John Joshua feat. SKYLR - Out Of Time (Hoxton Whores Club Mix)
    11. Kydus,Moji - Boomtang (Original Mix)
    12. Mandal & Forbes - Really Love (Dirty Freek Remix)
    13. ZHU - In the Morning (Cooperated Souls Remix)
    14. Mat Zo feat. I See MONSTAS - Sinful (Original Mix)
    15. Saint Tropez Caps, Damae - Human Nature (Luca Debonaire Club Mix)",
    "01. Phillipi & Rodrigo - New Beach
    02. Angelo Ferreri - Children In Love
    03. Bawrut - Ciquita (Ransom Note Edit)
    04. Claptone Ft. Nathan Nicholson - Heartbeat (Mat.Joe Remix)
    05. Federico Scavo - Let's All Chant (Goondocks Remix)
    06. Luca Debonaire & Leandro Da Silva - Soiree Disco (Original Mix)
    07. Sannie - In The Morning (Francois Extended Remix)
    08. Sam Feldt ft. Heidi Rojas - Shadows Of Love ( THE FIRST STATION REMIX )
    09. Chace & Moksi - For a Day
    10. Sean Roman, Richard Brooks & Uros Raickovic - Delaney Crescent (Original Club Mix)
    11. Diplo - Revolution (Schnor Remix)
    12. Duke Dumont - Be Here
    13. Don Sizzle - Naked Attempt
    14. Till West - Same Man (Engelhart Rework)",
    "01. Hannah Wants - Dot Com (Original Mix)
    02. EDX - My Friend (Extended Mix)
    03. D Ramirez - Brutal Power (Barber Remix)
    04. Lee Cabrera - Shake It (Joe Stone Remix)
    05. CID & Kaskade - Sweet Memories (Extended Mix)
    06. Onuka - Vidlik  (Fatan & Forlen Remix)
    07. Agua Sin Gas by Antoine Clamaran - Jumbo Jumbo (Original Mix)
    08. Anil Aras - Shake Dat Ass
    09. Chris Hartwig - Take It Easy (Original Mix)
    10. Drop Department - Mahala (Original mix)
    11. Jauz - Goodiez (Original Mix)
    12. Dusty Kid - Constant Rising (Original Mix)
    13. Sted-E & Hybrid Heights - Buenaventura (Original Mix)
    14. Luca Debonaire - Got the Feelin (Club Mix)
    15. Kryder & Eddie Thoneick - The Chant (Extended Mix)"
  ]
end

def sample_comments
    ["consectetur", "adipiscing", "Engelhart", "Buenaventura", "Dusty Kid"]
end

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean
5.times do 
  post = Post.create(title: sample_titles.sample, body: sample_bodies.sample,
                    image: open("app/assets/images/g3352.png"))
  Comment.create(body: sample_comments.sample, post_id: post.id)
end
User.create(name:"Example User", email: "user@example.com",
            password:"foobar", password_confirmation: "foobar")
