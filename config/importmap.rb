# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin 'application', preload: true
pin '@hotwired/turbo-rails', to: 'turbo.min.js', preload: true
pin '@hotwired/stimulus', to: 'stimulus.min.js', preload: true
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin_all_from 'app/javascript/controllers', under: 'controllers'
pin 'jquery', to: 'https://ga.jspm.io/npm:jquery@3.6.0/dist/jquery.js'
pin 'popper', to: 'popper.js', preload: true
pin 'bootstrap', to: 'bootstrap.min.js', preload: true
pin 'vanilla-nested', to: 'vanilla_nested.js', preload: true
pin_all_from 'app/javascript/custom', under: 'custom'
pin_all_from 'app/javascript/vendor', under: 'vendor'

# pin "vanilla-nested", to: "https://ga.jspm.io/npm:vanilla-nested@1.6.1/app/assets/javascripts/vanilla_nested.js"
pin "@rails/actioncable", to: "actioncable.esm.js"
pin_all_from "app/javascript/channels", under: "channels"
