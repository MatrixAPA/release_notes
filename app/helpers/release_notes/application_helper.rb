module ReleaseNotes
  module ApplicationHelper

    def dev_user(id = current_user.id)
      [4, 116, 262].include?(id)
    end

  end
end
