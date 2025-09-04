//
//  FactViewController.m
//  SabiasQue
//
//  Created by Francisco Jean on 04/09/25.
//

#import "FactViewController.h"

@interface FactViewController ()

@property (nonatomic, strong) NSArray *scienceFacts;
@property (nonatomic, strong) NSArray *cultureFacts;
@property (nonatomic, strong) NSArray *historyFacts;
@property (nonatomic, assign) NSInteger lastIndex;

@end

@implementation FactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scienceFacts = @[
        @"¿Sabías que el corazón de una ballena azul puede pesar más de 180 kg?",
        @"¿Sabías que los pulpos tienen tres corazones y su sangre es azul?",
        @"¿Sabías que la luz del Sol tarda ~8 minutos en llegar a la Tierra?",
        @"¿Sabías que los árboles se comunican por redes subterráneas de hongos?",
        @"¿Sabías que la Vía Láctea y Andrómeda colisionarán en unos 4 mil millones de años?",
        @"¿Sabías que un rayo puede calentar el aire a más de 30,000 °C?",
        @"¿Sabías que el ADN humano mide ~2 metros si lo estiras de una sola célula?",
        @"¿Sabías que las abejas pueden reconocer rostros humanos?",
        @"¿Sabías que Marte tiene el volcán más grande del sistema solar: el Olympus Mons?",
        @"¿Sabías que el vidrio es un líquido superenfriado muy viscoso?",
        @"¿Sabías que las jirafas casi no emiten sonidos audibles para nosotros?",
        @"¿Sabías que el cerebro consume alrededor del 20% de la energía del cuerpo?",
        @"¿Sabías que los murciélagos son los únicos mamíferos capaces de volar de forma sostenida?",
        @"¿Sabías que el grafeno es más fuerte que el acero y extremadamente ligero?",
        @"¿Sabías que las bananas son radiactivas por su contenido de potasio-40?"
    ];
    
    self.cultureFacts = @[
        @"¿Sabías que la Mona Lisa no tiene cejas ni pestañas?",
        @"¿Sabías que el ajedrez es uno de los juegos más antiguos que aún se practica?",
        @"¿Sabías que los emojis se consideran parte del patrimonio cultural digital?",
        @"¿Sabías que el alfabeto moderno deriva en gran parte del fenicio?",
        @"¿Sabías que la biblioteca de Alejandría fue uno de los mayores centros de conocimiento antiguo?",
        @"¿Sabías que el haiku japonés tradicional tiene 17 sílabas (5-7-5)?",
        @"¿Sabías que Shakespeare inventó o popularizó cientos de palabras en inglés?",
        @"¿Sabías que el tango nació en los barrios portuarios del Río de la Plata?",
        @"¿Sabías que el kimchi coreano tiene más de 100 variedades registradas?",
        @"¿Sabías que el Quijote es una de las obras más traducidas del mundo?",
        @"¿Sabías que el origami puede usarse para diseñar estructuras espaciales plegables?",
        @"¿Sabías que la palabra ‘museo’ viene del griego ‘mouseion’, templo de las musas?",
        @"¿Sabías que el flamenco mezcla influencias árabes, gitanas y andaluzas?",
        @"¿Sabías que la capoeira brasileña combina arte marcial, música y danza?",
        @"¿Sabías que la UNESCO protege expresiones culturales como patrimonio inmaterial?"
    ];
    
    self.historyFacts = @[
        @"¿Sabías que Cleopatra vivió más cerca del iPhone que de las pirámides?",
        @"¿Sabías que la Gran Muralla China no es visible desde la Luna?",
        @"¿Sabías que Julio César fue secuestrado por piratas y pidió subir su propio rescate?",
        @"¿Sabías que la pólvora se inventó en China en el siglo IX?",
        @"¿Sabías que la universidad más antigua en funcionamiento está en Fez (859 d.C.)?",
        @"¿Sabías que en 1666 el Gran Incendio de Londres destruyó miles de casas en 4 días?",
        @"¿Sabías que los vikingos llegaron a América siglos antes de Colón?",
        @"¿Sabías que el Imperio Romano usaba hormigón con ceniza volcánica muy duradero?",
        @"¿Sabías que Leonardo da Vinci escribió muchas notas en espejo (al revés)?",
        @"¿Sabías que el primer periódico diario se publicó en 1702 en Londres?",
        @"¿Sabías que la peste negra redujo la población europea en un tercio en el siglo XIV?",
        @"¿Sabías que la Ruta de la Seda conectó Asia y Europa por más de mil años?",
        @"¿Sabías que el código de Hammurabi es uno de los conjuntos de leyes más antiguos?",
        @"¿Sabías que el calendario gregoriano sustituyó al juliano en 1582?",
        @"¿Sabías que los faraones usaban sellos cilíndricos para autenticar documentos?"
    ];
    
    switch (self.category) {
        case 0: [self.categoryLabel setTitle:@"Ciencia" forState:UIControlStateNormal]; break;
        case 1: [self.categoryLabel setTitle:@"Cultura" forState:UIControlStateNormal]; break;
        case 2: [self.categoryLabel setTitle:@"Historia" forState:UIControlStateNormal]; break;
        default: [self.categoryLabel setTitle:@"" forState:UIControlStateNormal];
    }
    
    NSArray *selectedFacts;
    switch (self.category) {
        case 0: selectedFacts = self.scienceFacts; break;
        case 1: selectedFacts = self.cultureFacts; break;
        case 2: selectedFacts = self.historyFacts; break;
        default: selectedFacts = @[];
    }
    
    self.lastIndex = -1;
    if (selectedFacts.count > 0) {
        NSInteger randomIndex = arc4random_uniform((u_int32_t)selectedFacts.count);
        self.lastIndex = randomIndex;
        self.factLabel.text = selectedFacts[randomIndex];
    } else {
        self.factLabel.text = @"";
    }
}

@end
