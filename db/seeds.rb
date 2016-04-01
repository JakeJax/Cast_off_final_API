# Create main user
# @djina = User.create(
#   name: "Djina",
#   email: "djina@example.com",
#   password: "password"
#   #image: "/images/djina.png"
# )

# @jake = User.create(
#   name: "Jake",
#   email: "jake@example.com",
#   password: "password"
#   #image: "/images/jake.png"
# )

# @brendan = User.create(
#   name: "Brandon",
#   email: "brendan@example.com",
#   password: "password"
#   #image: "/images/brandon.png"
# )

Jake = User.create(
  name: "Jake",
  email: "jake@test.com",
  password: "1234567",
  image: "/src/public/images/jake.jpg"
)

Djina = User.create(
  name: "Djina",
  email: "djina@test.com",
  password: "1234567",
  image: "/src/public/images/djina.jpg"
)


#########################################
comedy = Mood.create(
  title: 'Comedy',
  image: "/src/public/images/comedy.png"
)

educational = Mood.create(
  title: 'Educational',
  image: "/src/public/images/gradhat.png")

drama = Mood.create(
  title: 'Drama',
  image: "/src/public/images/drama.png"
)

pop_culture = Mood.create(
  title: 'Pop Culture',
  image: "/src/public/images/popcultn.png")


#########################################
#Comedy playlists



cbb = comedy.playlists.create!(
  title: "Comedy Bang! Bang!",
  mood_id: comedy.id,
  image: "http://a5.mzstatic.com/us/r30/Music6/v4/58/68/ba/5868bab8-8e5d-eb52-8a01-5eba10355271/cover170x170.jpeg",
  link: "http://www.earwolf.com/show/comedy-bang-bang/",
  description: "Join host Scott Aukerman ('Comedy Bang!
   Bang!' on IFC, 'Mr. Show') for a weekly podcast that 
blends conversation and character work from today's funniest
 comedians. While Scott begins by traditionally interviewing 
 the celebrities, the open-door policy means an assortment of 
 eccentric oddballs can pop by at any moment to chat, compete in games, 
 and engage in comic revelry. With all that,andregular bonus episodes,
  we bet your favorite part will still be the plugs!"
)

cbb.podcasts.create!(
  title: "403 Adam Scott, Tim Baltz, Dan Ahdoot",
  playlist_id: cbb.id,
  url: "http://feeds.soundcloud.com/stream/248281932-comedybangbang-403-adam-scott-tim-baltz-dan-ahdoot.mp3"
)

cbb.podcasts.create!(
  title: "399 Gilbert Gottfried, James Adomian, Anthony Atamanuik",
  playlist_id: cbb.id,
  url: "http://feeds.soundcloud.com/stream/245381110-comedybangbang-399-gilbert-gottfried-james-adomian-anthony-atamanuik.mp3"
)

cbb.podcasts.create!(
  title: "395 Whitney Cummings, John Gemberling, Mary Holland",
  playlist_id: cbb.id,
  url: "http://feeds.soundcloud.com/stream/242508396-comedybangbang-395-whitney-cummings-john-gemberling-mary-holland.mp3"
)

spy = comedy.playlists.create!(
  title: "Stop Podcasting Yourself",
  mood_id: comedy.id,
  image: "http://a3.mzstatic.com/us/r30/Music/v4/02/a5/7a/02a57abe-8b82-1762-18c2-b55bc06ad4bb/cover170x170.jpeg",
  link: "http://www.maximumfun.org/shows/stop-podcasting-yourself",
  description: "Canada's top comedy podcast. Hosted by 
  Graham Clark and Dave Shumka, with weekly guests. 
  Hilarious weekly guests? Yup."
)

spy.podcasts.create!(
  title: "Episode 414 - Rhea Butcher",
  playlist_id: spy.id,
  url: "http://traffic.libsyn.com/stoppodcastingyourself/Episode_414_-_Rhea_Butcher.mp3"
)


