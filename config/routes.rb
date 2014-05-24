App::Application.routes.draw do
  get  "/"                          => "main#root"                       ,as: "root"
  get  "/pic_category"              => "main#pic_category"               ,as: "pic_category"
  get  "/about"                     => "main#about"                      ,as: "about"
  get  "/contact"                   => "main#contact"                    ,as: "contact"
  get  "/alaska"                    => "main#alaska"                     ,as: "alaska"
  get  "/albq_balloon"              => "main#albq_balloon"               ,as: "albq_balloon"
  get  "/colorado"                  => "main#colorado"                   ,as: "colorado"
  get  "/fall_colors"               => "main#fall_colors"                ,as: "fall_colors"
  get  "/florida"                   => "main#florida"                    ,as: "florida"
  get  "/jax_air_show"              => "main#jax_air_show"               ,as: "jax_air_show"
  get  "/swooping"                  => "main#swooping"                   ,as: "swooping"
  get  "/test_pictures"             => "main#test_pictures"              ,as: "test_pictures"
  get  "/wild_flowers"              => "main#wild_flowers"               ,as: "wild_flowers"
  get  "/select_national_parks"     => "main#select_national_parks"      ,as: "select_national_parks"
  get  "/arches_np"                 => "main#arches_np"                  ,as: "arches_np"
  get  "/bent_fort_np"              => "main#bent_fort_np"               ,as: "bent_fort_np"
  get  "/bryce_canyon_np"           => "main#bryce_canyon_np"            ,as: "bryce_canyon_np"
  get  "/denali_np"                 => "main#denali_np"                  ,as: "denali_np"
  get  "/everglades_np"             => "main#everglades_np"              ,as: "everglades_np"
  get  "/grand_canyon_np"           => "main#grand_canyon_np"            ,as: "grand_canyon_np"
  get  "/mesa_verde_np"             => "main#mesa_verde_np"              ,as: "mesa_verde_np"
  get  "/rocky_mtn_np"              => "main#rocky_mtn_np"               ,as: "rocky_mtn_np"
  get  "/valley_forge_np"           => "main#valley_forge_np"            ,as: "valley_forge_np"
  get  "/yellowstone_np"            => "main#yellowstone_np"             ,as: "yellowstone_np"
  get  "/index"                     => "main#index"                      ,as: "index"
  get  "/lg_view_image_pic/:id"     => "main#lg_view_image_pic"          ,as: "lg_view_image_pic"
  get  "/lg_view_image_np/:id"      => "main#lg_view_image_np"           ,as: "lg_view_image_np"
  get  "/lg_view_image_so/:id"      => "main#lg_view_image_so"           ,as: "lg_view_image_so"
  get  "/special_occasions"         => "main#special_occasions"          ,as: "special_occasions"
  get  "/admin"                     => "main#admin"                      ,as: "admin"
  get  "/so_login"                  => "main#so_login"                   ,as: "so_login"
  post "/so_login"                  => "main#so_login_post"              ,as: "so_login_post"
  get  "/admin_login"               => "main#admin_login"                ,as: "admin_login"
  post "/admin_login"               => "main#admin_login_post"           ,as: "admin_login_post"
  get  "/blog_login"                => "blog#blog_login"                 ,as: "blog_login"
  post "/blog_login"                => "blog#blog_login_post"            ,as: "bog_login_post"
  get  "/blog"                      => "blog#blog"                       ,as: "blog"
end
  