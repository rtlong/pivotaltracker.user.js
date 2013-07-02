css = '''
      /* First, delete all text node siblings of the story names (commas between tags and parentheses around initials) */
      .story header .name {
        font-size: 1%;
        color: transparent;
      }
      .story header .name .story_name {
        color: black;
        font-size: 10000%;
        }
      .story header .name .owner {
        font-size: 10000%;
        }
      .story header .name .owner:before { content: ' ('; }
      .story header .name .owner:after { content: ')'; }
      .story header .name .label:after { content: ', '; }
      '''

style = $ '<style type="text/css"></style>'
style.html(css)

style.appendTo 'head'

$(document).keypress (evt) ->
  if evt.which is 108 # 'l'
    $('.story header .name .label').toggle()
