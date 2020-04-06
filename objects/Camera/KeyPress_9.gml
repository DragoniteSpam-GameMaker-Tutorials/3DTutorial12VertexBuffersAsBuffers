/// @description Insert description here

var vertex_data = buffer_create_from_vertex_buffer(merry, buffer_fixed, 1);
/*
for (var i = 0; i < buffer_get_size(vertex_data); i += 36) {
    var xx = buffer_peek(vertex_data, i + 0, buffer_f32);
    var yy = buffer_peek(vertex_data, i + 4, buffer_f32);
    var zz = buffer_peek(vertex_data, i + 8, buffer_f32);
    
    buffer_poke(vertex_data, i + 0, buffer_f32, xx + random_range(-2, 2));
    buffer_poke(vertex_data, i + 4, buffer_f32, yy + random_range(-2, 2));
    buffer_poke(vertex_data, i + 8, buffer_f32, zz + random_range(-2, 2));*
}

vertex_delete_buffer(merry);
merry = vertex_create_buffer_from_buffer(vertex_data, vertex_format);
*/

var filename = get_save_filename("Vertex buffers|*.vbuff", "merry.vbuff");
buffer_save(vertex_data, filename);

buffer_delete(vertex_data);