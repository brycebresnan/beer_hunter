# require 'swagger_helper'

# RSpec.describe 'locations', type: :request do

#   path '/locations/barcrawl' do

#     get('crawl location') do
#       response(200, 'successful') do

#         after do |example|
#           example.metadata[:response][:content] = {
#             'application/json' => {
#               example: JSON.parse(response.body, symbolize_names: true)
#             }
#           }
#         end
#         run_test!
#       end
#     end
#   end

#   path '/locations' do

#     get('list locations') do
#       response(200, 'successful') do

#         after do |example|
#           example.metadata[:response][:content] = {
#             'application/json' => {
#               example: JSON.parse(response.body, symbolize_names: true)
#             }
#           }
#         end
#         run_test!
#       end
#     end

#     post('create location') do
#       response(200, 'successful') do

#         after do |example|
#           example.metadata[:response][:content] = {
#             'application/json' => {
#               example: JSON.parse(response.body, symbolize_names: true)
#             }
#           }
#         end
#         run_test!
#       end
#     end
#   end

#   path '/locations/{id}' do
#     # You'll want to customize the parameter types...
#     parameter name: 'id', in: :path, type: :string, description: 'id'

#     get('show location') do
#       response(200, 'successful') do
#         let(:id) { '123' }

#         after do |example|
#           example.metadata[:response][:content] = {
#             'application/json' => {
#               example: JSON.parse(response.body, symbolize_names: true)
#             }
#           }
#         end
#         run_test!
#       end
#     end

#     patch('update location') do
#       response(200, 'successful') do
#         let(:id) { '123' }

#         after do |example|
#           example.metadata[:response][:content] = {
#             'application/json' => {
#               example: JSON.parse(response.body, symbolize_names: true)
#             }
#           }
#         end
#         run_test!
#       end
#     end

#     put('update location') do
#       response(200, 'successful') do
#         let(:id) { '123' }

#         after do |example|
#           example.metadata[:response][:content] = {
#             'application/json' => {
#               example: JSON.parse(response.body, symbolize_names: true)
#             }
#           }
#         end
#         run_test!
#       end
#     end

#     delete('delete location') do
#       response(200, 'successful') do
#         let(:id) { '123' }

#         after do |example|
#           example.metadata[:response][:content] = {
#             'application/json' => {
#               example: JSON.parse(response.body, symbolize_names: true)
#             }
#           }
#         end
#         run_test!
#       end
#     end
#   end
# end
