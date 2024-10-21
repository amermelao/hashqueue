# frozen_string_literal: true

class SendArticle
  include Sidekiq::Job

  def perform(input_data)
    input_s = InputStruct.new(**input_data)
    puts response.code
    puts response.body
  end

end
