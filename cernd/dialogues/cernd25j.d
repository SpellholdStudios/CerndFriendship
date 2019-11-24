APPEND CERND25J


//////////////////////////
// SAREVOK IN THE GROUP //
//////////////////////////


IF ~Global("I#CerndSarevokGroup","GLOBAL",2)~ ct1
SAY @0 /* I have stood by your decisions thus far, <CHARNAME>, but I have grave concerns about this 'Sarevok'. His very existence offends the Mother, in the most grievous fashion. */
++ @1 /* He has seen the pits of hell, endured trials beyond imagining, and fought his way back. Don't you think he deserves a chance? */ DO ~SetGlobal("I#CerndSarevokGroup","GLOBAL",3)~ + ct1.1
++ @2 /* I appreciate your concerns, but I have made my decision and I stand by it, Cernd. Sarevok stays. */ DO ~SetGlobal("I#CerndSarevokGroup","GLOBAL",3)~ + ct1.1
++ @3 /* In all honesty, I am not entirely without concerns myself, but we need his help. */ DO ~SetGlobal("I#CerndSarevokGroup","GLOBAL",3)~ + ct1.1
++ @4 /* Do you really think I made the decision lightly? I did what I had to do. */ DO ~SetGlobal("I#CerndSarevokGroup","GLOBAL",3)~ + ct1.1
++ @5 /* Keep your opinions to yourself. */ DO ~SetGlobal("I#CerndSarevokGroup","GLOBAL",3)~ + ct1.2
END

IF ~~ ct1.1
SAY @6 /* Who knows what imbalance you have wrought in restoring this man to life? What acts he may yet commit? You cannot hope to control him forever. */
= @7 /* Some deaths are meant to be permanent. The Mother mourns each of her children as they die, but she knows she cannot return them to life, lest she interrupt the cycle. */
++ @8 /* The restoration of one man will not bring ruin upon the world. */ + ct1.3
++ @9 /* I don't care about nature, I care about survival. My survival. */ + ct1.4
++ @10 /* I didn't mourn Sarevok's death, but everyone deserves a second chance. */ + ct1.5
END

IF ~~ ct1.2
SAY @11 /* I will abide by your decision, but I will be watching him closely. */
IF ~~ EXIT
END

IF ~~ ct1.3
SAY @12 /* Can you say that with surety? You cannot know. And even if you could, that would not change his wrongness. He should not be. */
IF ~~ + ct1.2
END

IF ~~ ct1.4
SAY @13 /* All that is natural screams out against him. He should not be, <CHARNAME>. */
IF ~~ + ct1.2
END

IF ~~ ct1.5
SAY @14 /* Make no mistake, <CHARNAME>, this is no second chance. This is a travesty against the natural order of things. He should not be. */
IF ~~ EXIT
END


////////////////////////
// SARADUSH DESTROYED //
////////////////////////

IF WEIGHT #-1 ~Global("I#CerndSaradush","GLOBAL",2)~ THEN BEGIN 25.c2
SAY @15 /* The storm revitalizes the land, washing away what is dead so that life can blossom once more. That is the natural way of things, but what happened in Saradush... */
= @16 /* What happened there was not natural, <CHARNAME>. There is so much grief buried under the rubble of the city... so much to mourn. */ 
++ @17 /* The fault was mine, Cernd. I didn't make it in time to save Saradush. */ DO ~SetGlobal("I#CerndSaradush","GLOBAL",3)~ + 25.c2.1
++ @18 /* War is as natural as any other disaster, Cernd. We'll never be able to change that, no matter how hard we try. */ DO ~SetGlobal("I#CerndSaradush","GLOBAL",3)~ + 25.c2.2
++ @19 /* I don't want to talk about this, Cernd. Not now. Or ever. */ DO ~SetGlobal("I#CerndSaradush","GLOBAL",3)~ + 25.c2.3
END

IF ~~ 25.c2.1
SAY @20 /* Against a force such as this, there was little that you could have done. */
IF ~~ + 25.c2.4
END

IF ~~ 25.c2.2
SAY @21 /* You speak wisely, my friend, but the pain remains. */
IF ~~ + 25.c2.4
END

