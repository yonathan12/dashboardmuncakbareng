<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

<a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url();?>user">
  <div class="sidebar-brand-icon rotate-n-15">
    <i class="fas fa-money-check-alt"></i>
  </div>
  <div class="sidebar-brand-text mx-3">MAJ</div>
</a>

<hr class="sidebar-divider">
    <?php
      $role_id = $this->session->userdata('role_id');
      $queryMenu = "SELECT d_user_menu.Id, d_user_menu.menu
                    FROM d_user_menu JOIN d_user_access_menu
                    ON d_user_menu.Id = d_user_access_menu.menu_id
                    WHERE d_user_access_menu.role_id = $role_id
                    ORDER BY d_user_menu.menu ASC
                    ";
      $menu = $this->db->query($queryMenu)->result_array();
    ?>

    <?php foreach ($menu as $m) : ?>
      <div class="sidebar-heading">
        <?= $m['menu']; ?>
      </div>
    <?php
    $menuId = $m['Id'];
      $querySubMenu = "SELECT *
                      FROM d_user_sub_menu JOIN d_user_menu
                      ON d_user_sub_menu.menu_id = d_user_menu.Id
                      WHERE d_user_sub_menu.menu_id = $menuId
                      AND d_user_sub_menu.is_active = 1 
                      ORDER BY d_user_sub_menu.title ASC
      ";
      $subMenu = $this->db->query($querySubMenu)->result_array();
    ?>
    <?php foreach($subMenu as $sm) :?>
      <?php if($title == $sm['title']) : ?>
      <li class="nav-item active">
      <?php else : ?>
      <li class="nav-item">
      <?php endif;?>

    <a class="nav-link" href="<?= base_url($sm['url']); ?>">
      <i class="<?= $sm['icon']; ?>"></i>
      <span><?= $sm['title']; ?></span></a>
    </li>

    <?php endforeach; ?>

  <hr class="sidebar-divider mt-3">
  <?php endforeach; ?>
 <!-- Nav Item - Charts -->
<li class="nav-item">
  <a class="nav-link pb-0" href="<?= base_url(); ?>auth/logout">
    <i class="fas fa-fw fa-fw fa-sign-out-alt"></i>
    <span>Logout</span></a>
</li>
<div class="text-center d-none d-md-inline">
  <button class="rounded-circle border-0" id="sidebarToggle"></button>
</div>
</ul>