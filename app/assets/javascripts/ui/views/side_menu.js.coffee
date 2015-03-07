$ ->
  sideMenu = new Ui.SideMenu({ el: $('.js-side-menu') })

class Ui.SideMenu extends Backbone.View

  initialize: ->
    this.innerMenu = this.$el.find('.side-nav')
    this.innerMenu.hide()

  events:
    'click .top-nav-menu-button': 'toggleMenu'
    'mouseleave .side-nav': 'closeMenu'

  toggleMenu: (event) ->
    this.innerMenu.fadeToggle()

  closeMenu: (event) ->
    this.innerMenu.fadeOut()
