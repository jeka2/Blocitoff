namespace :todo do
  desc "Delete items older than seven days"
  task delete_items: :environment do
    Item.where("expires_at <= ?", Time.now).destroy_all
  end

end
