class Admin::NamespaceController < ApplicationController
  http_basic_authenticate_with name: 'testtest', password: 'testtest'
end
