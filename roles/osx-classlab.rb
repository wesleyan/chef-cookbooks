name "osx-classlab"
description "Base role for OS X deployment in Labs and Classrooms"

          # Include base role.
run_list  "role[osx-base]",
          # Include class/lab specific recipes.
          "recipe[cls_labstats::mac]",
          "recipe[blackboard_xythosdrive::mac]",
          "recipe[printers::mac]", 
          #"recipe[desktop_picture::mac]",
          "recipe[artstor_oiv::mac]",
          "recipe[chnm_zotero::mac]",
          "recipe[thomson_reuters_endnote::mac]",
          # NSM
          "recipe[ccp4::mac]",
          "recipe[xorg_xquartz::mac]",
          "recipe[python::mac]", 
          "recipe[schrodinger_pymol::mac]",
          "recipe[atgc_phyml::mac]",
          "recipe[autodock_vina::mac]",
          "recipe[eclipse::mac]", 
          "recipe[aquamacs_emacs::mac]", 
          "recipe[macvim::mac]",
          "recipe[tug_mactex::mac]",
          "recipe[smlnj::mac]",
          "recipe[mrbayes::mac]",
          "recipe[mathworks_matlab::mac]",
          "recipe[ncbi_cn3d::mac]",
          "recipe[simulation_curriculum_starry_night_pro::mac]",
          "recipe[synergy_kaleidagraph::mac]",
          "recipe[ucsf_chimera::mac]",
          "recipe[uiuc_vmd::mac]",
          "recipe[vernier_logger_pro::mac]",
          "recipe[wolfram_mathematica::mac]",
          "recipe[perkinelmer_chemdraw_pro::mac]",
          # SS
          "recipe[gnu_r::mac]",
          "recipe[ibm_spss::mac]",
          "recipe[muthen_mplus::mac]",
          "recipe[psyscope::mac]",
          "recipe[rstudio::mac]",
          "recipe[statacorp_stata::mac]",
          "recipe[sas_institute_jmp::mac]",
          # CFA
          "recipe[google_earth::mac]",
          "recipe[turning_technologies_turningpoint::mac]",
          "recipe[handbrake::mac]",
          "recipe[cycling74_max::mac]", 
          "recipe[adobe_illustrator_cs6::mac]",
          "recipe[adobe_indesign_cs6::mac]",
          "recipe[trimble_sketchup::mac]",
          "recipe[audacity::mac]",
          "recipe[makemusic_finale::mac]",
          "recipe[adobe_photoshop_cs6::mac]",
          "recipe[finalize::mac]"

default_attributes(
"prepare" => {
  # Turn on bind-to-domain 
  "bind" => true, 
  # Turn on delete inactive users and set the timeframe to 15 days.
  "inactivity" => 15
  })