spy.podcasts.create!(
  title: "Episode 411 - Debra DiGiovanni",
  playlist_id: spy.id,
  url: "http://traffic.libsyn.com/stoppodcastingyourself/Episode_411_-_Debra_DiGiovanni.mp3"
)


mbmbam = comedy.playlists.create!(
  title: "My Brother, My Brother, and Me",
  mood_id: comedy.id,
  image: "http://a5.mzstatic.com/us/r30/Music3/v4/c0/51/6e/c0516e3f-fa63-91ed-b7b9-7401f250f33f/cover170x170.jpeg",
  link: "http://www.maximumfun.org/shows/my-brother-my-brother-and-me",
  description: "Free advice from three of the world's most qualified, most related experts: Justin, Travis and Griffin McElroy. For one-half to three-quarters of an hour every Monday, we tell people how to live their lives, because we're obviously doing such a great job of it so far."
)

mbmbam.podcasts.create!(
  title: "MBMBaM 291: Most Likely to Boat",
  playlist_id: mbmbam.id,
  url: "http://traffic.libsyn.com/mbmbam/MyBrotherMyBrotherandMe291.mp3"
)

mbmbam.podcasts.create!(
  title: "MBMBaM 282: Candlenights 2015",
  playlist_id: mbmbam.id,
  url: "http://traffic.libsyn.com/mbmbam/MyBrotherMyBrotherandMe282.mp3"
)



hdtgm = comedy.playlists.create!(
  title: "How Did This Get Made?",
  mood_id: comedy.id,
  image: "http://a3.mzstatic.com/us/r30/Music4/v4/5a/b8/5a/5ab85a1b-cf9e-54ba-7ba4-8e0bd36e9db2/cover170x170.jpeg",
  link: "http://www.earwolf.com/show/how-did-this-get-made/",
  description: "Have you ever seen a movie so bad that it's amazing? Paul Scheer, June Diane Raphael and Jason Mantzoukas want to hear about it! We'll watch it with our funniest friends, and report back to you with the results."
)

hdtgm.podcasts.create!(
  title: "130 Teen Witch (w/ Deanna Cheng)",
  playlist_id: hdtgm.id,
  url: "http://feeds.soundcloud.com/stream/248615490-hdtgm-130-teen-witch-w-deanna-cheng.mp3"
)

hdtgm.podcasts.create!(
  title: "BONUS! Bitch Sesh Ep. 2: Ciao, Tuscany!",
  playlist_id: hdtgm.id,
  url: "http://feeds.soundcloud.com/stream/236825710-hdtgm-bonus-bitch-sesh-ep-2-ciao-tuscany-w-louis-peitzman.mp3"
)



sc = comedy.playlists.create!(
  title: "SleepyCabin",
  mood_id: comedy.id,
  image: "http://a5.mzstatic.com/us/r30/Music3/v4/78/e6/12/78e61226-d320-87c5-0212-2672acf111b4/cover170x170.jpeg",
  link: "http://sleepycabin.com/media/sleepycast/",
  description: "Official SleepyCabin podcast! Talented and handsome content creators spend ~2 hours out of their otherwise busy and miserable week to discuss food, fun, and shooting babies in the face - all with a generous pinch of self-deprecating humor!"
)

sc.podcasts.create!(
  title: "The Stinky Cheese Harmonies",
  playlist_id: sc.id,
  url: "http://feeds.soundcloud.com/stream/246769461-sleepycabin-sleepycast-s2e12-the-stinky-cheese-harmonies.mp3"
  )

sc.podcasts.create!(
  title: "Dear Annie Johnson",
  playlist_id: sc.id,
  url: "http://feeds.soundcloud.com/stream/242219923-sleepycabin-sleepycast-s2e9-dear-annie-johnson.mp3"
)

sc.podcasts.create!(
  title: "Court Night Terrors",
  playlist_id: sc.id,
  url: "http://feeds.soundcloud.com/stream/236825710-hdtgm-bonus-bitch-sesh-ep-2-ciao-tuscany-w-louis-peitzman.mp3"
)


