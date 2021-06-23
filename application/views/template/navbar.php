<div id="app">
    <div class="main-wrapper">
      <div class="navbar-bg"></div>
      <nav class="navbar navbar-expand-lg main-navbar">
        <form class="form-inline mr-auto">
          <ul class="navbar-nav mr-3">
            <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>
            <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="fas fa-search"></i></a></li>
          </ul>
          
        </form>
        
      </nav>
      <div class="main-sidebar">
        <aside id="sidebar-wrapper">
          <div class="sidebar-brand">
            <a href="index.html">Sistem Pakar</a>
          </div>
          <div class="sidebar-brand sidebar-brand-sm">
            <a href="index.html">St</a>
          </div>
          <ul class="sidebar-menu">
          <li><a class="nav-link" href="<?php
          if ($title == "Sistem Pakar") {
              echo "#";
          }else{
              echo base_url('user');
          }
          ?>"><i class="fas fa-fw fa-home"></i> <span>Beranda</span></a></li>

          <li><a class="nav-link" href="<?php
          if ($title == "Diagnosa") {
              echo "#";
          }else{
              echo base_url('user/diagnosa');
          }
          ?>"><i class="fas fa-fw fa-stethoscope"></i> <span>Diagnosa</span></a></li>

          <li><a class="nav-link" href="<?php
          if ($title == "Tabel Kecerdasan") {
              echo "#";
          }else{
              echo base_url('user/kecerdasan');
          }
          ?>"><i class="fas fa-fw fa-brain"></i> <span>Tabel Kecerdasan</span></a></li>

          <li><a class="nav-link" href="<?php
          if ($title == "Tentang Kami") {
              echo "#";
          }else{
              echo base_url('user/about');
          }
          ?>"><i class="fas fa-fw fa-info-circle"></i> <span>Tentang</span></a></li>

          <!-- <div class="mt-4 mb-4 p-3 hide-sidebar-mini">
              <a href="<?= base_url('auth') ?>" class="btn btn-primary btn-lg btn-block btn-icon-split">
                <i class="fas fa-rocket"></i> Login
              </a>
            </div> -->
              
          </ul>
        </aside>
      </div>