#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class RetryException < RuntimeError
    attr :ok_to_retry
    def initialize(ok_to_retry)
      @ok_to_retry = ok_to_retry
    end
  end
socket = STDIN
  def read_data(socket)
    data = socket.read(512)
    if data.nil?
      raise RetryException.new(true), "transient read error"
    end
    # .. normal processing
  end
