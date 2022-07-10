require "minitest/autorun"
require "mycompiler"

class MyCompilerTest < Minitest::Test
    def compile_ruby_function_to_js
        assert_equal "function f(x,z) { return add(x,z)};",
            MyCompiler.new(File.read('test/test_1.src')).compile
    end
    
    def compile_nested_function_to_js
        assert_equal "function f(x,z) { return add(10,add(x,z))};",
            MyCompiler.new(File.read('test/test_2.src')).compile
    end
    def compile_deep_nested_function_to_js
        assert_equal "function f(x,z) { return add(12,add(10,add(x,z)))};",
            MyCompiler.new(File.read('test/test_3.src')).compile
    end
end
