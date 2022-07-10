require 'mycompiler/structures'
class MyCompiler::Generator

    def generate(node)
        case node
        when Structures::DefNode
            generate_def(node)
        when Structures::CallNode
            # "THIS IS CALL NODE"
            "%s(%s)" % [
                node.name,
                node.arg_exprs.map{|arg_expr| generate(arg_expr)}.join(','),
            ]
        when Structures::IntegerNode
            # generate_integer(node)
            node.value
        when Structures::VarRefNode
            # generate_var_ref(node)
            # node.values.join(',')
            node.value
        else
            raise RuntimeError.new("Unsupported node type #{node.class}")
        end
    end

    def generate_def(node)
        "function %s(%s) { return %s};" % [
            node.name,
            node.arg_names.join(','),
            generate(node.body)
        ]
    end

    def generate_integer(node)
        node.value
    end

    def generate_var_ref(node)
        node.name
    end


end
