module LikesHelper
    def user_liked_likeable?(user, likeable)
        return false if user.nil?
        user.likes.find_by(likeable: likeable)
    end
end