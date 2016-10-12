defmodule ExCodeship do
    @moduledoc """
    An HTTP client for CodeShip
    """
    use HTTPoison.Base

    def process_url(endpoint) do
        "https://codeship.com/api/v1/" <> endpoint <> ".json?api_key="<> key
    end

    def process_response_body(body) do
        JSX.decode!(body)
    end


    def projects do
        get!("projects").body
    end
    
    def project(id) do
        get!("projects/#{id}").body
    end

    def restart_build(id) do
        request!(:post, "builds/#{id}/restart").body
    end 

    def key do
        Application.get_env(:codeship, :key) || System.get_env("CODESHIP_KEY")
    end
end
