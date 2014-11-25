class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password_digest, :name, :twitter_username, :github_username, :website, :date_of_birth, :bio
end
