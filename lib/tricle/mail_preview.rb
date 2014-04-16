require 'mail_view'
require_relative 'mailer'

module Tricle
  class MailPreview < MailView
    Tricle::Mailer.descendants.each do |klass|
      define_method(klass.name.underscore) { klass.mailview_safe_email }
    end
  end
end
