# frozen_string_literal: true

class TaskController < ApplicationController

  def enqueue
    input_m = Input.find(params[:id])
    input_struct = InputStruct.new(
      input_m.id,
      input_m.title,
      input_m.body
    )

    SendArticle.perform_async(input_struct.to_h.stringify_keys)

    render :json => :ok
  end
end