IF ~~ 25.c2.4
SAY @22 /* I have never considered myself a defender of the city, nor wished to struggle against what I viewed as the cycle of life and death, but I have seen far too much of the latter in recent days. If there is anything that can save Amkethran from a similar fate, I would see it done. */
++ @23 /* I understand, and I won't give up. We'll protect this place from my siblings. */ + 25.c2.5
++ @24 /* Our main goal is different, Cernd, don't forget that. Our targets are the other Bhaalspawn. */ + 25.c2.5
++ @25 /* Cernd, please. I don't want to talk about this. */ + 25.c2.3
END

IF ~~ 25.c2.5
SAY @26 /* Yes, the role that the Children of Bhaal play in this matter cannot be understated... nor can your own. As different as you are from your kin, in one thing you are similar. */
= @27 /* You understand death. You have felt it before. Death is not an evil in and of itself, <CHARNAME>, so do not misunderstand me. I don't speak of you as I would of Gromnir, Yaga-Shura, or others of your heritage. It is something else that I speak of. */
= @28 /* There is potential in the way that you understand life and death. As the eagle that rises above the plains, you see farther than the rest of your kindred. I believe that you will be able to use that knowledge to defend the balace that many of your siblings have already lost. */
++ @29 /* That doesn't sound as an easy task. */ + 25.c2.6
++ @30 /* Understanding is one thing. Being able to use it properly is something very different. */ + 25.c2.6
++ @31 /* I'm under enough pressure as it is, Cernd. You don't have to make it even worse. */ + 25.c2.6
++ @32 /* Give me some space, Cernd. I'm tired of talking about this. */ + 25.c2.3
END

IF ~~ 25.c2.6
SAY @33 /* I know that you must feel the weight of the world pressing down upon you at times, <CHARNAME>, but let me tell you one thing: I believe in you and your ability to bring balance. */
= @34 /* Let us ensure that what happened in Saradush doesn't happen again. */
IF ~~ EXIT
END

IF ~~ 25.c2.3
SAY @35 /* If you are in no mood to speak, my friend, then I shall leave you in peace. */
IF ~~ EXIT
END


//////////////////////////
// BHAALSPAWN AND KIN //
//////////////////////////


IF WEIGHT #-1 ~Global("I#CerndKinslayer","GLOBAL",2)~ THEN BEGIN 25.c3
SAY @36 /* I would ask you something, <CHARNAME>, though it be of a delicate nature. How does it feel too struggle against those who sprout from the very same tree as yourself? How... how does it feel to fight your own kin? */
++ @37 /* I've never seen other Bhaalspawn as my kin. What we share is far from blood. */ DO ~SetGlobal("I#CerndKinslayer","GLOBAL",3)~ + 25.c3.1
++ @38 /* It feels strange, as does the fact that I'll never know what a normal family is like. */ DO ~SetGlobal("I#CerndKinslayer","GLOBAL",3)~ + 25.c3.2
++ @39 /* It's not a matter I care to discuss with you, Cernd. Get back in formation, please. */ DO ~SetGlobal("I#CerndKinslayer","GLOBAL",3)~ + 25.c3.3
END

IF ~~ 25.c3.1
SAY @40 /* I see. I had thought that some bond connected you, but perhaps you are right. */
IF ~~ + 25.c3.4
END

IF ~~ 25.c3.2
SAY @41 /* Does the cuckoo bird complain that the parents who raised it were not its own? There is no normal family, <CHARNAME>, no single model of what an upbringing should look like. This is something we both have learned. */
IF ~~ + 25.c3.4
END

IF ~~ 25.c3.4
SAY @42 /* You might find it strange, my friend, but I ask you this because I... I wonder how I myself would feel if I were in your position. */
++ @43 /* I hope you never have to find out. */ + 25.c3.5
++ @44 /* Are you afraid that you may be forced to do the same? */ + 25.c3.6
++ @45 /* Stow it, Cernd, and let us get back to work, would you? */ + 25.c3.3
END

IF ~~ 25.c3.5
SAY @46 /* As do I, <CHARNAME>. */
IF ~~ + 25.c3.7
END

IF ~~ 25.c3.6
SAY @47 /* I... */
IF ~~ + 25.c3.7
END

