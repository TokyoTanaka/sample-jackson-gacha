# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end

# == Route Map
#
#                                   Prefix Verb   URI Pattern                                                                                       Controller#Action
#                settings_account_nickname GET    /settings/account/nickname(.:format)                                                              user/account#nickname
#                settings_account_username GET    /settings/account/username(.:format)                                                              user/account#username
#                   settings_account_email GET    /settings/account/email(.:format)                                                                 user/account#email
#                settings_account_password GET    /settings/account/password(.:format)                                                              user/account#password
#                                     blog GET    /blog(.:format)                                                                                   user/blog#index
#      new_database_authentication_session GET    /database_authentications/sign_in(.:format)                                                       user/database_authentication/sessions#new
#          database_authentication_session POST   /database_authentications/sign_in(.:format)                                                       user/database_authentication/sessions#create
#  destroy_database_authentication_session DELETE /database_authentications/sign_out(.:format)                                                      user/database_authentication/sessions#destroy
#            new_registration_confirmation GET    /registrations/confirmation/new(.:format)                                                         user/registrations#new
#                registration_confirmation GET    /registrations/confirmation(.:format)                                                             user/registrations#show
#                                          POST   /registrations/confirmation(.:format)                                                             user/registrations#create
#                 finish_user_registration POST   /registration/finish(.:format)                                                                    user/registrations#finish
#                                     help GET    /help(.:format)                                                                                   user/help#index
#                   settings_notifications GET    /settings/notifications(.:format)                                                                 user/notifications#index
#              settings_notifications_mail GET    /settings/notifications/mail(.:format)                                                            user/notifications#mail
#                  settings_reactions_like GET    /settings/reactions/like(.:format)                                                                redirect(301, /settings/reactions/like/photo)
#                       settings_reactions GET    /settings/reactions(.:format)                                                                     user/reactions#index
#            settings_reactions_like_photo GET    /settings/reactions/like/photo(.:format)                                                          user/reactions#photo
#                                 settings GET    /settings(.:format)                                                                               redirect(301, /settings/account)
#                         settings_account GET    /settings/account(.:format)                                                                       user/settings#index
#                         settings_profile GET    /settings/profile(.:format)                                                                       user/settings#profile
#                  settings_social_profile GET    /settings/social_profile(.:format)                                                                user/settings#social_profile
#                     settings_credit_card GET    /settings/credit_card(.:format)                                                                   user/settings#credit_card
#                         settings_premium GET    /settings/premium(.:format)                                                                       user/settings#premium
#                      settings_withdrawal GET    /settings/withdrawal(.:format)                                                                    user/settings#withdrawal
#                                 user_top GET    /                                                                                                 user/top#index
#                                  premium GET    /premium(.:format)                                                                                user/top#premium
#                                    about GET    /about(.:format)                                                                                  user/top#about
#                                    terms GET    /terms(.:format)                                                                                  user/top#terms
#                                  privacy GET    /privacy(.:format)                                                                                user/top#privacy
#         turbo_recede_historical_location GET    /recede_historical_location(.:format)                                                             turbo/native/navigation#recede
#         turbo_resume_historical_location GET    /resume_historical_location(.:format)                                                             turbo/native/navigation#resume
#        turbo_refresh_historical_location GET    /refresh_historical_location(.:format)                                                            turbo/native/navigation#refresh
#            rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                           action_mailbox/ingresses/postmark/inbound_emails#create
#               rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                              action_mailbox/ingresses/relay/inbound_emails#create
#            rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                           action_mailbox/ingresses/sendgrid/inbound_emails#create
#      rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#health_check
#            rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#create
#             rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                                       action_mailbox/ingresses/mailgun/inbound_emails#create
#           rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#index
#                                          POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#create
#        new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                                      rails/conductor/action_mailbox/inbound_emails#new
#       edit_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                                 rails/conductor/action_mailbox/inbound_emails#edit
#            rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#show
#                                          PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#update
#                                          PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#update
#                                          DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#destroy
# new_rails_conductor_inbound_email_source GET    /rails/conductor/action_mailbox/inbound_emails/sources/new(.:format)                              rails/conductor/action_mailbox/inbound_emails/sources#new
#    rails_conductor_inbound_email_sources POST   /rails/conductor/action_mailbox/inbound_emails/sources(.:format)                                  rails/conductor/action_mailbox/inbound_emails/sources#create
#    rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                               rails/conductor/action_mailbox/reroutes#create
# rails_conductor_inbound_email_incinerate POST   /rails/conductor/action_mailbox/:inbound_email_id/incinerate(.:format)                            rails/conductor/action_mailbox/incinerates#create
#                       rails_service_blob GET    /rails/active_storage/blobs/redirect/:signed_id/*filename(.:format)                               active_storage/blobs/redirect#show
#                 rails_service_blob_proxy GET    /rails/active_storage/blobs/proxy/:signed_id/*filename(.:format)                                  active_storage/blobs/proxy#show
#                                          GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                                        active_storage/blobs/redirect#show
#                rails_blob_representation GET    /rails/active_storage/representations/redirect/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations/redirect#show
#          rails_blob_representation_proxy GET    /rails/active_storage/representations/proxy/:signed_blob_id/:variation_key/*filename(.:format)    active_storage/representations/proxy#show
#                                          GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)          active_storage/representations/redirect#show
#                       rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                                       active_storage/disk#show
#                update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                               active_storage/disk#update
#                     rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                                    active_storage/direct_uploads#create