#########################################
# Pop Culture playlists

sj = pop_culture.playlists.create!(
  title: "Sodajerker On Songwriting",
  mood_id: pop_culture.id,
  image: "http://a4.mzstatic.com/us/r30/Music/v4/4a/c7/43/4ac74364-26ae-559b-2c30-2a79bda58d78/cover170x170.jpeg",
  link: "http://www.sodajerker.com/podcast/",
  description: "Sodajerker On Songwriting is a programme devoted to the art and craft of songwriting. The show, created and hosted by the UK songwriting team Sodajerker, features interviews with some of the most successful songwriters and musicians in the world."
)

sj.podcasts.create!(
  title: "Episode 84 - Willy Russell",
  playlist_id: sj.id,
  url: "http://traffic.libsyn.com/sodajerker/episode_84_willy_russell.mp3"
)

sj.podcasts.create!(
  title: "Episode 83 - Scroobius Pip",
  playlist_id: sj.id,
  url: "http://traffic.libsyn.com/sodajerker/episode_83_scroobius_pip.mp3")




la = pop_culture.playlists.create!(
  title: "Little Atoms",
  mood_id: pop_culture.id,
  image: "http://a4.mzstatic.com/us/r30/Music69/v4/be/b4/0c/beb40c0f-f5ce-b9bd-bb42-10407a63527a/cover170x170.jpeg",
  link: "http://littleatoms.com/",
  description: "Little Atoms is a weekly show featuring the worlds of science, journalism, politics, religion, academia, human rights and the arts in conversation. Produced and presented by Neil Denny. It's broadcast every Wednesday from 11:00 GMT on Resonance 104.4 F..."
)

la.podcasts.create!(
  title: "Little Atoms 407: Maria Konnikova and The Confidence Game",
  playlist_id: la.id,
  url: "http://rss.acast.com/littleatoms/littleatoms407-mariakonnikovaandtheconfidencegame/media.mp3")

la.podcasts.create!(
  title: "Little Atoms 406 - Kathryn Harkup and A is for Arsenic",
  playlist_id: la.id,
  url: "http://rss.acast.com/littleatoms/littleatoms406-kathrynharkupandaisforarsenic/media.mp3")



ar = pop_culture.playlists.create!(
  title: "Another Round",
  mood_id: pop_culture.id,
  image: "http://a1.mzstatic.com/us/r30/Music69/v4/0f/39/41/0f394128-f029-39f3-f868-b2fb9a59b7a7/cover170x170.jpeg",
  link: "http://www.buzzfeed.com/anotherround",
  description: "Heben Nigatu and Tracy Clayton cover everything from race, gender and pop culture to squirrels, mangoes, and bad jokes, all in one boozy show."
)


ar.podcasts.create!(
  title: "Episode 43: A Gumbo of Afrofuturism (with Vann R. Newkirk II)",
  playlist_id: ar.id,
  url: "http://rss.acast.com/anotherround/episode43-thegumboofafrofuturism-withvannr.newkirkii-/media.mp3"
)

ar.podcasts.create!(
  title: "Episode 42: Fried Chicken Is A Battleground (with Wyatt Cenac)",
  playlist_id: ar.id,
  url: "http://rss.acast.com/anotherround/episode42-friedchickenisabattleground-withwyattcenac-/media.mp3"
)


##########################################################
#DRAMA  PLAYLISTS


ser = drama.playlists.create!(
  title: "Serial",
  mood_id: drama.id,
  image: "http://a5.mzstatic.com/us/r30/Music69/v4/70/c9/71/70c97133-f3a8-738e-ea2c-27a6dc7d9731/cover170x170.jpeg",
  link: "https://serialpodcast.org/",
  description: "Serial is a podcast from the creators of This American Life, hosted by Sarah Koenig. Serial unfolds one story - a true story - over the course of a whole season. The show follows the plot and characters wherever they lead, through many surprising twists and turns. Sarah won't know what happens at the end of the story until she gets there, not long before you get there with her. Each week she'll bring you the latest chapter, so it's important to listen in, starting with Episode 1. New episodes are released on Thursday mornings."
)