IF ~~ 25.c3.7
SAY @48 /* I must say that a dark cloud hovers over me of late, a premonition that one day my own kin shall turn upon me, much as yours have with you. But there is only one branch remaining on the tree that is my own family - my son Ahsdale. */
++ @49 /* I wouldn't worry about it, even if your relationship is a bit complicated. */ + 25.c3.8
++ @50 /* In that case, perhaps you should do your best to make sure he thinks well of you. */ + 25.c3.9
++ @51 /* That's your private matter, Cernd. Don't involve me in it. */ + 25.c3.3
END

IF ~~ 25.c3.8
SAY @52 /* I would like to believe that, <CHARNAME>, but my thoughts chase each other in circles like a litter of newborn pups. This is a tangled matter. Tangled and difficult. */
= @53 /* Nevertheless, thank you for listening to me. Come now. Let's make good use of this <DAYNIGHT>. */
IF ~~ EXIT
END

IF ~~ 25.c3.9
SAY @54 /* You speak truly, my friend, but this is a tangled matter. Tangled and difficult. */
= @55 /* Thank you for listening to me, <CHARNAME>. Come now. Let's make good use of this <DAYNIGHT>. */
IF ~~ EXIT
END

IF ~~ 25.c3.3
SAY @56 /* Conversing with you is sometimes much like petting a porcupine, <CHARNAME>. */
IF ~~ EXIT
END


////////////////////
// ALMOST THE END //
////////////////////


IF WEIGHT #-1 ~Global("I#CerndFinalToB","GLOBAL",2)~ THEN BEGIN 25.c4
SAY @57 /* And so a cycle is about to come to a close. I can almost feel it in the air, even though I do not know what portent it holds for the future. */
= @58 /* You have opened my eyes to many things, <CHARNAME>, and I would have you open them once more. What do you seek in the days ahead? Would you bring the tempest? Or the breeze that cools the hot summer day? */
++ @59 /* This world needs a revolution. I want to show people that what we do matters. */ DO ~SetGlobal("I#CerndFinalToB","GLOBAL",3)~ + 25.c4.1
++ @60 /* I'd rather everything calm down. We all need some tranquility now, at least for a while. */ DO ~SetGlobal("I#CerndFinalToB","GLOBAL",3)~ + 25.c4.2
++ @61 /* I'm not going to force any change. The people will have to decide for themselves what the future will bring. */ DO ~SetGlobal("I#CerndFinalToB","GLOBAL",3)~ + 25.c4.3
++ @62 /* This isn't a good time, Cernd. Let's just finish this. */ DO ~SetGlobal("I#CerndFinalToB","GLOBAL",3)~ + 25.c4.4
END

IF ~~ 25.c4.1
SAY @63 /* Then you shall be like the mighty river, carving your path across the land as you uproot all that might resist you. In a lesser <PRO_MANWOMAN>, such ambition would disturb me, but you have long been a force of nature upon yourself. */
= @64 /* I wonder what this world will look like once your tale has finally come to an end, <CHARNAME>. I wonder what will remain of it for anyone else. */
= @65 /* Come now. Your destiny awaits. */
IF ~~ EXIT
END

IF ~~ 25.c4.2
SAY @66 /* Then you shall be like the first shoots in the spring after the frost has past, the reminder that life can rise again after any storm, and that stability can be found once more in the wake of any disaster. */
= @67 /* But the winter has not yet passed for us. There is still much to contend with before we can see what hope tomorrow shall bring. */
= @68 /* Come then, <CHARNAME>. Our final trials await. */
IF ~~ EXIT
END

IF ~~ 25.c4.3
SAY @69 /* At times you surprise me with your wisdom, my friend. Yours is the way of the Great Mother, who offers her children the freedom of choice, whether for good or for ill. If I had power such as yours, I do not know if I would be willing to stand aside. */
= @70 /* But you cannot stand aside just yet. There is still much to contend with before your part in this story is over and others can forge a destiny of their own. */
= @71 /* Come then, <CHARNAME>. Show me the way, and I shall follow. */
IF ~~ EXIT
END

IF ~~ 25.c4.4
SAY @72 /* As you wish, <CHARNAME>. Your acts will undoubtedly speak for themselves. */
IF ~~ EXIT
END
END