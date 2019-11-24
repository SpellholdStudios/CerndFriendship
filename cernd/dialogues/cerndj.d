APPEND CERNDJ

///////////////////////
// Cernd in forest 1 //
///////////////////////


IF WEIGHT #-1 ~Global("I#CerndTalk","GLOBAL",2)~ THEN BEGIN c1
SAY @0 /* The rustle of leaves sends mine own heart to fluttering. Can there be anything more beautiful than wild nature? */
++ @1 /* Not now, Cernd. I have no time for idle chatter. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",3)~ + c1.1
+ ~!Class(Player1,DRUID)~ + @2 /* Oh, I would agree, though not quite as comely as the eyes of a loved one. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",3)~ + c1.2
+ ~!Class(Player1,DRUID)~ + @3 /* I don't know about beautiful. Terrifying would be more apt, I would say. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",3)~ + c1.12
+ ~!Class(Player1,DRUID)~ + @4 /* Many things that I can think of. A perfectly roasted duck; a ruby encrusted ring. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",3)~ + c1.13
+ ~Class(Player1,DRUID)~ + @5 /* It is a pity it is not of more use. It might survive the plow more often if it was. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",3)~ + c1.5
+ ~!Class(Player1,DRUID)~ + @6 /* I prefer tailored nature, like a fine garden, or the productivity of a well-maintained farm. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",3)~ + c1.3
+ ~Class(Player1,DRUID)~ + @7 /* I tend to prefer the tailored nature of a fine garden, or the productivity of a well-maintained farm. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",3)~ + c1.6
+ ~!Class(Player1,DRUID) !Class(Player1,RANGER)~ + @8 /* I want the city. I feel as though any second I might snap a leg in some rodent's burrow. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",3)~ + c1.4
+ ~!Class(Player1,DRUID)~ + @5 /* It is a pity it is not of more use. It might survive the plow more often if it was. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",3)~ + c1.3
END

IF ~~ c1.1
SAY @9 /* As you will, though a walk in the garden is never quite so missed as when winter comes. */
IF ~~ EXIT
END

IF ~~ c1.2
SAY @10 /* Perhaps, though they are best reflecting sky or trees. Both would be ideal, but choices must be made on occasion. Ah, no regrets in the great mother's home. */
++ @11 /* You sound sad. */ + c1.21
++ @12 /* Regret is just as natural as the ground below us, Cernd. There is no shame in it. */ + c1.22
++ @13 /* Places such as these are filled with her joy; take heart in that. */ + c1.23
END

IF ~~ c1.21
SAY @14 /* It is of no moment, my friend. If we always live in the past, the seeds of future happiness will never see the light. We must live in the now, lest we lose ourselves to what we cannot change. */
= @15 /* We are firm within nature's embrace, and with time she shall make all aright. */
IF ~~ EXIT
END

IF ~~ c1.22
SAY @16 /* Certainly, but if we always live in the past, the seeds of future happiness will never see the light. We must live in the now, lest we lose ourselves to what we cannot change. */
IF ~~ EXIT
END

IF ~~ c1.23
SAY @17 /* For one so young, you have the spark of wisdom within you. We are firm within nature's embrace; with time, she shall make all aright. */
IF ~~ EXIT
END

IF ~~ c1.3
SAY @18 /* A section of unspoiled forest will feed far more creatures in the long term, after a farm is exhausted and the people are hungry. Balance keeps the land lush. */
++ @19 /* Nature's bounty might be appreciated more if it was accessible to the common man. */ + c1.8
++ @20 /* Bah, simply seeding the land with fish or manure will revitalize any farm. It is sustainable. */ + c1.10
++ @21 /* A farmer might disagree. Harvesting for more than one is a hard task in the wild. */ + c1.9
END

IF ~~ c1.4
SAY @22 /* You only lack experience. Soon you will be skilled in sidestepping the thorns, holes, and the... ehh... softer obstacles left behind by the residents of the wood. */
= @23 /* Not the prettiest of pictures, I know, but you cannot fault the canvas. */
IF ~~ EXIT
END

IF ~~ c1.5
SAY @24 /* Of more use? Certainly a cultivated field yields more produce in the short term, but the bounty of the wild feeds many over longer time. */
= @25 /* Your words are very uncharacteristic for a fellow druid. Do you hold your service to nature in as high a regard as you should? */
++ @26 /* Do not question my commitment to nature! I will not tolerate such a slight! */ + c1.7
++ @19 /* Nature's bounty might be appreciated more if it was accessible to the common man. */ + c1.8
++ @27 /* I hold nature to be my sole reason for existing, but I must consider all views. */ + c1.9
END

IF ~~ c1.6
SAY @28 /* Not many druids will agree with you, and for good reason. Nature is the mother of all; balance is not found in restricting her to gardens and farms. */
= @29 /* If you truly believe as you say, perhaps you should reconsider your relationship with her. */
++ @30 /* I will not tolerate you questioning my dedication. My commitment is absolute. */ + c1.8
++ @31 /* I think in terms of between nature and civilization. I apologize if it colored my outlook. */ + c1.9
++ @32 /* I impart appreciation to others. They can learn from small gardens. Nature must not threaten. */ + c1.11
END

IF ~~ c1.7
SAY @33 /* You should be more concerned with your own thoughts than how others view you. Such pride will lead to arrogance in time. */
= @34 /* Not that it is my place to criticize; you must find your own balance. While you teeter on your way however, just be sure to remember your greater duty. */
IF ~~ EXIT
END

IF ~~ c1.8
SAY @35 /* Perhaps the problem is that the common man is not accessible to nature. It is her children that have left her. A return to the old ways would be best for all. */
= @36 /* Take a bird in the hand, leave two in the bush, and keep none in the home. Balance, and everything in its proper place. */
IF ~~ EXIT
END

IF ~~ c1.9
SAY @37 /* Perhaps, though compromise must have its limits. Deforming nature for the ease of the harvester is not beneficial to either. It dilutes what she is. */
= @38 /* Convenience is a trait of the city, wherein people forget how to fend for themselves. Wild nature is a hard mistress, but all the sweeter is her fruit. */
IF ~~ EXIT
END

IF ~~ c1.10
SAY @39 /* Requiring larger farms to feed the animals to produce the manure, claiming more land for the plow which means larger expanses of bare plains in the off-season. */
= @40 /* This means more land that can be ravaged by winds and lose topsoil in the long-term. Meanwhile, there are fewer animals in the smaller forest. */
= @41 /* They will yield smaller hunts that must be supplemented with fish. These resources are not infinite. Moderation is key. Learn to take what is already given. */
IF ~~ EXIT
END

IF ~~ c1.11
SAY @42 /* But neither is it to be taken for granted as something that is there with no effort. A garden is lovely, but it taints the perception of the onlooker. */
= @43 /* Many would still starve in the wood though surrounded by food. We must tell of the wonder, but also of what she requires. */
IF ~~ EXIT
END

IF ~~ c1.12
SAY @44 /* To the uninitiated, perhaps, but look here -- the grey owl over yonder. Is she not fine? Is her plumage not perfectly formed for her task? */
IF ~~ + c1.14
END

IF ~~ c1.13
SAY @45 /* The bounties of civilization are many, but they come at great cost. That duck came from a farm, never having seen the sweet light of day, knowing only darkness and fear. */
= @46 /* That ring was formed from ruby and gold, cut away from deep within the mother's heart, destroying countless forests and the countless lives that depended upon them. */
IF ~~ + c1.14
END

IF ~~ c1.14
SAY @47 /* The bounty of nature is both free and good. There is no cost to her trees, no slaughter for her flowers. The cycle is a beauteous thing, if it is allowed to run its course. */
IF ~~ EXIT
END


//////////////////////
// Cernd Bhaalspawn //
//////////////////////


IF WEIGHT #-1 ~Global("I#CerndTalk","GLOBAL",5)~ THEN BEGIN c2
SAY @48 /* Might I have a word with you? Away from the ears of others. */
+ ~Class(Player1,DRUID)~ + @49 /* I've always time for a fellow servant of nature. What is troubling you, Cernd? */ DO ~SetGlobal("I#CerndTalk","GLOBAL",6)~ + c2.2
+ ~!Class(Player1,DRUID)~ + @50 /* I always have time to speak with a fine servant of nature. What is it you require, Cernd? */ DO ~SetGlobal("I#CerndTalk","GLOBAL",6)~ + c2.2
++ @51 /* Of course. Of what is it you wish to speak? */ DO ~SetGlobal("I#CerndTalk","GLOBAL",6)~ + c2.2
++ @52 /* Make it quick, Cernd. I've things to do. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",6)~ + c2.3
++ @53 /* Not right now, Cernd. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",6)~ + c2.1
END

IF ~~ c2.1
SAY @54 /* Perhaps silence says more than any answer. There is something not natural about you, though I cannot place my finger on it. Nature will keep an eye on you. */
IF ~~ EXIT
END

