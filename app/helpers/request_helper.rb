require "uri"
require "net/http"

module RequestHelper 
    def get_request(url)
        token = "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyZGU0N2EyMmRhYzQ1MTI1ZGZlMzg1MTc4YWFjMjQwZSIsInN1YiI6IjY0ZWI3NTU4NDU4MTk5MDEwMDk5NGQ4YiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.GKXypMptPrGCv3UyoBeMIbiBfmZJxE4S3P5x9E_MYVs"
        url = URI(url)

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true

        request = Net::HTTP::Get.new(url)
        request["accept"] = "application/json"
        request["Authorization"] = token

        response = http.request(request)
        JSON.parse(response.read_body, object_class: OpenStruct)
    end
end