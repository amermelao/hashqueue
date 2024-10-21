# frozen_string_literal: true

class SendArticle
  include Sidekiq::Job

  def perform(input_data)
    input_s = InputStruct.new(**input_data)

    response = HTTParty.post("http://localhost:8080", body: input_s.to_json)
    puts response.code
    puts response.body
  end

end
