class HomeController < ApplicationController

  def trash_em
    @trash_em = List.where(:completed => true).destroy_all
    redirect_to list_url, notice: "All marked items were successfully deleted."
  end
end