IF ~~ c2.2
SAY @55 /* I have a concern as a servant of nature. I... I don't know how to phrase this, but are you... normal? Something is not quite right, and I fear it may be you. */
++ @56 /* What... what exactly is it you seem to sense? */ + c2.4
++ @57 /* Mind your own business, Cernd. */ + c2.1
++ @58 /* You know you have nothing to fear. You would not travel with me if you thought otherwise. */ + c2.5
END

IF ~~ c2.3
SAY @59 /* I'm sure, but this matter must be explored. I... do not know how to say this inoffensively, but are you... normal? The feeling I get from you is... disturbing. */
++ @60 /* And what is it that you think you sense? */ + c2.4
++ @61 /* You have no reason to concern yourself with my affairs. Mind your own business. */ + c2.1
++ @62 /* Does it trouble you? You wouldn't travel with me at all if you thought me dangerous. What does this matter? */ + c2.5
END

IF ~~ c2.4
SAY @63 /* All of natures' creatures live in some measure of harmony with her. You are not in opposition, as such, but you are discordant. */
= @64 /* You do not have quite as much in common with her as her other creations. You look like a duck and quack like a duck, but <PRO_BROTHERSISTER>, you ain't a duck. */
++ @65 /* Charming. Are you accusing me of something, because if you are, speak it plain. */ + c2.6
++ @66 /* And if I am... different, what would your reaction be? What does your duty tell you? */ + c2.7
++ @67 /* Cernd, a human moment! Let us observe a second of silence; such a moment deserves remembrance. */ + c2.19
++ @68 /* I breathe like any other. You know I can be trusted, you would not travel with me otherwise. */ + c2.5
END

IF ~~ c2.5
SAY @69 /* This is not a matter of character. Some things are deeper, and though you can take the leopard far from the jungles, he still has his spots. */
= @70 /* I... I would know what you are. You can choose not to say, and I suppose it really doesn't matter, but it would ease my mind and further our trust. */
++ @71 /* And if I have no interest in furthering that trust? No, Cernd, I keep my business to myself. */ + c2.1
++ @72 /* Then I will tell you something of myself, and you can judge whether it promotes trust or not. */ + c2.8
++ @73 /* I will get no peace until you know; is that it? Then listen well, and damn you for asking. */ + c2.9
END


IF ~~ c2.6
SAY @74 /* I make no accusations, I simply wish to know why you seem different to me. There is no assumption of wrongdoing, though your reluctance makes me worry further. */
= @75 /* You know what is different about you, yet you are also not willing to speak it. At least, that is my understanding. */
++ @76 /* It is BEYOND understanding. Very well, but remember that you asked to bear the weight of this. */ + c2.9
++ @77 /* You have no business knowing. Tend to your flowers and leave me be. */ + c2.1
++ @78 /* It is something I carry alone. You have asked and I will tell, but hear me out to the fullest. */ + c2.8
END

IF ~~ c2.7
SAY @79 /* My duty tells me to be curious; other than that, I am at a loss. You have shown you are not a danger, but perhaps I do not know what you are capable of. */
= @80 /* If you do not wish to speak on this I will have to honor your wish, but I will continue to be vigilant. */
++ @81 /* If there comes a time when it will be of consequence to you I will let you know. */ + c2.1
++ @82 /* I will have no peace until you know. You will damn your ears after I am done. */ + c2.9
++ @83 /* I suppose you may understand. It is a great weight for me to carry... */ + c2.8
END

IF ~~ c2.8
SAY @84 /* We are comrades in travel and battle, and I have no cause to judge harshly. Speak. */
++ @85 /* As foretold by Alaundo there came the Time of Troubles, when gods walked the soil beside mortals. Some of them knew they would not survive, and took drastic measures, as gods often do. */ + c2.10
++ @86 /* You know the prophecies of Alaundo, do you not? Surely I need not repeat them. I am one of whom he spake. */ + c2.14
++ @87 /* Years ago, an old prophet by the name of Alaundo predicted the Time of Troubles, the war in which the gods were made mortal. */ + c2.10
END

IF ~~ c2.9
SAY @88 /* I am sure I will withstand the truth just fine. Speak and I will give you your due. */
++ @89 /* So you say. Know you the blatherings of Alaundo? Of the Time of Troubles, when gods walked alongside we pitiful mortals? A few gods knew of prophecies too, and took... certain steps. */ + c2.12
++ @86 /* You know the prophecies of Alaundo, do you not? Surely I need not repeat them. I am one of whom he spake. */ + c2.14
++ @87 /* Years ago, an old prophet by the name of Alaundo predicted the Time of Troubles, the war in which the gods were made mortal. */ + c2.10
END

IF ~~ c2.10
SAY @90 /* This is well known. Speak on. */
++ @91 /* Of the darkest was Bhaal, Lord of Murder. Bhaal walked the realm before the Time of Troubles, and made preparations for his coming demise. */ + c2.11
++ @92 /* I am sure you've heard of Bhaal, the Lord of Murder. Before his death, he took certain steps to ensure he would not be gone forever. */ + c2.11
++ @93 /* If it is well known, why must I tell you? Surely you must have had your suspicions by now, Cernd. The prophecies are clear. */ + c2.14
END

IF ~~ c2.11
SAY @94 /* I recall when all the assassins of the Realms were slain, but you speak of something different? */
++ @95 /* Bhaal... 'seeded' the Realms with his children, born of every race and creed, that they might carry his legacy within them. I... am one such child. */ + c2.14
++ @96 /* Before his death, Bhaal sought to spread his seed amongst the many races of the world, that one day he would be reborn. I am one of his <PRO_SONDAUGHTER>s. */ + c2.14
++ @97 /* You know full well of what I speak. Do not play me false, Cernd. I do not appreciate it. */ + c2.14
END

IF ~~ c2.12
SAY @98 /* I have heard as such, though more eloquent in the telling. */
++ @99 /* One of the darkest was Bhaal, Lord of Murder. He knew what would happen, and the sly old bastard laid the groundwork for his future. */ + c2.13
++ @92 /* I am sure you've heard of Bhaal, the Lord of Murder. Before his death, he took certain steps to ensure he would not be gone forever. */ + c2.11
++ @100 /* If you have heard it before, why must I repeat it? Surely you must have had your suspicions by now, Cernd. The prophecies are clear. */ + c2.14
END

IF ~~ c2.13
SAY @101 /* He murdered the majority of his followers, did he not? Could what you speak of be any darker than this? */
++ @102 /* Judge for yourself. Bhaal 'seeded' the land with children of every creed, that they might carry his legacy within. Surprise, I am one such child. */ + c2.14
++ @96 /* Before his death, Bhaal sought to spread his seed amongst the many races of the world, that one day he would be reborn. I am one of his <PRO_SONDAUGHTER>s. */ + c2.14
++ @97 /* You know full well of what I speak. Do not play me false, Cernd. I do not appreciate it. */ + c2.14
END

IF ~~ c2.14
SAY @103 /* The Lord of Murder shall perish, but in his death he shall spawn a score of mortal progeny. So sayeth the wise Alaundo. */
+ ~ReputationGT(Player1,10)~ + @104 /* I had a brother, named Sarevok, and our conflict was brutal. I am not destined to a peaceful end, Cernd; I am fuel, not an heir. That is my secret. */ + c2.15
+ ~ReputationGT(Player1,10)~ + @105 /* So sayeth the wise Alaundo. I wish it were different, but this is the life I was born to. */ + c2.15
+ ~ReputationGT(Player1,10)~ + @106 /* So now you know. Does it change how you think of me, Cernd? Now that you know who -- and what -- I truly am? */ + c2.15
+ ~ReputationLT(Player1,11)~ + @104 /* I had a brother, named Sarevok, and our conflict was brutal. I am not destined to a peaceful end, Cernd; I am fuel, not an heir. That is my secret. */ + c2.16
+ ~ReputationLT(Player1,11)~ + @107 /* So sayeth the wise Alaundo. I have been blessed, Cernd, by the darkest of powers, and I am thankful each and every day. */ + c2.16
+ ~ReputationLT(Player1,11)~ + @108 /* So now you know my deep, dark secret. Does it change how you think of me, Cernd? Now that you know who -- and what -- I truly am? */ + c2.16
END

