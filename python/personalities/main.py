from random import randint
import Other_people
def name():
    names = ["Jane","John","Ryan","Rehneshka","Roth","Sethaya","Ded","Olliez","Mommy","Zechty","Chris","Max","Ilt","Anna","Abeius","Sectius","Radin"]
    surname = ["Deza","Cehn","Tan","Kill","Murder","Danny","Sil","Hen","Ch_?","Eat","Bedboi","Denny","Cick","Rock","Drate","Lorck","Dorn","Workan","Slick","Hick","Fron","Dosin","Bron","Holiver","Lawrence","Murnes","Sen","Aebe","Belking","Silp","Defp","Brek","Deb"]
    namenum = randint(1,len(names))
    surnamenum = randint(1,len(surname))
    fullname = f"{names[namenum-1]} {surname[surnamenum-1]}"
    return fullname


def talk(friend,personality,charisma):
    befriend = False
    result = []
    chance = 10
    for i in friend[0]:
        if i in personality:
            chance+=2
    for i in friend[1]:
        if i in personality:
            chance-=1
    chance+=charisma
    befriendchance = randint(1,20)
    if befriendchance<chance:
        befriend = True
    result.append(befriend)
    result.append(friend[2])
    return result


def person():
    dead = False
    positivepersonalities = ["kind","generous","protective","cool"]
    negativepersonalities = ["toxic", "annoying", "jerk", "bully"]
    personality = []
    charisma = randint(-4,4)
    amtpositive = randint(1,4)
    amtnegative = randint(1, 4)
    profile = []
    year = 0
    while dead == False:
        year += 1
        for i in range(amtpositive):
            personalitytype = randint(0,3)
            if positivepersonalities[personalitytype] not in personality:
                personality.append(positivepersonalities[personalitytype])
                charisma+=1
        for i in range(amtnegative):
            personalitytype = randint(0, 3)
            if negativepersonalities[personalitytype] not in personality:
                personality.append(negativepersonalities[personalitytype])
                charisma-=1

        for i in  range(10):
            ppl=Other_people.person()
            fren = talk(ppl,personality,charisma)
        
            if fren[0] == True:
                profile.append(fren[1])
        fullname = name()
        for i in personality:
            profile.append(i)
        profile.append(charisma)
        profile.append(fullname)
        return profile


c = person()
print(c)
