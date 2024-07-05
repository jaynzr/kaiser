from random import randint


def name():
    names = ["Jane", "John", "Ryan", "Rehneshka", "Roth", "Sethaya", "Ded", "Olliez",
             "Mommy", "Zechty", "Chris", "Max", "Ilt", "Anna", "Abeius", "Sectius", "Radin"]
    surname = ["Deza", "Cehn", "Tan", "Kill", "Murder", "Danny", "Sil", "Hen", "Ch_?", "Eat", "Bedboi", "Denny", "Cick", "Rock", "Drate", "Lorck", "Dorn",
               "Workan", "Slick", "Hick", "Fron", "Dosin", "Bron", "Holiver", "Lawrence", "Murnes", "Sen", "Aebe", "Belking", "Silp", "Defp", "Brek", "Deb"]
    namenum = randint(1, len(names))
    surnamenum = randint(1, len(surname))
    fullname = f"{names[namenum-1]} {surname[surnamenum-1]}"
    return fullname


def person():
    positivepersonalities = ["kind", "generous", "protective", "cool"]
    negativepersonalities = ["toxic", "annoying", "jerk", "bully"]
    likes = []
    dislikes = []
    allikes = ""
    alldislikes = ""
    amtpositive = randint(1, 4)
    amtnegative = randint(1, 4)
    for i in range(amtpositive):
        ldtype = randint(0, 3)
        if positivepersonalities[ldtype] not in likes:
            likes.append(positivepersonalities[ldtype])

    for i in range(amtnegative):
        ldtype = randint(0, 3)
        if negativepersonalities[ldtype] not in dislikes:
            dislikes.append(negativepersonalities[ldtype])

    fullname = name()
    profile = []
    for i in likes:
        allikes += f" {i}"

    for i in dislikes:
        alldislikes += f" {i}"
    profile.append(allikes)
    profile.append(alldislikes)
    profile.append(fullname)
    return profile