IF ~~ c2.15
SAY @109 /* Well, certainly a disturbing origin, though it changes nothing in our dynamic. I am still Cernd and you are still <CHARNAME>. */
= @110 /* I don't believe you share the taint of your... father; the influence of a dead god must wane with time. We will continue, and I bear you no ill. */
++ @111 /* You are a man of character, Cernd, and I will not risk our friendship. */ + c2.17
++ @112 /* I feel it stirring within me even now. If anything, Cernd, it gets stronger with each passing day. */ + c2.17
++ @113 /* So say you now, but in time you will come to fear what I am. Others have, and more will. */ + c2.18
END

IF ~~ c2.16
SAY @114 /* Your manner bears the scars of your origin, though the god that formed you is dead and gone. I shall treat you as I would any other. */
= @115 /* If you succumb to his taint further I will act, for it may be more your own doing. A god is a god, but they are only as strong as the power we give them. */
++ @116 /* Wise words, but still only words. You don't know, and can't know, what it is really like. */ + c2.18
++ @117 /* I do not give him power, Cernd. With his death, I was born. I am his power, and he is mine. */ + c2.20
++ @118 /* Perhaps, though it is a struggle at times. I work hard to be my own person. */ + c2.17
END

IF ~~ c2.17
SAY @119 /* We are our parents' children, but we make our own fates. The tree drops the nut, but has no say over how it flourishes. */
IF ~~ EXIT
END

IF ~~ c2.18
SAY @120 /* Do you blame such fear on who your father wishes you to be, or who you are. I should think you will be responsible for the latter. */
IF ~~ EXIT
END

IF ~~ c2.19
SAY @121 /* I apologise if this is an uncomfortable subject for you, but I fear it is one I must pursue. */
IF ~ReputationGT(Player1,10)~ + c2.7
IF ~ReputationLT(Player1,11)~ + c2.6
END

IF ~~ c2.20
SAY @122 /* Then I hope you realise the truth of the dark power living within you before it is too late. */
IF ~~ EXIT
END


///////////////////////
// Cernd in forest 2 //
/////////////////////// 


IF WEIGHT #-1 ~Global("I#CerndTalk","GLOBAL",8)~ THEN BEGIN c3
SAY @123 /* Ahh, I am never quite so happy as when I am in the wildest parts of nature. To live as the animals do is a very liberating thing. */
++ @124 /* Pipe down, Cernd, I don't have the time. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",9)~ + c3.1
++ @125 /* You cannot be advocating that all civilized people should act like animals. The result would be chaos. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",9)~ + c3.2
++ @126 /* I do like to indulge my animal side now and again. Nothing like a little base carnage to liven up a tenday. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",9)~ + c3.2
++ @127 /* I agree, though it would not be to everyone's tastes. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",9)~ + c3.3
++ @128 /* Yes, I'm sure we'd all feel terribly liberated. Piss and feces everywhere. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",9)~ + c3.7
END

IF ~~ c3.1
SAY @129 /* As you will, though if you throw enough rocks the birds will forever avoid your feeders. */
IF ~~ EXIT
END

IF ~~ c3.2
SAY @130 /* They know their role in the greater scheme and live peacefully as such. When was the last time you saw a stag lament that it was a stag? */
++ @131 /* Right before the bear closed in and killed it, I would imagine. */ + c3.4
++ @132 /* I suppose, though life without ambition is quite contrary to what people are used to. */ + c3.5
++ @133 /* It knows no other life. Perhaps it wishes to be something else, but has nothing to compare itself to. */ + c3.6
END

IF ~~ c3.3
SAY @134 /* Certainly, but so few even dare to try. They have forgotten where they came from, but I can show them. That is my duty, to nature and all her offspring. */
IF ~~ + c3.8
END

IF ~~ c3.4
SAY @135 /* There is peace in knowing you are part of something greater. The bear may eat the stag, but the bear's waste and, ultimately, its corpse will feed the land. */
= @136 /* This will allow new trees and plants to grow and feed new generations of stag. There is balance and contentment in this. */
IF ~~ + c3.8
END

IF ~~ c3.5
SAY @137 /* Different, yes, but not undesirable. There are those that fear change and change alone, whether they comprehend what might result or not. */
IF ~~ + c3.8
END

IF ~~ c3.6
SAY @138 /* Why would it wish to be something it is not? It can be the best stag, so why worry about whether it would make a good beaver? Regret is a 'civilized' trait. */
IF ~~ + c3.8
END

IF ~~ c3.7
SAY @139 /* No, no, I do not mean we should relieve ourselves wherever we wish. Animals are not more disgusting or reckless, rather they are more tranquil. */
IF ~~ + c3.8
END

IF ~~ c3.8
SAY @140 /* There is virtue in living simply. There exists a serenity here in nature not found in civilization, a peace I suspect many yearn for but never find. */
++ @141 /* Maybe, but I'm not about to give up hot water and kitchens to get it. */ + c3.9
++ @142 /* I know exactly what you mean. */ + c3.10
++ @143 /* There may be virtue in it, but it is certainly not for everyone. */ + c3.11
++ @144 /* See, I don't buy that. We make our own peace. */ + c3.12
END

IF ~~ c3.9
SAY @145 /* As a youth, I once thought similarly. Perhaps one day, you too will realise the truth of things. */
IF ~~ + c3.10
END

IF ~~ c3.10
SAY @146 /* But the sun shines and the woods around us teem with life. Let us enjoy the moment before it is all too soon left behind. */
IF ~~ EXIT
END

IF ~~ c3.11
SAY @147 /* Perhaps not. We can but hope that one day, the so-called 'civilized' world will realise the truth of things. */
IF ~~ + c3.10
END

IF ~~ c3.12
SAY @148 /* Do we? Take a walk through the slums of Athkatla and speak with those who live there. Do they make their own peace? */
IF ~~ + c3.10
END


///////////////////
// Cernd in city //
///////////////////


IF WEIGHT #-1 ~Global("I#CerndTalk","GLOBAL",11)~ THEN BEGIN c4
SAY @149 /* Be careful not to trample the weeds as you walk, <CHARNAME>. Nature fights hard to bring herself to places like these. */
++ @150 /* And people work just as hard to be rid of her. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",12)~ + c4.1
++ @151 /* Why would she bother, only to be trampled back into the pavement? */ DO ~SetGlobal("I#CerndTalk","GLOBAL",12)~ + c4.1
++ @152 /* Do not worry, I am watching where my feet fall well enough. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",12)~ + c4.4
++ @153 /* They are only weeds, Cernd. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",12)~ + c4.2
++ @154 /* I don't have time for your blathering, Cernd. */ DO ~SetGlobal("I#CerndTalk","GLOBAL",12)~ + c4.3
END

IF ~~ c4.1
SAY @155 /* And who do you think will win that battle? Long after this city has crumbled, nature will live on, and take back what is rightfully hers. */
= @156 /* There is much we can learn from the humble weed, my friend. It thrives in even the most inhospitable of conditions, with admirable tenacity. */
IF ~~ + c4.4
END

IF ~~ c4.2
SAY @157 /* And what is the definition of a weed but a child of the mother more tenacious than most? There is much we can learn from these humble plants. */
IF ~~ + c4.4
END

IF ~~ c4.3
SAY @158 /* Very well. */
IF ~~ EXIT
END

IF ~~ c4.4
SAY @159 /* Nature always finds a way, even here. Despite the combined effort of all Athkatla to eradicate her, she persists. Is that not wondrous? */
++ @160 /* If she can survive all that, I am sure she will survive my passage. */ + c4.5
++ @161 /* Perhaps the city officials just need to hire better groundskeepers. */ + c4.6
++ @162 /* It is indeed. A testament to the strength of her will. */ + c4.7
++ @163 /* I will be more careful, Cernd. */ + c4.8
END

IF ~~ c4.5
SAY @164 /* Perhaps, but I am sure she appreciates even the smallest of gestures. She may be strong, but why increase the difficulty of her struggle when we do not have to? */
IF ~~ + c4.7
END

IF ~~ c4.6
SAY @165 /* Sarcasm is the retreat of the weak-minded, <CHARNAME>. Flippant your tongue may be, but I hope the main of my argument finds its way. */
IF ~~ + c4.7
END

IF ~~ c4.7
SAY @166 /* Sometimes the smallest of voles is more powerful than the bear. This battle will be won eventually, but the war will continue needlessly. (sigh) */
IF ~~ EXIT
END

IF ~~ c4.8
SAY @167 /* I am sure she appreciates the gesture. She may be strong, but why increase the difficulty of her struggle when we do not have to? */
IF ~~ + c4.7
END


/////////////////////
// Cernd in sewers //
/////////////////////


