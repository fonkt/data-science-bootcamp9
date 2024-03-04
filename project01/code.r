## Hammer-Paper-Scissors Game
game <- function() {
  # greeting
  user_name <- readline("What is your name : ")
  print(paste("Welcome to the game !!",user_name))
  print("------------------------------------------------------------------")

  # score
  user_scores = 0
  comp_scores = 0
  # round
  n = 0

  while(T) {
    flush.console()
    hands <- c("h","s","p")
    comp_hand <- sample(hands,1)
    user_hand <- readline("Choose your hand 'h'(hammer🔨), 's'(scissor✂️), 'p'(paper📄) or 'q'(quit game): ")

    ## condition
    # draw
    if (comp_hand == user_hand ) {
        n = n + 1
        print(paste("Round ",n))
        print(paste("Bot :", comp_hand, "| You :", user_hand, " >> DRAW🤝"))

    # lose
    } else if ((comp_hand == "h" & user_hand == "s") | (comp_hand == "s" & user_hand == "p") | (comp_hand == "p" & user_hand == "h")) {
        n = n + 1
        print(paste("Round ",n))
        print(paste("Bot :", comp_hand, "| You :", user_hand, " >> LOSE😢"))
        comp_scores = comp_scores + 1
        print("Bot scores +1")

    # win
    } else if ((comp_hand == "h" & user_hand == "p") | (comp_hand == "s" & user_hand == "h") | (comp_hand == "p" & user_hand == "s")) {
        n = n + 1
        print(paste("Round ",n))
        print(paste("Bot :", comp_hand, "| You :" ,user_hand, " >> WIN🤩"))
        user_scores = user_scores + 1
        print("Your scores +1")

    #summary scores
    }  else if (user_hand == "q") {
         print("------------------------------------------------------------------")
         print("SUMMARY")
         print(paste("Bot Scores :", comp_scores, "| Your Scores :", user_scores))

         if (user_scores > comp_scores){
            print("YOU WIN !!! 🤩🤩🤩")
         } else if (user_scores < comp_scores){
            print("YOU LOSE 😢😢😢 Come back again!!")
         } else{
            print("DRAW 🤝🤝🤝")
         }
      break

    } else {
        print("Please choose your hand")
   }
  }
}

game()
