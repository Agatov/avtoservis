class AdminController < ApplicationController
  layout 'admin'
  http_basic_authenticate_with name: "admin", password: "raf123"
end