module PostsHelper
    def like_status(post)
        if current_user
        return current_user.likes.exists?(likeable: post)
        end
    end
end