IF WEIGHT #-1 ~Global("I#CerndSewerTalk","GLOBAL",2)~ THEN BEGIN c5
SAY @168 /* I cannot abide sewers. Nature has its own way of dealing with waste, without such toxic conseqences. These tunnels must be the very pit of civilization. */
++ @169 /* Sewers are a necessary evil; without them, how would so many live in such a small area? */ DO ~setGlobal("I#CerndSewerTalk","GLOBAL",3)~ + c5.1
++ @170 /* And what way is that, Cernd? How would nature deal with this sort of waste? */ DO ~setGlobal("I#CerndSewerTalk","GLOBAL",3)~ + c5.1
++ @171 /* I feel the same way. There are other, less unpleasant solutions than these cursed systems. */ DO ~setGlobal("I#CerndSewerTalk","GLOBAL",3)~ + c5.1
++ @172 /* I don't like sewers either, but you don't hear me complaining, do you? */ DO ~setGlobal("I#CerndSewerTalk","GLOBAL",3)~ + c5.1
++ @173 /* Shut it, druid. */ DO ~setGlobal("I#CerndSewerTalk","GLOBAL",3)~ + c5.2
END

IF ~~ c5.1
SAY @174 /* Nature never intended so many to live in such confined spaces. It is an unnatural way to live. Humans should look to the elves, to the halflings... co-exist with nature, not poison her. */
IF ~~ + c5.3
END

IF ~~ c5.2
SAY @175 /* Your ambivalence to the plight of nature speaks volumes. */
IF ~~ EXIT
END

IF ~~ c5.3
SAY @176 /* It is not just human waste that makes its way through these tunnels; all manner of toxic and dangerous substances end up here, only to filter out into the ocean. */
= @177 /* Who knows what horrors are visited upon the poor creatures subjected to such waste? The hubris of humanity astounds me. */
++ @178 /* I thought sewer waste was stored in reservoirs? */ + c5.4
++ @179 /* I suppose I hadn't thought of that. */ + c5.5
++ @180 /* But I thought nature always found a way? */ + c5.6
++ @181 /* Hubris isn't a trait exclusively human, you know. */ + c5.7
END

IF ~~ c5.4
SAY @182 /* Most sewerage here in Athkatla ends up directly in the ocean. Haven't you noticed the stench of the Docks district on occasion? There is more to it than just rotting fish. */
IF ~~ + c5.8
END

IF ~~ c5.5
SAY @183 /* Many do not realise the reality of what civilization truly means. It is not just a form of so-called 'advanced' culture; were it so, I would not be so strongly opposed. */
IF ~~ + c5.8
END

IF ~~ c5.6
SAY @184 /* And she will, as she always has. But like any mother, the callous murder of her children pains her beyond belief. This is not part of the cycle. */
IF ~~ + c5.8
END

IF ~~ c5.7
SAY @185 /* That may be so, but in my experience humans tend to take their arrogance to extremes. */
IF ~~ + c5.8
END

IF ~~ c5.8
SAY @186 /* There are myriad consequences to the existence of cities such as these. Sewers are just one of many atrocities visited upon nature in the name of progress. */
= @187 /* Regardless, even for one as exposed to nature's odors as I, the smell here is offensive. The wolf in me paws at his muzzle desperately to rid himself of the stench. */
+ ~Race(Player1,HUMAN)~ + @188 /* So you're just as human as the rest of us after all. (grin) */ + c5.9
+ ~!Race(Player1,HUMAN)~ + @189 /* So you're not so different to the rest of us after all. (grin) */ + c5.10
++ @190 /* Now that's an amusing image if I ever saw one. */ + c5.11
++ @191 /* You're not the only one. Ugh. */ + c5.12
++ @192 /* Come now, Cernd, it's just a little waste. */ + c5.13
END

IF ~~ c5.9
SAY @193 /* Quite the contrary, I suspect if I were a little more human this place wouldn't bother me half as much as it does. There are definite drawbacks to lycanthropy. */
IF ~~ + c5.11
END

IF ~~ c5.10
SAY @194 /* Quite the contrary, I suspect if I were a little less different this place wouldn't bother me half as much as it does. There are definite drawbacks to lycanthropy. */
IF ~~ + c5.11
END

IF ~~ c5.11
SAY @195 /* But just as the stalwart fox continues her hunt for the skunk even after enduring the spray, so too shall I. */
IF ~~ EXIT
END

IF ~~ c5.12
SAY @196 /* But just as the stalwart fox continues her hunt for the skunk even after enduring the spray, so too shall we. */
IF ~~ EXIT
END

IF ~~ c5.13
SAY @197 /* And just as the stalwart fox continues her hunt for the skunk even after enduring the spray, so too shall I. */
IF ~~ EXIT
END


///////////////////////////
// BHAALSPAWN's FAMILIAR //
///////////////////////////


IF WEIGHT #-1 ~Global("I#CerndFamiliarTalk","GLOBAL",2)~ THEN BEGIN c6
SAY @198 /* When nature is chained, the wrongness of its bonds can seep into its very heart, <CHARNAME>. I am troubled by what I see before me. */
++ @199 /* I'm not sure I understand. */ DO ~SetGlobal("I#CerndFamiliarTalk","GLOBAL",3)~ + c6.0
++ @200 /* I have no time for this, Cernd. Leave me be. */ DO ~SetGlobal("I#CerndFamiliarTalk","GLOBAL",3)~ + c6.2
END

IF ~~ c6.0
SAY @201 /* I speak of the creature that walks beside you as if bound by some tether. Can it understand your words? */
++ @202 /* You mean my familiar? Yes, in a way. We're connected. */ + c6.1
++ @203 /* It shouldn't concern you, Cernd. It has nothing to do with you. */ + c6.2
END

IF ~~ c6.1
SAY @204 /* And how would you describe the relationship that binds the two of you? */
++ @205 /* It's my companion. Just like you or another person who decides to aid me. */ + c6.3
++ @206 /* It's my servant. I summoned it, and now it obeys my commands. */ + c6.4
++ @207 /* I'm not sure, to be honest. It's not a typical creature, but I like to have it close. It's got some useful tricks. */ + c6.5
++ @208 /* It's none of your business, Cernd, so stow it. */ + c6.2
END

IF ~~ c6.3
SAY @209 /* I understand. So you must care for it. I'm glad to hear that. */
IF ~~ + c6.6
END

IF ~~ c6.4
SAY @210 /* Servant? Perhaps you should reconsider your relationship with the creature, <CHARNAME>. I would prefer to think that it is more than just your prisoner. */
IF ~~ + c6.6
END

IF ~~ c6.5
SAY @211 /* I see. I would prefer to think that it was more than a prisoner to your will, <CHARNAME>, or a mere source of entertainment. */
IF ~~ + c6.6
END

IF ~~ c6.6
SAY @212 /* I have many times seen men and women treat animals as nothing more than property... like furniture or toys that serve no purpose beyond what the master might command. But there is more to nature than this. Even the smallest aspect of it must be respected as the tides or thunders would be. */
++ @213 /* This is different, Cernd. This creature is a magical being. I respect it and I want to think of it as of my friend. Certainly not a toy. */ + c6.7
++ @214 /* Think whatever you want, Cernd. I called it with my powers. Shaped it, in a way. That makes this situation different that the one you speak of. */ + c6.8
++ @215 /* I understand and I am happy you care about life, Cernd. You don't have to worry, since I respect this little thing. I would never objectify it. */ + c6.7
++ @216 /* Can you stop lecturing me, Cernd? This matter should not concern you. */ + c6.2
END

IF ~~ c6.7
SAY @217 /* I see. Respect life, <CHARNAME>, in all its shapes. This creature may be different than the animals that hide in the woods, but it too takes part in that larger circle that we call life. */
IF ~~ + c6.9
END

IF ~~ c6.8
SAY @218 /* It is less different than you might think, <CHARNAME>. This creature may be different than the animals that hide in the woods, but it too takes part in that larger circle that we call life. You should understand and respect that this creature can feel just as its natural siblings do. */
IF ~~ + c6.9
END

IF ~~ c6.9
SAY @219 /* I would feel much better if I knew all beings, whatever the circumstances of their origin, could live with dignity, under one sky, with their worth acknowledged by even the crudest of beasts. */
= @220 /* Especially those that make their homes in the cities of men. */
= @221 /* I won't ask for much, <CHARNAME>, but please, respect this creature, and if you find that you cannot, then simply return it to the winds, waters, and wilds where it belongs. */
IF ~~ EXIT
END

IF ~~ c6.2
SAY @222 /* The matter of life always concerns me, <CHARNAME>. */
= @223 /* I won't ask for much, <CHARNAME>, but please, respect this creature, and if you find that you cannot, then simply set it free. That is all I wished to say. */
IF ~~ EXIT
END


