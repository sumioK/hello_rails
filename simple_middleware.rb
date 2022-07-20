class SimpleMiddleware
    def initialize(app)
        puts "*" * 50
        puts "*#{self.class}initialize(app = #{app.class})"
        puts "*" * 50
        @app = app

    end

    def call(env)
        status,headers, bosy = @app.call(env)
        @app = app
        puts "*" * 50
        puts "*#{self.class}call(body = #{body})"
        puts "*" * 50
        return [status, headers, bosy]
    end
end