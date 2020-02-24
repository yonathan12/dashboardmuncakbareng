<?php 
function is_logged_in()
{
    $lib = get_instance(); //memanggil library CI
    if (!$lib->session->userdata('email')) {
        redirect('auth');
    } else {
        $role_id = $lib->session->userdata('role_id');
        $menu = $lib->uri->segment(1);

        $queryMenu = $lib->db->get_where('d_user_menu',['menu' => $menu])->row_array();
        $menuId = $queryMenu['Id'];

        $querySubMenu = $lib->db->get_where('d_user_sub_menu',['menu_id' => $menuId])->row_array();
        $subMenuId = $querySubMenu['Id'];

        // $userAccess = $lib->db->get_where('d_user_access_menu', [
        //     'role_id' => $role_id, 
        //     'menu_id' => $menuId
        //     ]);

        $userAccess = $lib->db->query("
            SELECT a.Id, a.role_id, a.menu_id, b.menu, c.title
            FROM d_user_access_menu a
            LEFT JOIN d_user_menu b
            ON a.menu_id = b.Id
            INNER JOIN d_user_sub_menu c
            ON b.Id = c.menu_id
            WHERE a.role_id = $role_id
        ");
        if ($userAccess->num_rows() < 1) {
            redirect('auth/blocked');
        }
    }
}

function check_access($role_id,$menu_id)
{
    $lib = get_instance();

    $lib->db->where('role_id',$role_id);
    $lib->db->where('menu_id',$menu_id);
    $result = $lib->db->get('d_user_access_menu');
    
    if ($result->num_rows()>0) {
        return "checked='checked'";
    }
}
?>