///////////
// ABYSS //
///////////


IF WEIGHT #-1 ~Global("I#CerndAbyssTalk","GLOBAL",2)~ THEN BEGIN c7
SAY @224 /* It appears that this time we are to be the pebble that breaks the surface of the water, <CHARNAME>, sending ripples all about. We are the ones that damage the order of things. */
++ @225 /* I think you may need to clarify what you mean, Cernd. */ DO ~SetGlobal("I#CerndAbyssTalk","GLOBAL",3)~ + c7.1
++ @226 /* You mean us being here, in this damned place? */ DO ~SetGlobal("I#CerndAbyssTalk","GLOBAL",3)~ + c7.2
++ @227 /* We have no time for this, Cernd. Let us move on. */ DO ~SetGlobal("I#CerndAbyssTalk","GLOBAL",3)~ + c7.3
END

IF ~~ c7.1
SAY @228 /* This place - the Abyss. */
IF ~~ + c7.4
END

IF ~~ c7.2
SAY @229 /* Yes. I speak of us being here. */
IF ~~ + c7.4
END

IF ~~ c7.4
SAY @230 /* We do not belong in this place, just as the creatures that dwell here would not belong in the lands that we call our home. This time it is we who are out of the balance, <CHARNAME>. The thought unsettles me. */
++ @231 /* I never thought of it that way. */ + c7.5
++ @232 /* We're not here because we want to be, though. Are we? */ + c7.6
++ @233 /* That's why we shouldn't talk right now. Let's do what we must and set off as soon as possible. */ + c7.3
END

IF ~~ c7.5
SAY @234 /* Very few men and women do, I'm afraid. */
IF ~~ + c7.7
END

IF ~~ c7.6
SAY @235 /* It is not a matter of desire, I'm afraid. */
IF ~~ + c7.7
END

IF ~~ c7.7
SAY @236 /* Every scale has two arms, <CHARNAME>, and balance cannot be maintained simply by guarding and protecting one side of it. We must also respect the lines that have been drawn with regards to our own movements, the realms where we ourselves are unnatural. This is a line that we have now crossed. */
++ @237 /* But don't you think there are times when that line simply must be crossed? For example, in the name of the so-called "greater good"? */ + c7.8
++ @238 /* I never took you for a legalist, Cernd. You should also consider the circumstances before deciding whether or not a line has been crossed. */ + c7.9
++ @239 /* That's nonsense, Cernd. All I hear is jabbering, words that are utterly irrelevant to the situation we're facing. Please, let's focus on the task at hand. */ + c7.3
++ @240 /* I agree, Cernd. That's why I want to leave this place as soon as possible. */ + c7.10
END

IF ~~ c7.8
SAY @241 /* If so, then who would judge whether the ends justify the means? No, this is not a matter of good or evil, <CHARNAME>, but of something else entirely. */
IF ~~ + c7.11
END

IF ~~ c7.9
SAY @242 /* Nobody should judge <PRO_HISHER> own case, <CHARNAME>. We all have our own motives, we all view things from within our own perspectives, but the lines remain. */
IF ~~ + c7.11
END

IF ~~ c7.11
SAY @243 /* Do not misunderstand me, as I am aware of how complicated our reasons for being here truly are. I understand that a seemingly innocuous seed has bloomed into a most unusual plant, and that this plant must be dealt with on its own terms. */
= @244 /* Yet at the same time, it is clear that this place was never meant for us. I can only hope that our passage through this strange realm will not carry with it consequences that will affect more than just ourselves. */
= @245 /* Lead us well, <CHARNAME>, through these unfamiliar waters, so we can return to our own ones as quickly as we might. */
IF ~~ EXIT
END

IF ~~ c7.10
SAY @246 /* Fine. Lead us well, <CHARNAME>, through these unfamiliar waters, so we can return to our own ones as quickly as we might. */
IF ~~ EXIT
END

IF ~~ c7.3
SAY @247 /* Your words, <CHARNAME>, are as soft as the thorns of a dead rose bush. */
IF ~~ EXIT
END


///////////////////////////////////
// Anath and the poisoned forest //
///////////////////////////////////


IF WEIGHT #-1 ~Global("I#CerndAnathTalk","GLOBAL",1)~ THEN BEGIN c8
SAY @248 /* There is a great corruption at work here, for even the werewolves to fall under its sway. This is not the work of nature, but of some twisted force far beyond. */
= @249 /* I weep for the loss of the pack here.  They have done well to secure the forest from outside intervention, and did not deserve this as thanks for their efforts. */
++ @250 /* No, they did not. We will avenge them, Cernd. */ DO ~SetGlobal("I#CerndAnathTalk","GLOBAL",2)~ + c8.1
++ @251 /* Werewolves? Protectors of the forest? I don't think I understand. */ DO ~SetGlobal("I#CerndAnathTalk","GLOBAL",2)~ + c8.2
++ @252 /* What do you think happened here? */ DO ~SetGlobal("I#CerndAnathTalk","GLOBAL",2)~ + c8.3
++ @253 /* Enough talk. Let's put an end to this. */ DO ~SetGlobal("I#CerndAnathTalk","GLOBAL",2)~ + c8.4
END

IF ~~ c8.1
SAY @254 /* Swift is the anger of the mother, and in this we shall be her weapons. */
IF ~~ + c8.2
END

IF ~~ c8.2
SAY @255 /* We werewolves may be an aberration, but unlike other such creatures, we often feel a deep connection to the mother. We intimately understand the cycle of life, and do not seek to alter it. */
IF ~~ + c8.3
END

IF ~~ c8.3
SAY @256 /* The trees and the rocks moan with wrongness; they are too far gone to speak. I fear there is little I can tell you that you cannot ascertain yourself. */
= @257 /* It is no natural occurrence. Note what happened to Anath's werewolves: it is the work of something... different. Other. I cannot tell what. */
++ @258 /* Is there anything we can do? */ + c8.5
++ @259 /* Then let's find out. */ + c8.6
++ @260 /* Perhaps we should just leave. */ + c8.7
END

IF ~~ c8.4
SAY @261 /* Their deaths shall not go unavenged. Swift is the mother's anger, and in this we shall be her weapons. */
IF ~~ + c8.8
END

IF ~~ c8.5
SAY @262 /* We must do as Anath has asked. She knows more than we do, and her knowledge is our best chance of healing this terrible wound. */
IF ~~ + c8.8
END

IF ~~ c8.6
SAY @263 /* Swift is the anger of the mother... and in this, we shall we her weapons. */
IF ~~ + c8.8
END

IF ~~ c8.7
SAY @264 /* If this infection spreads, <CHARNAME>... do you not feel the death around you? We *must* heal this wound. Whatever did this is powerful, and it will not stop here. */
= @265 /* We have no choice but to do as Anath has asked. She knows more than we do... perhaps it is that knowledge which will, in the end, heal this forest. */
IF ~~ EXIT
END

IF ~~ c8.8
SAY @266 /* Do you not feel the death around you? We *must* heal this wound. Whatever did this is powerful, and it will not stop here. We should hurry. */
IF ~~ EXIT
END


////////////////////////
// post-soul-stealing //
////////////////////////


IF WEIGHT #-1 ~Global("I#CerndPostStealTalk","GLOBAL",2)~ THEN BEGIN c9
SAY @267 /* There are few things in this world that weaken my resolve, <CHARNAME>, but what should be a great ocean now lies shallow as a small puddle. Nature abhors a vacuum, my friend, and I... */
= @268 /* I worry for your continued wellbeing. Without a soul, what are we? */
++ @269 /* Your optimism is just inspiring. */ DO ~SetGlobal("I#CerndPostStealTalk","GLOBAL",3)~ + c9.1
++ @270 /* I don't know, but... whatever that is, I'm it. */ DO ~SetGlobal("I#CerndPostStealTalk","GLOBAL",3)~ + c9.1
++ @271 /* I honestly don't care. I feel better than ever. */ DO ~SetGlobal("I#CerndPostStealTalk","GLOBAL",3)~ + c9.1
++ @272 /* Go away, Cernd. Your platitudes are insulting. */ DO ~SetGlobal("I#CerndPostStealTalk","GLOBAL",3)~ + c9.2
END

IF ~~ c9.1
SAY @273 /* The soul is the spark of all life. The force that connects us to one another, to all things. I shudder to imagine the horror of your trial, but know that as you endure it, I stand by your side. */
++ @274 /* Thank you, Cernd. I appreciate the support. */ + c9.3
++ @275 /* A nice sentiment, but in this, I walk alone. */ + c9.4
++ @276 /* I don't need your pity, druid. */ + c9.5
++ @277 /* Go weave a daisy-chain, Cernd. */ + c9.6
END

