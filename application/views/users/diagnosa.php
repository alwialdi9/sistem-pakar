      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>DIAGNOSA</h1>
          </div>

          <div class="section-body">

          <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h4>Diagnosa</h4>
                  </div>
                  <div class="card-body">

                  <div class="section-title mt-0">Pilihlah perilaku yang sesuai dengan anak anda. Boleh lebih dari 1</div>

                  <form action="<?= base_url('user/diagnosa') ?>" method="post" id="indikasi">

                  <?php 
                  $i = 1;
                  foreach ($indikasi as $in):?>
                  <div class="custom-control custom-checkbox">
                      <input type="checkbox" class="custom-control-input" id="customCheck<?= $i ?>" value="<?= $in['kondisi'] ?>" name="kondisi[]">
                      <label class="custom-control-label" for="customCheck<?= $i ?>"><?= $in['kondisi'] ?></label>
                    </div>

                <?php
                $i++;
                  endforeach;

                  ?>
                  <button type="submit" name="submit" class="btn btn-primary mt-3">Cek Kecerdasan</button>

                  </form>

                    

                  </div>
                </div>
              </div>
            </div>

            <?php 
            if ($hasil == 'no result') {?>

            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h4>Hasil Diagnosa</h4>
                  </div>
                  <div class="card-body">

                  <div class="section-title mt-0">Hasil Diagnosa</div>
                  <ul class="list-group">
                      <li class="list-group-item">Jumlah Kondisi : 0</li>
                      <li class="list-group-item">Jenis Kecerdasan : Belum ada data </li>
                    </ul>
                    <div class="mt-3">Deskripsi : Belum ada data </div>
                    
                  </div>
                </div>
              </div>
            </div>
               
               <?php
            } else{?>
            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h4>Hasil Diagnosa</h4>
                  </div>
                  <div class="card-body">

                  <?php 
                  foreach ($hasil as $h):?>
                  <div class="section-title mt-0">Hasil Diagnosa</div>
                  <ul class="list-group">
                      <li class="list-group-item">Jumlah Kondisi : <?= $x; ?></li>
                      <li class="list-group-item">Jenis Kecerdasan : <?= $h['kecerdasan']; ?> </li>
                    </ul>
                    <div class="mt-3">Deskripsi : <?= $h['deskripsi'] ?> </div>

                  <?php
                  endforeach;
                  ?>

                  <!-- <div class="section-title mt-0">Hasil Diagnosa</div>
                  <ul class="list-group">
                      <li class="list-group-item">Jumlah Kondisi : </li>
                      <li class="list-group-item">Jenis Kecerdasan : </li>
                    </ul>
                    <div class="mt-3">Deskripsi : </div> -->
                    
                  </div>
                </div>
              </div>
            </div>

            <?php
            }
            ?>

          </div>
        </section>
      </div>

      <!-- footer -->
      <footer class="main-footer">
        <div class="footer-left">
          Sistem Pakar Minat Bakat
        </div>
        <!-- <div class="footer-right">
          2.3.0
        </div> -->
      </footer>
    </div>
  </div>