import random
#import 


def chasornot(min, max):

    return random.randint(min, max)


def check(chance):

    return chance == 1


def get_animatronic(which_anim):
    if which_anim == 1:
        animatronic = "Dr Darool"
        weakness = 1
    elif which_anim == 2:
        animatronic = "Mandy Mole"
        weakness = 2
    elif which_anim == 3:
        animatronic = "Gary Gharial"
        weakness = 3
    elif which_anim == 4:
        animatronic = "Bella Bull"
        weakness = 4
    else:
        animatronic = "Negate"
        weakness = 5

    return animatronic, weakness


def death_message(distance, movements):
    print("You were "+str(distance-movements)+" steps away from the exit")

# main game code


def game():
    trackerelec = 1
    heat = 29
    weakness = 1
    falsealarm = 0
    electricity = 100
    dead = False
    chased = False
    trackeron = False
    heater = False
    freezer = False
    chasevent = False
    toolate = False
    toolatemessage = False
    door = False
    active = False
    move = False
    silentronicclose = False
    horrifictronic = False
    monitor = False
    kitchentronic = 0
    silentronicclosenum = 0
    silentronic = 0
    doortronic = 0
    ventspeed = 1
    ventcloseness = 0
    ventronic = 2
    toolatedistance = 0
    run = 1
    distance = 30
    movementspeedanimatronic = 1
    horricchance = 0
    closeness = 0
    chancecloser = 0
    which = 0
    movements = 0
    chance = 0
    animatronic = ""
    songdied = False

    distance = random.randint(30, 45)
    print("You are in Carbos, an italian restaurant and you are trapped and animatronics are hunting you")
    print("You have to escape, while trying be killed by Dr Darool and his friends")
    print("You can do actions like Forward, Check, Run, Tracker, Heater, Polarizer, Security, Door, Electrocute Nothing")
    print("Forward moves you forward, if you Forward, you will move forward, if you move forward enough times, you will win")
    print("Check makes you look backwards to check if there are any animatronics and which animatronics are behind you")
    print("Run makes you run forward, moving you 2 steps every time you Run. It has a higher chance to make animatronics disappear than Forward, but also has a higher chance of attracting animatronics than Forward")
    print("Tracker switches on/ off your tracker. It detects animatronics every action, but it increases the chance of attracting animatronics when switched on")
    print("Heater increases the heat by 3 instead of 1 every turn when active and increases the heat by 3 automatically when switched on. You cannot have Heater and Polar on at the same time")
    print("Polarizer lowers the temperature by 2 instead of increasing by 1 every turn when active and lowers the heat by 3 automatically when switched on.  You cannot have Polar and Heater on at the same time")
    print("Security let's you view the security cameras beside the door leading to the kitchen")
    print("Door allows you to shut/open the door leading to the kitchen")
    print("Electrocute shocks the whole kitchen")
    print("Nothing does not do anything")
    print("Dr Darool chases after you with no weaknesses or strengths")
    print("Mandy Mole chases after you and kills you faster as it gets colder under 30 degrees")
    print("Gary Gharial chases after you faster the warmer it is above 30 degrees")
    print("Bella Bull chases after you faster the longer you have been chased by her")
    print("Negate chases you faster as difference of temperature between the current temperature and the original temperature(30 degrees) increases")
    print("Caleb the Flower chases you and you can only detect him when you sense a presence. However, he will try to send out mini harmless flowers to distract you from him. If you are chased, you can run to try to escape. Once he is on top of you however, he will disable your electrical systems and you cannot escape from him")
    print("Itzgale can only be prevented when you block him by the kitchen door. You can check which stage he is at by using the Security action")
    print("When you hear a song, do not move. You can only avoid him by using the Nothing action")
    print("You need to check the monitor regularly. If Asparagus is slumped over, do not shock him. If he is however, shock him before it is too late")
    while dead == False:
        print(str(electricity)+"% power")
        heat += 1

        animatronic, weakness = get_animatronic(which)

        print("It is "+str(heat)+" degrees celsius in the building")
        action = input(
            "Would you like to [F]orward, [C]heck, [R]un, [T]racker, [H]eater, [P]olarizer, [S]ecurity, [D]oor, [E]lectrocute or [N]othing? ")
        action = action.lower()
        # Forward action
        if action[0] == "f" or action == "forward":
            print("You move forward carefully")
            movements += 1
            chance = chasornot(1, 8)
            run = random.randint(1, 8)
            move = True
        # Check action
        elif action[0] == "c" or action == "check":
            chance = chasornot(1, 8)
            print("You look behind yourself to see if any animatronics are chasing you")
            if chased == True:
                print(animatronic+" is chasing you")
            else:
                print("No animatronic is chasing you")
            move = True
        # Run action
        elif action[0] == "r" or action == "run":
            print(
                "You make a dash, running twice as fast as you normally would have walked")
            movements += 2
            chance = chasornot(1, 5)
            run = random.randint(1, 3)
            move = True
        # Tracker action
        elif action[0] == "t" or action == "tracker":
            if toolate == False:
                print("You toggle the tracker")
                trackeron = not trackeron
            else:
                print("You are not able to activate your tracker properly")
            chance = chasornot(1, 8)
            move = True

        # Heater action
        elif action[0] == "h" or action == "heater":
            if toolate == False:
                print("You toggle the heater")
                heat += 3
                heater = not heater
                freezer = False
            else:
                print("You are not able to activate your heater properly")
            chance = chasornot(1, 8)
            move = True
        # Polarizer action
        elif action[0] == "p" or action == "polarizer":
            if toolate == False:
                print("You toggle the polarizer")
                heat -= 3
                freezer = not freezer
                heater = False
            else:
                print("You are not able to activate your polarizer properly")
            chance = chasornot(1, 8)
            move = True
        # Security action
        elif action[0] == "s":
            print("You check the monitor")
            if electricity > 0:
                if kitchentronic == 0:
                    print("The animatronic is inactive at the moment")
                else:
                    print("The animatronic is at stage "+str(doortronic))
                if horrifictronic == False:
                    print("The animatronic is slumped over")
                else:
                    print("The animatronic is poised to attack")
                electricity -= 1
                monitor = True
            else:
                print("There is not enough electricity to do this action")
                electricity = 0
            move = True

        # Door action
        elif action[0] == "d":
            print("You toggle the door")
            door = not door
            move = True
        # Stop action
        elif action[0] == "n":
            print("You wait in silence")
        # electrocute action
        elif action[0] == "e":
            print("You turn on the generator to shock the kitchen")
            if electricity >= 1:
                electricity -= 1
                if horrifictronic == True:
                    horrifictronic = False
                else:
                    print("You were boiled alive by asparagus")
                    death_message(distance, movements)
                    break
            else:
                print("There is not enough electricity to do this action")
                electricity = 0
            move = True
        # cant understand
        
        else:
            print("Sorry, I do not understand this command.")
        # silentronic line
        silentronic = chasornot(1, 4)
        #if move == True and silentronicclose==True and active==True:
            #print("Kaisaach Newton has violently dismembered you")
            #
        if active == True or silentronicclose == True:
            if move == True:
                print("Kaisaach Newton has violently dismembered you")
                death_message(distance, movements)
                break
            else:
                chancecloser = chasornot(1, 3)
                if chancecloser == 1:
                    #silentronicclose = True
                    print("The song is getting so loud that you want to scream")
                else:
                    active = False
                    silentronicclose = False
                    songdied = True
                    print("You hear the song fade into the distance")
        if active == False and silentronicclose == False:
            if silentronic == 1 and songdied == False:
                active = True
                print("You hear a faint song in the distance")
            else:
                active = False

        # vent animatronic line
        if chasevent == False and toolate == False:
            if heat > 40 or heat < 20:
                ventronic = chasornot(1, 4)
            else:
                ventronic = chasornot(1, 10)
            if ventronic == 1:
                chasevent = True
                print("You feel a presence nearby")
        if chasevent == True:
            ventspeed = chasornot(1, 3)
            ventcloseness += ventspeed
            if ventcloseness >= 10:
                toolate = True
                ventcloseness = 0
                chasevent = False
        if toolate == True:
            if toolatemessage == False:
                print(
                    "Your electrical systems start to stop working as a presence looms over you. It is already too late...")
                toolatemessage = True
            heater = False
            freezer = False
            trackeron = False
            toolatedistance += 1
            if toolatedistance == 5:
                print("Caleb the Flower has grabbed and stabbed you")
                death_message(distance, movements)
                break
        # door usage
        if door == True:
            if electricity > 5:
                electricity -= 5
            else:
                print("There is not enough power to close the door")
                electricity = 0
        # kitchentronic line
        kitchentronic = chasornot(1, 4)
        if kitchentronic == 1:
            doortronic += 1
            if doortronic >= 6:
                if door == True:
                    doortronic = 0
                    print("You hear a bang")
                else:
                    print("Itzgale slapped you so hard that your intestines exploded")
                    death_message(distance, movements)
                    break
        # check if heater is on
        if heater == True:
            if electricity > 0:
                print("You sigh in relief as the surroundings get warmer")
                heat += 2
                electricity -= 1
            else:
                heater = False
                print("There is not enough electricity. Switching off the heater now...")
                electricity = 0
        # check if freezer is on
        if freezer == True:
            if electricity > 0:
                print("You shiver as the surroundings get colder")
                heat -= 3
                electricity -= 1
            else:
                freezer = False
                print(
                    "There is not enough electricity. Switching off the polarizer now...")
                electricity = 0
        # check if you have escaped
        if movements >= distance:
            print("You have escaped!")
            break
        # false alarm
        if chasevent == False and toolate == False:
            falsealarm = chasornot(1, 4)
            if falsealarm == 1:
                print("You feel a presence nearby")
        # run chance
        if run == 2:
            chased = False
            closeness = 0
            run = 1
            if chasevent == True:
                print("You sigh in relief as you feel the presence fading")
                chasevent = False
                ventcloseness = 0

        # chance of animatronic
        if chance == 1:
            which = random.randint(1, 5)
            chased = check(chance)
            closeness = 0
        # If tracker is on
        if trackeron == True:
            if electricity > 0:
                if chased == False:
                    chance = chasornot(1, 4)
                    chased = check(chance)
            else:
                trackeron = False
                print(
                    "There is not enough electricity. Switching off the tracker now...")
        else:
            if trackerelec > 1:
                trackerelec -= 1
                #electricity = 0
        if trackeron == True:
            trackerelec = trackerelec * 2
            electricity -= trackerelec
            if chased == True:
                print("Something is chasing you!")
            else:
                print("There is no animatronic chasing you!")
        # horrifictronic
        horricchance = chasornot(1, 8)
        if horricchance == 1:
            if horrifictronic == True and monitor == False:
                print("Asparagus has cooked you alive")
                death_message(distance, movements)
                break
            else:
                horrifictronic = True
        # checking strengths and if player is ded
        if chased == True:
            movementspeedanimatronic = chasornot(1, 3)
            if weakness == 2:
                if 30-heat >= 0:
                    movementspeedanimatronic += 30-heat
            elif weakness == 3:
                if heat-30 >= 0:
                    movementspeedanimatronic += heat-30
            elif weakness == 4:
                movementspeedanimatronic += closeness
            elif weakness == 5:
                if 30-heat > heat-30:
                    movementspeedanimatronic += 30-heat
                else:
                    movementspeedanimatronic += heat-30
            closeness += movementspeedanimatronic
        if closeness >= 30:
            print(animatronic+" has murdered you")
            dead == True
            print("You were "+str(distance-movements) +
                  " steps away from the exit")
            break
        # check if died of intense heat/cold
        if heat >= 80:
            print("You have overheated and died")
            print("You were "+str(distance-movements) +
                  " steps away from the exit")
            break
        elif heat <= 1:
            print("You froze to death")
            print("You were "+str(distance-movements) +
                  " steps away from the exit")
            break
        move = False
        monitor = False
        songdied = False
        continue


# start code
start = input("Let's play a game. (Y/N) ")
if start.lower() == "y":
    game()
else:
    print("Awwwwww")
