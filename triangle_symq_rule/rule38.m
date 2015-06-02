function [ x, y, w ] = rule38 ( )

%*****************************************************************************80
%
%% RULE38 returns the rule of degree 38.
%
%  Discussion:
%
%    Order 38 (267 pts)
%    1/6 data for 38-th order quadrature with 51 nodes.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    26 June 2014
%
%  Author:
%
%    Original FORTRAN77 version by Hong Xiao, Zydrunas Gimbutas.
%    This MATLAB version by John Burkardt.
%
%  Parameters:
%
%    Output, real X(*), Y(*), the coordinates of the nodes.
%
%    Output, real W(*), the weights.
%
  x = [ ...
       0.00000000000000000000000000000000, ...
      -0.38017185669450718257184066048831, ...
       0.00000000000000000000000000000000, ...
      -0.64388710735877083783416282124044, ...
       0.00000000000000000000000000000000, ...
      -0.91532058656497198671471150555246, ...
      -0.78472586424382273509683032899814, ...
      -0.99643590876239824517695137609747E-01, ...
      -0.41959606976158875740459488513640, ...
      -0.90709796569683108888235443082745, ...
       0.00000000000000000000000000000000, ...
      -0.31006871991021548748342323634250, ...
       0.00000000000000000000000000000000, ...
      -0.55804669150858522261961383013874, ...
      -0.23391252232540839712384994231650, ...
      -0.84191118240738060068532375730213, ...
      -0.53335107942756502512226568928935, ...
       0.00000000000000000000000000000000, ...
      -0.47291121570664026204475560732776, ...
       0.00000000000000000000000000000000, ...
      -0.72785722160360793350295551572105, ...
      -0.49855221184504938895139013840901, ...
      -0.54925671022190333222562093502386, ...
      -0.44686452030684963518394665288121, ...
      -0.61953974615995630087673220975416, ...
      -0.62648548681833042070303279649082, ...
      -0.67197877643540341416126929672985, ...
      -0.41335885239677796031890142990207, ...
      -0.25346463551838318570541525347334, ...
      -0.69573906885921915728856348088559, ...
       0.00000000000000000000000000000000, ...
       0.00000000000000000000000000000000, ...
      -0.38636910084523127223009550231297, ...
       0.00000000000000000000000000000000, ...
      -0.33658056387534557504382625690100, ...
       0.00000000000000000000000000000000, ...
       0.00000000000000000000000000000000, ...
      -0.87843541547485157244218200006356E-01, ...
      -0.85039120745944430746903967678568E-01, ...
      -0.84482245043808986751701243019350, ...
      -0.23361755931365234413765013776635, ...
      -0.84712737676102112301556527859528E-01, ...
      -0.30228200141771618391567732367974, ...
      -0.17281546621195622411401122869585, ...
       0.00000000000000000000000000000000, ...
      -0.16293712483088177437982114203995, ...
      -0.96366288222453288706533712520860, ...
      -0.25373681319593324282811397911950, ...
      -0.15001122172665224948595080689653, ...
      -0.75738968673027804907685927008861, ...
      -0.76664557469367476317397564232357 ];
  y = [ ... ...
      -0.43557198951312314492372904354947, ...
      -0.48676901082212536688741381364887, ...
      -0.20761979727194592905202199533091, ...
      -0.40573908618816893429385257585425, ...
      -0.46713152507187031292455455867277, ...
      -0.57377461458362246990957759635438, ...
      -0.51373173879402534769265540295112, ...
      -0.18600062141874083923383175875705, ...
      -0.52071016051529641903708216132188, ...
      -0.55471321549486532778867447040816, ...
       0.10940631576403911595307511796686E+01, ...
      -0.44966761533984648209489215134754, ...
       0.65074263823985079600667000386443, ...
      -0.57266700781635460274026638478223, ...
      -0.19775702200253896797934274544035, ...
      -0.54145730613515149557950920114789, ...
      -0.40306833625953531748818108675870, ...
       0.11441448170815456331207001620839E+01, ...
      -0.45699037409328199099206927354961, ...
       0.95123251126820600706088723471076, ...
      -0.45891721551063656195753394995739, ...
      -0.55254653716155075726305443495177, ...
      -0.50985596144990674077481289770119, ...
      -0.31858800667671763885666636445179, ...
      -0.46956784465504062728813836459427, ...
      -0.54683284777191952223714461151061, ...
      -0.57051260429903260207066265388305, ...
      -0.57227331670065037577673308824224, ...
      -0.57253866498558213253629629823534, ...
      -0.51790249949511235759270582432134, ...
       0.10252000964578561221300395045227E+01, ...
       0.16568297477093707545432698117652, ...
      -0.38903470904529446210903397210864, ...
      -0.30137742399876299186434574375181, ...
      -0.55145765476506148518201936114546, ...
       0.43524327738107859551153511292157, ...
      -0.55031736573002371942681152441060, ...
      -0.51270307120416046582718931909697, ...
      -0.57221773164738784945037090035811, ...
      -0.57007049747206373797913896032469, ...
      -0.37942157065303255897465810627733, ...
      -0.38182236985847584746876547919066, ...
      -0.29988148386350240360102081846111, ...
      -0.55110081638940231919507254561012, ...
      -0.80478911639902275408961840267122E-01, ...
      -0.45603365215790654433852111390607, ...
      -0.57138683817501246632052994868585, ...
      -0.51210804711263968662217366453516, ...
      -0.28983256020905742573818686292564, ...
      -0.55650931396143459003034201519312, ...
      -0.57683373408531432268827479475092 ];
  w = [ ... ...
       0.20820056888817244409479850097856E-02, ...
       0.32704508067578457571759580719843E-02, ...
       0.38571880274891361301769303800511E-02, ...
       0.48648533235668256195606333219063E-02, ...
       0.25862281661138416465531703526730E-02, ...
       0.45760472370487254239987376847120E-03, ...
       0.27293096561559624215019181897416E-02, ...
       0.97008356269688197848677107128175E-02, ...
       0.41132552385450103084160052046070E-02, ...
       0.11925949669960168440297068927338E-02, ...
       0.46027699181420719864281441155474E-03, ...
       0.65746158861474390224655188929927E-02, ...
       0.34233865355919380271157248680394E-02, ...
       0.12182478611229097763044222506603E-02, ...
       0.10899944052496863003448798018155E-01, ...
       0.20225984312508308593119096478526E-02, ...
       0.68735133627418967754698853779575E-02, ...
       0.81627294555617067479425317996855E-04, ...
       0.62097541317418902117276820215705E-02, ...
       0.16492922508404918879311251694587E-02, ...
       0.47406525818327189115185327580062E-02, ...
       0.31194776872854070583692733919320E-02, ...
       0.47516718437350612556088524941901E-02, ...
       0.86077222408115445210495576178103E-02, ...
       0.53685573833170132885235134226360E-02, ...
       0.30607129436300396172490108601521E-02, ...
       0.13236335711461000683695750999937E-02, ...
       0.15044854999557370818299509578742E-02, ...
       0.15641030619522655360987944091216E-02, ...
       0.38234831557293443707212103289394E-02, ...
       0.11236312245926095551123994880102E-02, ...
       0.59128635891188981067020381172796E-02, ...
       0.83264254588952817413009549759947E-02, ...
       0.52233031594939664397142395297434E-02, ...
       0.35872048025524414964720174624147E-02, ...
       0.50988347474248667740715631552740E-02, ...
       0.19977329387543947701265023377701E-02, ...
       0.59507492016878607729260830919901E-02, ...
       0.16966487646916691851186225113499E-02, ...
       0.10748164815034162115762746127887E-02, ...
       0.91437918154557240969683908824785E-02, ...
       0.93423065980415739850720220419123E-02, ...
       0.10123136480463870914740930355634E-01, ...
       0.38498047327371845578787166272780E-02, ...
       0.65645729720023034651464119787433E-02, ...
       0.79710615214023377342492350020114E-02, ...
       0.43918131172356037933829206838480E-03, ...
       0.59611163393367252996223811895425E-02, ...
       0.11058361133847283290469370750187E-01, ...
       0.23833729931365671861610978427443E-02, ...
       0.38466956567350313890347038963597E-03 ];

  return
end