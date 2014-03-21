# encoding: utf-8

class RouteController < Adhearsion::CallController
  def run
    answer
    play_menu
  end

  def play_menu
    menu 'Press 1 to listen to the Twitter Stream. Press 2 to listen to the Facebook Stream. Press 3 for Google Plus. Press 4 to hangup', tries: 3 do
      match '1', TweetController
      match '2', RouteController
      match '3', RouteController
      match('4') { terminate }

      timeout { play_menu }
      invalid { play_menu }
      failure { terminate }
    end
  end

  def terminate
    play 'Goodbye'
    hangup
  end
end
