<div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>Tabel Kecerdasan</h1>
            
          </div>

          <div class="section-body">
            <h2 class="section-title">Daftar Kecerdasan</h2>
            <p class="section-lead">sumber deksripsi : http://www.zoneknowledge.com/2017/11/8-macam-kecerdasan-manusia-pada.html</p>

            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h4>Basic DataTables</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped table-hover" id="table-1">
                        <thead>
                          <tr>
                            <th>No. </th>
                            <th>Kecerdasan</th>
                            <th>Deskripsi</th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php
                        $i = 1;
                        foreach ($tabel as $t):?>
                            
                            <tr>
                              <td>
                              <?= $i ?>
                              </td>
                              <td><?= $t['kecerdasan'] ?></td>
                              <td><?= $t['deskripsi'] ?></td>
                              
                            </tr>
                    <?php 
                    $i++; 
                endforeach; 
                  ?>

                          
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
          </div>
        </section>
      </div>