ser.podcasts.create!(
  title: "Episode 07: Hindsight, Part 1",
  playlist_id: ser.id,
  url: "https://dts.podtrac.com/redirect.mp3/dovetail.prxu.org/serial/2097919b-f33a-4437-aacf-bd08abb2e91b/serial-s02-e07.mp3")

ser.podcasts.create!(
  title: "Episode 08: Hindsight, Part 2",
  playlist_id: ser.id,
  url: "https://dts.podtrac.com/redirect.mp3/dovetail.prxu.org/serial/71b7d15f-8dd1-46d0-b761-a41ccdba0641/serial-s02-e08.mp3")

ser.podcasts.create!(
  title: "Episode 06: 5 O'Clock Shadow",
  playlist_id: ser.id,
  url: "https://dts.podtrac.com/redirect.mp3/dovetail.prxu.org/serial/09441b0a-d457-4319-9540-3a52f715faec/serial-s02-e06.mp3")



tl = drama.playlists.create!(
  title: "The Lapse",
  mood_id: drama.id,
  image: "http://a2.mzstatic.com/us/r30/Music69/v4/ed/02/39/ed0239fc-ef73-b2ef-908a-048eb46ad638/cover170x170.jpeg",
  link: "http://www.thelapse.org/",
  description: "Winner of iTunes Best Podcasts of 2014, 'beautifully
   edited & rich in sound,' sound designer Kyle Gest journeys 
   listeners through true stories, gussied up. Whether wrongfully
    arrested in Thailand, contracting flesh-eating bacteria, or 
    taking your parents to Burning Man, we tell true stories that 
    feel like movies. See with your ears. This is The Lapse. New to 
    the show? Try 'His My Arms,' 'Where's Violet?' or 'Cool Running.'"
)

tl.podcasts.create!(
  title: "Trash Mom – Candice Fox | Episode 36",
  playlist_id: tl.id,
  url: "http://media.blubrry.com/thelapse/content.blubrry.com/thelapse/Trash_Mom_-_Candice_Fox___Episode_36.mp3")

tl.podcasts.create!(
  title: "The Envelope Please – Jupiter Diego | Episode 35",
  playlist_id: tl.id,
  url: "http://media.blubrry.com/thelapse/content.blubrry.com/thelapse/The_Envelope_Please_-_Jupiter_Diego___Episode_35.mp3")

tl.podcasts.create!(
  title: "Send in the Clowns – Tom O’Keefe | Episode 34",
  playlist_id: tl.id,
  url: "http://media.blubrry.com/thelapse/content.blubrry.com/thelapse/34_Send_in_the_Clowns_-_Tom_O_Keefe___Episode_34.mp3"
)





lf = drama.playlists.create!(
  title: "Longform",
  mood_id: drama.id,
  image: "http://a1.mzstatic.com/us/r30/Music1/v4/3e/a5/e2/3ea5e241-6c2d-1327-db84-4ebe478e2b89/cover170x170.jpeg",
  link: "http://longform.org/podcast",
  description: "A weekly conversation with a non-fiction writer about how they got their start and how they tell stories. Co-produced by Longform and The Atavist."
)


lf.podcasts.create!(
  title: "Episode 181: Wesley Yang",
  playlist_id: lf.id,
  url: "http://traffic.libsyn.com/longform/Ep._181_-_Wesley_Yang.mp3")

lf.podcasts.create!(
  title: "Episode 179: Heben Nigatu and Tracy Clayton",
  playlist_id: lf.id,
  url: "http://traffic.libsyn.com/longform/Ep_179_-_Heben_Nigatu_and_Tracy_Clayton.mp3")

########################################
#Educational playlists

