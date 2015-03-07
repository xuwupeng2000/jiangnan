$ ->
  sideMenu = new Ui.SideMenu({ el: $('.js-side-menu') })

class Ui.SideMenu extends Backbone.View

  initialize: ->
    @innerMenu = this.$el.find('.side-nav')
    @innerMenu.hide()

  events:
    'click .top-nav-menu-button': 'toggleMenu'

  toggleMenu: (event)->
    this.innerMenu.toggle()
