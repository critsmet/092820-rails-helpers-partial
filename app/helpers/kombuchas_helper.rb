module KombuchasHelper
  #These helpers are available in ALL views and ALL controllers.
  #However, they get their own file because it's easier to keep them organize.

  #The methods that go here are generally for view formatting to take logic out of views
  #BUT they are available to use in the controllers as well.

  def kombucha_notes(kombucha)
    "<h3>Notes:</h3>
    <p>#{kombucha.notes.blank? ? "This kombocha doesn't have a note" : kombucha.notes}</p>
    ".html_safe #Yes you can write HTML as a string if you use .html_safe
  end


end
