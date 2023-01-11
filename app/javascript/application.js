// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import jQuery from 'jquery';
window.$ = window.jQuery = jQuery;
import "@hotwired/turbo-rails"
import "controllers"
import "popper"
import "bootstrap"
import "vanilla-nested";
import "custom/sb-admin-2";
import "vendor/jquery-easing/jquery.easing.min"
import 'custom/custom'import "./channels"
