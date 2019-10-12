module ApplicationHelper

    def page_title
        if content_for?(:title)
            "TrackRx-#{content_for(:title)}"
        else
            "TrackRx"
        end
    end
end