IF ~~ c9.2
SAY @278 /* As you would have it. */
IF ~~ EXIT
END

IF ~~ c9.3
SAY @279 /* Alas, it is all I can give, apart from my arm and my ear. The copse keeps silent vigil against the night, my friend, and all that would assail it. */
IF ~~ + c9.7
END

IF ~~ c9.4
SAY @280 /* Perhaps that is true, but sometimes sentiment is help in itself. The copse keeps silent vigil against the night, my friend, and all that would assail it. */
IF ~~ + c9.7
END

IF ~~ c9.5
SAY @281 /* I do not pity you, Bhaalchild. My heart goes out to you in solidarity as you suffer, but pity is not amongst its companions. */
IF ~~ + c9.7
END

IF ~~ c9.6
SAY @282 /* Then weave a daisy-chain I shall, <CHARNAME>, in the hope that it will lighten your mood, if only a little. */
IF ~~ EXIT
END

IF ~~ c9.7
SAY @283 /* There is no precedent for your predicament; no advice or aid I can provide you. The great oak weeps as those few who have not provisioned for the winter starve, but consoles himself in the knowledge that the great cycle must continue for the good of all. */
= @284 /* But this, your loss... this is not part of nature's plan. This is outside the natural world entirely, and the wrongness of it chills my very bones. */
++ @285 /* The magics Irenicus toys with will be his undoing. I will make sure of that. */ + c9.8
++ @286 /* If it chills your bones... just imagine what it's doing to mine. */ + c9.9
++ @287 /* I feel fine, Cernd. You have nothing to worry about. */ + c9.10
++ @288 /* Will you stop it with the nature metaphors? I'm really not in the mood. */ + c9.11
END

IF ~~ c9.8
SAY @289 /* Whatever he is planning must be terrible, if he must turn to such atrocities to bring it to fruition. He must be stopped, and your soul returned... let us hope we can do so quickly. */
IF ~~ EXIT
END

IF ~~ c9.9
SAY @290 /* From what I understand, the process of vampirism is similar to what Irenicus did to you... the stripping away of a soul, leaving only the husk of a person. */
= @291 /* I fear for what you will become if we cannot end this quickly. */
IF ~~ EXIT
END

IF ~~ c9.10
SAY @292 /* Your skin is pale, clammy, and your eyes shine unnaturally bright beneath the shadow of your brow. Something is amiss, my friend, though you may not feel it yet. */
IF ~~ + c9.9
END

IF ~~ c9.11
SAY @293 /* Metaphor is a tool to aid understanding, my friend, and a keen one at that. There are few things the natural world cannot relate to. Unfortunately... this is one of them. */
IF ~~ + c9.9
END


//////////////////////////
// post-soul-stealing 2 //
//////////////////////////


IF WEIGHT #-1 ~Global("I#CerndPostStealTalk","GLOBAL",5)~ THEN BEGIN c10
SAY @294 /* Dark winter clouds your eyes, <CHARNAME>, and your limbs lie heavy with snow. Is there aught I can do to ease your burden? */
++ @295 /* Do you have a spare soul handy? That would sure be useful right about now. */ DO ~SetGlobal("I#CerndPostStealTalk","GLOBAL",6)~ + c10.1
++ @296 /* I'm afraid there is little anyone can do. */ DO ~SetGlobal("I#CerndPostStealTalk","GLOBAL",6)~ + c10.1
++ @297 /* I'm not a tree, Cernd. */ DO ~SetGlobal("I#CerndPostStealTalk","GLOBAL",6)~ + c10.2
++ @298 /* You can be silent, and that is all you can do. */ DO ~SetGlobal("I#CerndPostStealTalk","GLOBAL",6)~ + c10.3
END

IF ~~ c10.1
SAY @299 /* Would that I did, my friend! 'Twould surely go your way. Alas, such aid is beyond my feeble grasp of reality and magic, beyond even the mother's reach. */
IF ~~ + c10.2
END

IF ~~ c10.2
SAY @300 /* There are some few draughts I can brew for dreamless sleep, or to aid with sleeplessness; to combat fatigue or bestow the Mother's strength, but I fear no such potions will aid us here. */
= @301 /* There is one small suggestion I can provide, however. */
++ @302 /* And what would that be? */ + c10.4
++ @303 /* I would be glad to hear it, o wise one. */ + c10.4
++ @304 /* I don't want or need your 'suggestions.' */ + c10.5
END

IF ~~ c10.3
SAY @305 /* Silent as the snow falls, then. But know that you are not alone in this. */
IF ~~ EXIT
END

IF ~~ c10.4
SAY @306 /* Remember, my friend, that you are not alone. */
++ @307 /* You say that, but in this, I am entirely alone, in the most profound sense of the word. */ + c10.5
++ @308 /* I really do appreciate the thought, Cernd, but you are not helping. */ + c10.5
++ @309 /* I know. It does makes it easier, knowing I have people I trust helping me. */ + c10.6
++ @310 /* Times like this, I think I'd prefer to be... */ + c10.5
END

IF ~~ c10.5
SAY @311 /* Were this some earthly ailment I would proscribe rest and quiet, but against your illness I am powerless. It is not a feeling I cherish. */
++ @312 /* Nor I, trust me. I feel so... out of control. I barely feel like myself at times. */ + c10.6
++ @313 /* Rest and quiet? Gods, save me from such a fate. Ugh. I'd much rather be on the road. */ + c10.7
++ @314 /* I can imagine, what with your constant need to interfere and influence. */ + c10.8
++ @315 /* I would not imagine so. Thank you for trying. */ + c10.9
END

IF ~~ c10.6
SAY @316 /* Would that I could do more. */
IF ~~ + c10.10
END

IF ~~ c10.7
SAY @317 /* The constant stress to your body will not be helping your condition, <CHARNAME>. You would do well to try to rest when you can. */
IF ~~ + c10.10
END

IF ~~ c10.8
SAY @318 /* At least your mind is still quick. When a person's humour leaves <PRO_HIMHER>, that is when we must truly begin to worry. */
IF ~~ + c10.10
END

IF ~~ c10.9
SAY @319 /* You have done much for me, <CHARNAMEE>. It is the least I can do for you. */
IF ~~ + c10.10
END

IF ~~ c10.10
SAY @320 /* Perhaps it will be ineffectual, but take this before you rest tonight. It is a small thing, but given we do not have the time for proper rest... I am sure a deep sleep will at the very least not cause you harm. */
= @321 /* But we have a ways to go until then. The longer we stand here, the longer your soul is yet lost to you. */
IF ~~ EXIT
END


///////////////////////
// getting soul back //
///////////////////////


