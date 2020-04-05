#import "ViewController.h"


@interface ViewController()

@property (strong, nonatomic) IBOutlet UITextField *textFieldRed;
@property (strong, nonatomic) IBOutlet UITextField *textFieldGreen;
@property (strong, nonatomic) IBOutlet UITextField *textFieldBlue;
@property (strong, nonatomic) IBOutlet UIButton *buttonProcess;
@property (strong, nonatomic) IBOutlet UILabel *labelRed;
@property (strong, nonatomic) IBOutlet UILabel *labelGreen;
@property (strong, nonatomic) IBOutlet UILabel *labelBlue;
@property (strong, nonatomic) IBOutlet UILabel *labelResultColor;
@property (strong, nonatomic) IBOutlet UIView *viewResultColor;

@end





@implementation ViewController

#pragma mark -

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupResultViewColorView];
    [self setupLabels];
    [self setupTextFields];
    [self setupButton];
    [self setupAccessibility];
    
}


// Setup resultViewColorView
-(void)setupResultViewColorView {
    self.viewResultColor = [[UIView alloc]initWithFrame:CGRectMake(140, 95, 200, 40)];
    self.viewResultColor.backgroundColor = [UIColor darkGrayColor];
    [self.view addSubview:self.viewResultColor];
}

// Setup labels
-(void)setupLabels {
    // labelResultColor
    self.labelResultColor = [[UILabel alloc]initWithFrame:CGRectMake(30, 100, 90, 30)];
    [self.labelResultColor setText:@"Color"];
    self.labelResultColor.textColor = [UIColor blackColor];
    
    [self.view addSubview:self.labelResultColor];
    
    // labelRed
    self.labelRed = [[UILabel alloc]initWithFrame:CGRectMake(30, 170, 70, 30)];
    [self.labelRed setText:@"RED"];
    self.labelRed.textColor = [UIColor redColor];
    [self.view addSubview:self.labelRed];

    // labelGreen
    self.labelGreen = [[UILabel alloc]initWithFrame:CGRectMake(30, 240, 70, 30)];
    [self.labelGreen setText:@"GREEN"];
    self.labelGreen.textColor = [UIColor greenColor];
    [self.view addSubview:self.labelGreen];
    
    // labelBlue
    self.labelBlue = [[UILabel alloc]initWithFrame:CGRectMake(30, 310, 70, 30)];
    [self.labelBlue setText:@"BLUE"];
    self.labelBlue.textColor = [UIColor blueColor];
    [self.view addSubview:self.labelBlue];


}

// Setup textFields
-(void)setupTextFields {
    // textFieldRed
    self.textFieldRed = [[UITextField alloc]initWithFrame:CGRectMake(120, 170, 220, 30)];
    [self.textFieldRed setPlaceholder:@"0..255"];
    self.textFieldRed.borderStyle = round(3);
    [self.view addSubview:self.textFieldRed];
    
    // textFieldGreen
    self.textFieldGreen = [[UITextField alloc]initWithFrame:CGRectMake(120, 240, 220, 30)];
    [self.textFieldGreen setPlaceholder:@"0..255"];
    self.textFieldGreen.borderStyle = round(3);
    [self.view addSubview:self.textFieldGreen];
    
    // textFieldBlue
    self.textFieldBlue = [[UITextField alloc]initWithFrame:CGRectMake(120, 310, 220, 30)];
    [self.textFieldBlue setPlaceholder:@"0..255"];
    self.textFieldBlue.borderStyle = round(3);
    [self.view addSubview:self.textFieldBlue];
}


// Setup button
-(void)setupButton {
    self.buttonProcess = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 2 - 35, 380, 70, 30)];
    [self.buttonProcess setTitle:@"Process" forState:UIControlStateNormal];
    [self.buttonProcess setTitleColor:UIColor.systemBlueColor forState:UIControlStateNormal];
    [self.buttonProcess addTarget:self action:@selector(greatMixer) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.buttonProcess];
}


// Great Mixer
-(void)greatMixer {
    
}

// Accessibility
-(void)setupAccessibility{
    self.view.accessibilityIdentifier = @"mainView";
    self.textFieldRed.accessibilityIdentifier = @"textFieldRed";
    self.textFieldGreen.accessibilityIdentifier = @"textFieldGreen";
    self.textFieldBlue.accessibilityIdentifier = @"textFieldBlue";
    self.buttonProcess.accessibilityIdentifier = @"buttonProcess";
    self.labelRed.accessibilityIdentifier = @"labelRed";
    self.labelGreen.accessibilityIdentifier = @"labelGreen";
    self.labelBlue.accessibilityIdentifier = @"labelBlue";
    self.labelResultColor.accessibilityIdentifier = @"labelResultColor";
    self.viewResultColor.accessibilityIdentifier = @"viewResultColor";
}

@end
