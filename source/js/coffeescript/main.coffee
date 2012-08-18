$(document).ready(->
  $(document).foundationAlerts()
  $(document).foundationButtons()
  $(document).foundationAccordion()
  $(document).foundationNavigation()
  $(document).foundationCustomForms()
  $(document).foundationMediaQueryViewer()
  $(document).foundationTabs {callback: $.foundation.customForms.appendCustomMarkup}
  $(document).tooltips()
  $('input, textarea').placeholder()
  if Modernizr.touch
    $(window).load ->
      setTimeout ->
        window.scrollTo 0, 1
      , 0
  )



htmlEncode = (->
  entities =
    "&": "&amp;"
    "<": "&lt;"
    "\"": "&quot;"
  (value) ->
    value.replace /[&<"]/g, (c) ->
      entities[c]
)()



# iOS scaling bug fix
# Rewritten version
# By @mathias, @cheeaun and @jdalton
# Source url: https://gist.github.com/901295
((doc) ->
  fix = ->
    meta.content = "width=device-width,minimum-scale=#{ scales[0] },maximum-scale=#{ scales[1] }"
    doc.removeEventListener type, fix, true
  addEvent = "addEventListener"
  type = "gesturestart"
  qsa = "querySelectorAll"
  scales = [1, 1]
  meta = (if qsa of doc then doc[qsa]("meta[name=viewport]") else [])
  if (meta = meta[meta.length - 1]) and addEvent of doc
    fix()
    scales = [0.25, 1.6]
    doc[addEvent] type, fix, true
) document