IF WEIGHT #-1 ~Global("I#CerndLanthornTalk","GLOBAL",2)~ THEN BEGIN c11
SAY @322 /* The whole of nature rejoices at the reunification of Imoen and her soul. I am glad to see it. */
IF ~OR(2) !InParty("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID)~ DO ~SetGlobal("I#CerndLanthornTalk","GLOBAL",3)~ + c11.1
IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ DO ~SetGlobal("I#CerndLanthornTalk","GLOBAL",3)~ + c11.2
END

IF ~~ c11.1
SAY @323 /* What now for you, my friend? The strain of your own loss cannot be sustained much longer, I suspect. */
++ @324 /* Your confidence in me is astounding, Cernd. */ + c11.3
++ @325 /* We seek out Irenicus, and we kill him. It's the only way. */ + c11.4
++ @326 /* I can feel my very self beginning to fade. We must move quickly. */ + c11.4
++ @327 /* Oh, I'm fine. Really. Nothing to worry about! Chipper as a chipmunk! */ + c11.5
++ @328 /* Don't condescend to me. I know my limits. */ + c11.6
END
END

CHAIN CERNDJ c11.2
@329 /* How do you feel, little one? */
== IMOEN2J @330 /* Better. I mean, I'm tired and my legs hurt and I'm pretty sure I'm getting a chill, but... I dunno, something's different. In a good way. I don't feel so empty anymore. */
== CERNDJ @331 /* Nature herself smiles upon you, Imoen. It is said that-- */
= @332 /* Ah, you are far too good at that. Please give me back my herb pouch, child. While I am glad you are back to normal, perhaps a little restraint might be hoped for. */
== IMOEN2J @333 /* Heh, just proving a point. And I'm not a child, don't call me that. It's not nice, you know. */
== CERNDJ @334 /* True enough. Nobody who has been through your ordeal can truly be called a child. Very well, Imoen, I shall refrain, but know that I look upon it as a term endearment rather than belittlement. */
== IMOEN2J @335 /* Aww, you have a soft spot after all! */
== CERNDJ @336 /* I am no hardy ash, little one. */
== IMOEN2J @337 /* Meanie. */
== CERNDJ @338 /* As you'd have it, Imoen. */
EXTERN CERNDJ c11.1

APPEND CERNDJ

IF ~~ c11.3
SAY @339 /* My confidence in you is limitless, my friend, but no person can survive without their soul. Especially one such as you, whose divine essence is core to <PRO_HISHER> very being. */
IF ~~ + c11.4
END

IF ~~ c11.4
SAY @340 /* Let us be on our way. The death of Bodhi will surely weaken him; the best time to take out the herd leader is after the death of his herd. Come. */
IF ~~ EXIT
END

IF ~~ c11.5
SAY @341 /* Your hollow tone belies your sincerity, my friend. No person can survive without their soul. Especially one such as you, whose divine essence is core to <PRO_HISHER> very being. */
IF ~~ + c11.4
END

IF ~~ c11.6
SAY @342 /* No person can survive without their soul, <CHARNAME>, not even you. Especially you, whose divine essence is core to <PRO_HISHER> very being. */
IF ~~ + c11.4
END


////////////////////
// Suldanessellar //
////////////////////


IF WEIGHT #-1 ~Global("I#CerndSuldTalk","GLOBAL",2)~ THEN BEGIN c12
SAY @343 /* Take a moment, <CHARNAME>, a single moment to admire the marvel in which we stand. We are blessed to see this; very few ever live to see the glory of Suldanessellar. */
= @344 /* Even now, wounded and under siege, all human cities pale before her beauty. */
++ @345 /* It is very beautiful. I'd read about it in stories, but... the reality is so much more. */ DO ~SetGlobal("I#CerndSuldTalk","GLOBAL",3)~ + c12.1
++ @346 /* I just can't believe Irenicus would try to destroy a city as wonderful as this. */ DO ~SetGlobal("I#CerndSuldTalk","GLOBAL",3)~ + c12.1
++ @347 /* I much prefer Athkatla. This is all so disgustingly fairytale. Where's the grit? Where's the life? */ DO ~SetGlobal("I#CerndSuldTalk","GLOBAL",3)~ + c12.2
++ @348 /* We have more important things to do right now than stand and gape, fool! */ DO ~SetGlobal("I#CerndSuldTalk","GLOBAL",3)~ + c12.3
END

IF ~~ c12.1
SAY @349 /* Irenicus stoops ever lower in his quest for power. Let us hope we are able to prevent whatever heinous scheme he has orchestrated, and return your soul before it is too late. */
++ @350 /* We will; we must. We don't have a choice. */ + c12.4
++ @351 /* Don't you worry about me, Cernd. I'll be fine. Worry about what Irenicus could do if he wins. */ + c12.5
++ @352 /* After killing hundreds and stealing Imoen's and my soul... I can't imagine anything he wouldn't do. */ + c12.6
END

IF ~~ c12.2
SAY @353 /* Whereas for me, the lack of rubbish and filth is refreshing. Or would be, were it not for the scorchmarks and deadly enemies all around. */
IF ~~ + c12.7
END

IF ~~ c12.3
SAY @354 /* One moment of admiration would not kill you. It may be the last beautiful thing you ever see. */
IF ~~ + c12.7
END

IF ~~ c12.4
SAY @355 /* No, we do not. If Irenicus could overpower the warriors of Suldanessellar... this will be a difficult battle. But nature stands at our side; the city itself urges us on to triumph. */
IF ~~ + c12.7
END

IF ~~ c12.5
SAY @356 /* More than anything, my friend. If Irenicus could overpower the warriors of Suldanessellar... this will be a difficult battle. But nature stands at our side; the city itself urges us on to triumph. */
IF ~~ + c12.7
END

IF ~~ c12.6
SAY @357 /* I hope that more than imagination limits his doings. */
= @358 /* Come now. We should stop the disease before it cosumes all the beauty. */
IF ~~ EXIT
END

IF ~~ c12.7
SAY @359 /* It has been an adventure, has it not? I had thought such days behind me, but you have shown me there is much I have yet to see in this world. Thank you. */
= @360 /* Now let us lance this boil from the surface of Toril. */
IF ~~ EXIT
END


/////////////
// Ahsdale //
/////////////


IF WEIGHT #-1 ~Global("I#CerndBabyCheck","GLOBAL",3)~ THEN BEGIN c13
SAY @361 /* Your eyes glitter with unspoken questions, my friend, but I beg you wait and hear me out before you pass judgement. I have stood by you, and I deserve that much. */
++ @362 /* Very well. Go ahead. */ DO ~SetGlobal("I#CerndBabyCheck","GLOBAL",4)~ + c13.1
++ @363 /* You don't have to explain yourself to me, Cernd. */ DO ~SetGlobal("I#CerndBabyCheck","GLOBAL",4)~ + c13.5
++ @364 /* Then you had better make it quick. */ DO ~SetGlobal("I#CerndBabyCheck","GLOBAL",4)~ + c13.1
++ @365 /* Nothing you can say will change how digusting your decision is. */ DO ~SetGlobal("I#CerndBabyCheck","GLOBAL",4)~ + c13.2
++ @366 /* Get out. Go. I don't want to hear it, or see you again. */ DO ~SetGlobal("I#CerndBabyCheck","GLOBAL",4)~ + c13.3
END

IF ~~ c13.1
SAY @367 /* I am not a father. I never imagined--I do not need family beyond my brothers and sisters in the forest. Fatherhood was never something I sought, and nor would I, given the choice. */
++ @368 /* You don't have a choice. You are a father, like it or not, and you have a responsibility. */ + c13.5
++ @369 /* You may not have sought it, my friend, but it has found you nonetheless. */ + c13.6
++ @370 /* But you would be such a good father, Cernd. */ + c13.7
++ @371 /* (remain silent) */ + c13.8
END

IF ~~ c13.2
SAY @372 /* I am sorry you feel that way, but if you will listen, perhaps you will understand my decision a little better. Even if you do not agree with it. */
IF ~~ + c13.1
END

IF ~~ c13.3
SAY @373 /* (sigh) I am sorry you feel that way. I wish you the best in your journeys. */
IF ~~ DO ~SetGlobal("CerndJoined","LOCALS",0) DropInventory() LeaveParty() EscapeArea()~ EXIT
END

IF ~~ c13.4
SAY @374 /* Thank you. Nonetheless... I would like to tell you. There are few I call 'friend,' <CHARNAME>, and this has been a difficult decision. I would appreciate your ear. */
IF ~~ + c13.1
END

IF ~~ c13.5
SAY @375 /* I have a responsibility to my son, yes. To see that he is raised in the best manner possible. I... I cannot provide that for him. */
IF ~~ + c13.8
END

IF ~~ c13.6
SAY @376 /* Yes, it has. And life is miraculous, in all its forms, but in this... I wish to see him raised in the best manner possible. I... I cannot provide that for him. */
IF ~~ + c13.8
END

IF ~~ c13.7
SAY @377 /* I am honored you think so, but I am not so sure. It is more complex than that. */
IF ~~ + c13.8
END

IF ~~ c13.8
SAY @378 /* Even in nature, some are born ill-suited to the task of parenthood. I once befriended a she-bear who could not care for her cub: she did not have a mother's instinct, and they both suffered as a result. */
= @379 /* Together we sought a foster-mother for her child, and were lucky enough to find one who accepted the cub as her own. He grew up healthy and strong, and I saw the wisdom in what we had done. */
++ @380 /* Parenthood is not about instinct, it's about caring. How can you entrust your own child to people you barely know? */ + c13.9
++ @381 /* That was a bear. This is a child. A human child. You cannot possibly equate them. */ + c13.9
++ @382 /* You would be a fantastic father. You have nothing to worry about. */ + c13.9
END

IF ~~ c13.9
SAY @383 /* The druids in the grove will care for him far better than I ever could. They will protect and nurture him, with the aid of the mother and all who live in the grove. */
= @384 /* He will learn the ways of the world from those who live in it, not one who battles through it. Though peace is my ultimate goal, I am a warrior, and that is no father for a child. */
++ @385 /* Whatever else you may be, you *are* his father. Doesn't that mean anything to you? */ + c13.10
++ @386 /* A warrior is the best father a child can have, Cernd. You must raise *and* protect him. */ + c13.11
++ @387 /* No. You're a coward, and nothing more. */ + c13.12
++ @388 /* I think I understand. This is no life to bring a child into. */ + c13.13
END

IF ~~ c13.10
SAY @389 /* More than I can say. And that is why I must leave him. */
IF ~~ + c13.14
END

IF ~~ c13.11
SAY @390 /* I think you misinterpret my meaning. I do not disagree; all fathers are warriors, the defenders of their kin. But I have tied my life to another. */
IF ~~ + c13.14
END

IF ~~ c13.12
SAY @391 /* (sigh) And perhaps you are right. But my life is already tied to another, a stronger, more vital connection than to my own child. */
IF ~~ + c13.14
END

IF ~~ c13.13
SAY @392 /* No, it is not. */
IF ~~ + c13.14
END

IF ~~ c13.14
SAY @393 /* My life is devoted to the might of the Mother, that I may aid and protect her children. It is my duty to lay down my life, if need be, in her defense. */
= @394 /* Perhaps one day Ahsdale and I will reuinite, but for now, I cannot be his father. It would be irresponsible, and reckless. */
++ @395 /* But he is your son. Your flesh and blood. How can anything be more important than that? */ + c13.15
++ @396 /* You are making a mistake, Cernd. Can't you see that? */ + c13.15
++ @397 /* Your point is well-made, Cernd. I don't like it, but... I understand where you're coming from. */ + c13.16
++ @398 /* I appreciate your candor. Thank you for explaining. */ + c13.17
END

IF ~~ c13.15
SAY @399 /* I appreciate your concerns, but my mind is made. Ahsdale will be well cared for where he is--far better than I could, by those well-suited to the task. */
IF ~~ + c13.18
END

IF ~~ c13.16
SAY @400 /* I appreciate that, <CHARNAME>. It is my decision to make. I admit, I am not... in another life, I might have liked to have been a father. But it cannot be. */
IF ~~ + c13.18
END

IF ~~ c13.17
SAY @401 /* It may not be an optimal solution, but I feel I have chosen the right one for the boy. I admit, I am not... in another life, I might have liked to have been a father. But it cannot be. */
IF ~~ + c13.18
END

IF ~~ c13.18
SAY @402 /* I trust the elders there to be his father, as nature shall be his mother. It is for the best. */
= @403 /* Please excuse me, <CHARNAME>, I am exhausted. This has been an arduous day. */
++ @404 /* I'm sure it has. Take all the time you need. */ + c13.19
++ @405 /* Pack your bags, Cernd. Go care for your son. */ + c13.20
++ @406 /* You'll regret this decision. Maybe not right now, but... in time. */ + c13.21
END

IF ~~ c13.19
SAY @407 /* This is not what I wanted for the new day. (sigh) */
IF ~~ EXIT
END

IF ~~ c13.20
SAY @408 /* Your concern for him is admirable, <CHARNAME>, but misplaced. He will be well cared for. Were I to leave, I would return to the service of the mother... wherever that may be. */
++ @409 /* Fine. Just leave. I can't stand to see your face any longer. */ + c13.3
++ @410 /* Then stay. But know that I strongly disagree. */ + c13.19
END

IF ~~ c13.21
SAY @411 /* And perhaps one day I shall. But today... today, it is the right decision. Excuse me. */
IF ~~ + c13.19
END


//////////////////////////
// Death of a loved one //
//////////////////////////


IF WEIGHT #-1 ~Global("I#CerndLostLoveTalk","GLOBAL",1)~ THEN BEGIN c14
SAY @412 /* (sigh) I never imagined it would be this difficult. */
++ @413 /* I'm sorry? What do you mean? */ DO ~SetGlobal("I#CerndLostLoveTalk","GLOBAL",2)~ + c14.1
++ @414 /* Many things are more difficult than they seem. It's just the way of things. */ DO ~SetGlobal("I#CerndLostLoveTalk","GLOBAL",2)~ + c14.2
++ @415 /* You seem melancholy, Cernd. What's on your mind? */ DO ~SetGlobal("I#CerndLostLoveTalk","GLOBAL",2)~ + c14.1
++ @416 /* Shove it, Cernd. Keep it to yourself. */ DO ~SetGlobal("I#CerndLostLoveTalk","GLOBAL",2)~ + c14.3
END

IF ~~ c14.1
SAY @417 /* It is hard to accept the death of a loved one, even for someone as attuned to the cycle as I. This was not... I did not imagine this would be how we ended, Galia and I. */
++ @418 /* I am truly sorry, Cernd. If there is anything I can do... */ + c14.4
++ @419 /* Would you tell me about her? */ + c14.5
++ @420 /* How did you imagine it would end, then? */ + c14.5
++ @421 /* Perhaps you are not as wise as you thought. */ + c14.6
END

IF ~~ c14.2
SAY @422 /* Wise words, from one so young. You are old beyond your years, my friend. */
IF ~~ + c14.1
END

IF ~~ c14.3
SAY @423 /* Then you are not the <PRO_MANWOMAN> I thought you were. */
IF ~~ EXIT
END

IF ~~ c14.4
SAY @424 /* Even if there were, I would not ask you to. Death is an intrinsic, essential part of life. All things die, and all things end. It is perfectly natural. */
= @425 /* It sounds almost as if I am trying to convince myself. Perhaps I am, at that. The world is a lesser place without her. */
IF ~~ + c14.5
END

IF ~~ c14.5
SAY @426 /* When we were together, she was so filled with life. Passion, love. I think that is what attracted me to her in the first place. */
= @427 /* She was the sun, and like the silver moon, I forever followed in her wake. I was enraptured. */
++ @428 /* It sounds like you loved her very much. */ + c14.7
++ @429 /* Cernd, I didn't know you were capable of such love. */ + c14.8
++ @430 /* Do I really need to hear this? */ + c14.9
++ @431 /* How very saccharine. I thought you above that nonsense. */ + c14.8
END

IF ~~ c14.6
SAY @432 /* No. Perhaps not. */
IF ~~ + c14.10
END

IF ~~ c14.7
SAY @433 /* I did, and still do to this day. She was... I will never again in my life be blessed as I was with Galia. */
++ @434 /* What happened? You never told me why you left. */ + c14.11
++ @435 /* You're not an old man yet. Perhaps you will find someone else. */ + c14.12
++ @436 /* If you loved her so much, you should never have left her. */ + c14.10
++ @437 /* If you still loved her, why didn't you visit her? */ + c14.13
END

IF ~~ c14.8
SAY @438 /* How little you know me. I am nothing if not a slave to my own nature, my friend, and I am as human as any other. */
IF ~~ + c14.10
END

IF ~~ c14.9
SAY @439 /* Nay, you do not. But perhaps if you did, you would learn from my mistakes. (sigh) */
IF ~~ EXIT
END

IF ~~ c14.10
SAY @440 /* I agonised over the decision to leave. Eventually, it was she who told me to go, knowing as she did how we would suffer if I did not. */
= @441 /* I wonder if she knew even then. And if she did know... if she did feel the life within her, then her decision was all the more brave. I owe her so much. */
++ @442 /* You must have known, Cernd, you're a druid. */ + c14.14
++ @443 /* You owe it to her to continue living well, if this is the life you chose. */ + c14.15
++ @444 /* She set you free. How noble. */ + c14.16
++ @445 /* You can't dwell on what ifs, Cernd, or you'll drive yourself mad. */ + c14.17
END

IF ~~ c14.11
SAY @446 /* The reasons were myriad and complex. No wolf leaves his pack without good reason, and I... I had many. But a wolf must have some secrets. */
IF ~~ + c14.10
END

IF ~~ c14.12
SAY @447 /* Forgive me for saying this, my friend, but you are yet young, and have not known love of the sort we shared. I was blessed to have found it once. I will not find it again. */
IF ~~ + c14.10
END

IF ~~ c14.13
SAY @448 /* I have oft asked myself that very same question. Cowardice, perhaps. Moreover, I did not want to cause her any more pain than I already had. */
IF ~~ + c14.10
END

IF ~~ c14.14
SAY @449 /* If I had sensed it, I cannot say what may have transpired. Certainly not this. */
IF ~~ + c14.18
END

IF ~~ c14.15
SAY @450 /* Indeed, I would have it no other way. */
IF ~~ + c14.18
END

IF ~~ c14.16
SAY @451 /* Yes. It was. */
IF ~~ + c14.18
END

IF ~~ c14.17
SAY @452 /* The world must continue turning, and we must turn with it or be left behind. Thank you for your ear, my friend. */
IF ~~ EXIT
END

IF ~~ c14.18
SAY @453 /* But the world must continue turning, and we must turn with it or be left behind. Thank you for your ear, my friend. */
IF ~~ EXIT
END
END