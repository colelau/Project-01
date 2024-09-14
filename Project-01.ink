


VAR player_name = ""
VAR map = 0


-> name


== name ==
Hello.

What is your name?

* [ Max ]
    ~ player_name = "Max"
    -> Welcome

* [ Ari ]
    ~ player_name = "Ari"
    -> Welcome

* [ Rei ]
    ~ player_name = "Rei"
    -> Welcome

* [ Astrid ]
    ~ player_name = "Astrid"
    -> Welcome

== Welcome == 
{ not map_pickup: Welcome { player_name }. }

{ not map_pickup: It is the year 3028. }

{ not map_pickup: You are one of the last of man-kind left after AI gained consciousness and took over humanity. The last human you've had contact with was your father until he was murdered by an AI when you were 12 years old. You've been alone ever since. }

{ not map_pickup: After the rise of AI, the state of the world rapidly declined. AI doesn't require beautiful buildings to live in. AI doesn't require grocery stores or pharmacies. AI doesn't long for lush gardens and clean streets the way you do. You are reminded of this reality every time you leave your shelter. You dream of a life where humans are the dominant species. } 

{ map_pickup: You believe the answer is out there. The answer that will save you and what's left of the human race. }

{ not map_pickup: You see a map in the corner of your shelter. }

You have {map} map.

* {map_pickup} [Inspect map] -> map_inspection
* {not map_pickup} [Pick up map] -> map_pickup

-> END 

== map_inspection ==

After inspecting your dingy paper map, you figure the best place to start is the collections building. Maybe the answer is in there? You roll up your map before placing it inside your bag to begin your journey.

+ [ Leave your shelter ] -> leave_shelter

-> END

== map_pickup ==

~ map = map + 1

May this map guide you along your journey. 

+ [ Go Back ] -> Welcome 

-> END

== leave_shelter == 

You are aware that human history has become an afterthought, a footnote in a history that is now written by algorithms and machines. So finding the information you need is going to be a challenge. You don't get your hopes up.

If only my map was more legible, you think to yourself. You decide to try different routes. From looking at your map, all you know is that the collections building is within a two mile radius of your shelter. 

* [ Go left ] -> left
* [ Go right ] -> right
* [ Go straight ] -> straight

    -> END


== left ==

You walk for ten minutes before you realize this path is going to take you nowhere.

+ [ Go Back ] -> leave_shelter

-> END


== right ==
Nervousness grows into a heavy pit at the bottom of your stomach. You have a bad feeling about going this direction. 

+ [Go Back] -> leave_shelter
+ [Proceed Anyway] -> right2

-> END 


== straight ==

You walk for ten minutes before you see a big steel building in the distance. Tall grass and weeds surround its pristine exterior. 

You've found the collections building!

A wave of relief washes over your body. 

To get into the collections' archive, you'll have to get through the AI secretary first. 

+ [ Enter the Collections building ] -> enter_building

-> END


== enter_building == 

The interior of the collections building is exceptionally pristine. Its steel walls are bare of any imperfections. 

Towards the back of the building is the receptionist's desk. A robot stands behind it, guarding the vault door that holds the answers to the decline of the human race. 

+ [ Approach the secretary ] -> approach

-> END


== approach ==

This is the end of Chapter 1. Save your data or else all progress will be lost.

-> END
    
== right2 ==

After walking for a while, you reach a dead end. You turn around and are confronted by a viscious robotic dog. 

The AI's created robotic dogs to get rid of what's left of the human race. AI dogs are what killed your father.

Your worst nightmare has come true.

After a long fight, your character has been slain. 

+ [ Respawn ] -> leave_shelter




