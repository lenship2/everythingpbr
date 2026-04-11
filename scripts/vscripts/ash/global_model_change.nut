pbrcube_models <- ["models/pbr/test_chambers/s2_cube.mdl", "models/pbr/test_chambers/l2_cube.mdl", "models/pbr/test_chambers/laser/l2_redirection_cube.mdl", "models/pbr/test_chambers/l2_sphere.mdl", "models/pbr/test_chambers/underground/l2_antique_cube.mdl", "models/pbr/test_chambers/laser/l2_schrodinger_cube.mdl"] 

// DEFINE CUBE MODELS HERE IN THE FORMAT: [regular, companion (should be same model as regular), laser/reflective, ball/sphere, oldap/anqiue, schrodinger]

function PBRCubesOverride()
{
    local cube = null
    while(cube = Entities.FindByClassname(cube, "prop_weighted_cube")) {    
        cube.SetModel(pbrcube_models[cube.GetCubeType()])
    }
}