name "osx-nsm"
description "This role is specific to machines require the software loadset for the Natural Sciences & Mathematics"

run_list  "role[osx-classlab]",
          "recipe[ccp4::mac]",
          "recipe[xorg_xquartz::mac]",
          "recipe[python::mac]", 
          #"recipe[schrodinger_pymol::mac]",
          "recipe[atgc_phyml::mac]",
          "recipe[eclipse::mac]", 
          "recipe[aquamacs_emacs::mac]", 
          "recipe[macvim::mac]",
          "recipe[tug_mactex::mac]",
          "recipe[smlnj::mac]",
          "recipe[mrbayes::mac]",
          "recipe[ncbi_cn3d::mac]",
          "recipe[graz_genesis::mac]",
          "recipe[simulation_curriculum_starry_night_pro::mac]",
          "recipe[synergy_kaleidagraph::mac]",
          #{}"recipe[wolfram_mathematica::mac]",
          "recipe[perkinelmer_chemdraw_pro::mac]"

# Set SuperCollider attribute for version determination
default_attributes("SuperCollider" => {"No-IDE" => true})