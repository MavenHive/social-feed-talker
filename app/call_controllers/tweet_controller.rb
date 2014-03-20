# encoding: utf-8

class TweetController < Adhearsion::CallController
  def run
    play 'Tweet! Tweet!'
    hangup
  end
end