sysk = educational.playlists.create!(
  title: "Stuff You Should Know",
  mood_id: educational.id,
  image: "http://a2.mzstatic.com/us/r30/Music7/v4/d5/82/f9/d582f9fb-f050-7a15-4af7-844f42f7eae0/cover170x170.jpeg",
  link: "http://www.stuffyoushouldknow.com/podcasts/",
  description: "How do landfills work? How do mosquitos work? Join Josh and Chuck as they explore the Stuff You Should Know about everything from genes to the Galapagos in this podcast from HowStuffWorks.com"
)

sysk.podcasts.create!(
  title: "The Future of Renewable Energy, Featuring Bill Gates",
  playlist_id: sysk.id,
  url: "http://www.podtrac.com/pts/redirect.mp3/podcasts.howstuffworks.com/hsw/podcasts/sysk/2016-02-23-sysk-renewable-energy-final.mp3"
)

sysk.podcasts.create!(
  title: "(Approximately) 10 Things That Vanished Mysteriously",
  playlist_id: sysk.id,
  url: "http://www.podtrac.com/pts/redirect.mp3/podcasts.howstuffworks.com/hsw/podcasts/sysk/2016-02-25-sysk-things-missing-without-trace-final.mp3"
)

sysk.podcasts.create!(
  title: "How Nitrous Oxide Works",
  playlist_id: sysk.id,
  url: "http://www.podtrac.com/pts/redirect.mp3/podcasts.howstuffworks.com/hsw/podcasts/sysk/2016-02-18-sysk-nitrous-oxide-final.mp3"
)








tps = educational.playlists.create!(
  title: "The Paleo Solution",
  mood_id: educational.id,
  image: "http://a2.mzstatic.com/us/r30/Music1/v4/da/87/99/da879993-d468-616f-518e-b0bc59259a35/cover170x170.jpeg",
  link: "http://robbwolf.com/podcast/",
  description: "The Paleo Solution Podcast is a multi-year, top ranked podcast spanning the interconnected topics of performance, health and longevity."
)

tps.podcasts.create!(
  title: "The Paleo Solution - Episode 309 - Beverly Myer - Health Recovery, Vitamins A-D-K, and Neurotransmitters",
  playlist_id: tps.id,
  url: "http://traffic.libsyn.com/robbwolf/PaleoSolution-309.mp3"
)

tps.podcasts.create!(
  title: "The Paleo Solution - Episode 308 - Mark Schatzker - Hyperpalatability Of Food",
  playlist_id: tps.id,
  url: "http://traffic.libsyn.com/robbwolf/PaleoSolution-308.mp3"
)








str = educational.playlists.create!(
  title: "StarTalk Radio",
  mood_id: educational.id,
  image: "http://a4.mzstatic.com/us/r30/Music5/v4/56/89/5d/56895df2-ad9e-a817-03bf-d99d5ef69e19/cover170x170.jpeg",
  link: "http://www.startalkradio.net/",
  description: "Science meets comedy and pop culture on StarTalk Radio! Astrophysicist and Hayden Planetarium director Neil deGrasse Tyson, his comic co-hosts, guest celebrities and scientists discuss astronomy, physics, and everything else about life in the universe."
)

str.podcasts.create!(
  title: "Season 6 Time Capsule (Part 1)",
  playlist_id: str.id,
  url: "http://www.podtrac.com/pts/redirect.mp3/feeds.soundcloud.com/stream/247920465-startalk-season-6-time-capsule-part-1.mp3"
)


str.podcasts.create!(
  title: "Cosmic Queries The Science Of Love",
  playlist_id: str.id,
  url: "http://www.podtrac.com/pts/redirect.mp3/feeds.soundcloud.com/stream/246713192-startalk-cosmic-queries-the-science-of-love.mp3"
)


str.podcasts.create!(
  title: "The Value Of Science With Bri",
  playlist_id: str.id,
  url: "http://www.podtrac.com/pts/redirect.mp3/feeds.soundcloud.com/stream/244466879-startalk-the-value-of-science-with-bri.mp3"
)






