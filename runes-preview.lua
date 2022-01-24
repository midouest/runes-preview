-- runes-preview
--
-- Preview vector graphics from
-- Runes with Norns
--
function init()
  screen_dirty = true
  clock.run(function()
    while true do
      if screen_dirty then
        redraw()
        screen_dirty = false
      end
      clock.sleep(1 / 15)
    end
  end)
end

-- This function will be overwritten by the Runes desktop client via Matron
function redraw()
  screen.clear()

  screen.move(64, 32)
  screen.text_center("Waiting for desktop client...")
  screen.stroke()

  screen.update()
end
