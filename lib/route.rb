require File.join(File.dirname(__FILE__), '../', 'app', 'contollers', 'application_controller')

class Route
    attr_accessor :klass_name, :path, :instance_method
    
    def initialize route_array
        @path  = route_array.first
        @klass_name  =  route_array.second
        @instance_method = route_array.third
        handle_requires
    end

    def klass
        Module.const_get(klass_name)
    end

    def execute(env)
        klass.new(env).send(instance_method.to_sym)
    end
    
    def handle_requires
        require File.join(File.dirname(__FILE__), '../', 'app', 'contollers', klass_name.downcase + '.rb')
    end
end