etl = educational.playlists.create!(
  title: "Entrepreneurial Thought Leaders",
  mood_id: educational.id,
  image: "http://a3.mzstatic.com/us/r30/Music49/v4/9d/9a/56/9d9a5671-23bf-5107-1bbe-d9127f43bbe9/cover170x170.jpeg",
  link: "http://etl.stanford.edu/",
  description: "The DFJ Entrepreneurial Thought Leaders Seminar (ETL) is a weekly seminar series on entrepreneurship, co-sponsored by BASES (a student entrepreneurship group), Stanford Technology Ventures Program, and the Department of Management Science and Engineering."
)


etl.podcasts.create!(
  title: "Solving Social Ills Through Innovation - Michael Tubbs (City of Stockton)",
  playlist_id: etl.id,
  url: "http://www.stanford.edu/group/edcorner/uploads/podcast/tubbs160113.mp3"
)

etl.podcasts.create!(
  title: "Great Leadership Can Be Learned - John Hennessy, Tina Seelig (Stanford University)",
  playlist_id: etl.id,
  url: "http://www.stanford.edu/group/edcorner/uploads/podcast/hennessy160203.mp3"
)





btw = educational.playlists.create!(
  title: "Back to Work",
  mood_id: educational.id,
  image: "http://a4.mzstatic.com/us/r30/Music4/v4/9a/43/20/9a4320c5-b517-d449-4909-071fed061826/cover170x170.jpeg",
  link: "http://5by5.tv/b2w",
  description: "Back to Work is an award winning talk show with Merlin Mann and Dan Benjamin discussing productivity, communication, work, barriers, constraints, tools, and more."

)

btw.podcasts.create!(
  title: "260: Stuck in Green Forever",
  playlist_id: btw.id,
  url: "http://fdlyr.co/d/b2w/cdn.5by5.tv/audio/broadcasts/b2w/2016/b2w-260.mp3"
)

btw.podcasts.create!(
  title: "257: Homemade Science Mayonnaise",
  playlist_id: btw.id,
  url: "http://fdlyr.co/d/b2w/cdn.5by5.tv/audio/broadcasts/b2w/2016/b2w-257.mp3"
)





rl = educational.playlists.create!(
  title: "RadioLab",
  mood_id: educational.id,
  image: "http://a2.mzstatic.com/us/r30/Music6/v4/51/14/74/511474f5-aafa-d553-36d9-2fa857bc65c4/cover170x170.jpeg",
  link: "http://www.radiolab.org/series/podcasts/",
  description: "Radiolab is a show about curiosity. Where sound illuminates ideas, and the boundaries blur between science, philosophy, and human experience."
)



rl.podcasts.create!(
  title: "K-poparazzi",
  playlist_id: rl.id,
  url: "http://www.podtrac.com/pts/redirect.mp3/audio.wnyc.org/radiolab_podcast/radiolab_podcast16kpoperazzi.mp3"
)

rl.podcasts.create!(
  title: "Hard Knock Life",
  playlist_id: rl.id,
  url: "http://www.podtrac.com/pts/redirect.mp3/audio.wnyc.org/radiolab_podcast/radiolab_podcast16hardknocklife.mp3"
)

rl.podcasts.create!(
  title: "I Don't Have To Answer That",
  playlist_id: rl.id,
  url: "http://www.podtrac.com/pts/redirect.mp3/audio.wnyc.org/radiolab_podcast/radiolab_podcast16dontanswer.mp3"
)




########################################
# 3.times do
#   podcast_id = Faker::Number.between(1, 36)
#   @brendan.likes.create!(
#     user_id: @brendan.id,
#     podcast_id: podcast_id
#   )
# end

# 3.times do
#   podcast_id = Faker::Number.between(1, 36)
#   @jake.likes.create!(
#     user_id: @jake.id,
#     podcast_id: podcast_id
#   )
# end

# 3.times do
#   podcast_id = Faker::Number.between(1, 36)
#   @djina.likes.create!(
#     user_id: @djina.id,
#     podcast_id: podcast_id
#   )
# end












