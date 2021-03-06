-record(query, {
            schema :: q:schema(),
            where :: qast:ast_node() | undefined,
            data = []:: q:data(),
            select = #{} :: q:select(),
            set = #{} :: q:set(),
            tables = [] :: [{binary(), reference()}],
            joins = [] :: [{q:join_type(), qast:ast_node(), qast:ast_node()}],
            group_by = [] :: [qast:ast_node()],
            order_by = [] :: q:order(),
            limit :: non_neg_integer() | undefined,
            offset :: non_neg_integer() | undefined
         }).
