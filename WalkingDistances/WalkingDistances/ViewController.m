//
//  ViewController.m
//  WalkingDistances
//
//  Created by Jakob Hartman on 1/16/14.
//  Copyright (c) 2014 WhirlingPanguins. All rights reserved.
//

#import "ViewController.h"
#import "Reachability.h"

//interface conatins the web view object webView
@interface ViewController ()
    @property (strong, nonatomic) IBOutlet UIWebView *webView;
@end

@implementation ViewController

// create a string with link to page.

- (void)viewDidLoad
{
    [super viewDidLoad];
     _webView.scrollView.scrollEnabled = NO;
    
   [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"betaMobileApp" ofType:@"html"]isDirectory:NO]]];
    
    //starts a timer.
    NSRunLoop* runLoop = [NSRunLoop currentRunLoop];
    
    //sets the date, that the timer starts at
    NSDate *now = [NSDate dateWithTimeIntervalSinceNow:1];
    
    //Creates a tier with the method of checkCurrentUrl method.
    NSTimer *checkURL = [[NSTimer alloc] initWithFireDate: now interval:2 target:self selector:@selector(checkCurrentUrl) userInfo:nil repeats:YES];
    
    //message to start timer.
    [runLoop addTimer:checkURL forMode:NSDefaultRunLoopMode];
    
    
    
    //uses reachablility class to check if interent is connected.
    //tries to connect to google.com
    internetReachable = [Reachability reachabilityWithHostname:@"www.google.com"];
    
    // Internet is not reachable
    internetReachable.unreachableBlock = ^(Reachability*reach)
    {
        // Update the UI on the main thread
        dispatch_async(dispatch_get_main_queue(), ^{
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No network connection"
                                                               message:@"You must be connected to the internet to use this app."
                                                               delegate:nil
                                                      cancelButtonTitle:@"OK"
                                                      otherButtonTitles:nil];
                [alert show];
        });
    };
    
    [internetReachable startNotifier];
	// Do any additional setup after loading the view, typically from a nib.
    
    [super viewDidLoad];
}
NSInteger count = 0;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//checks if current url of webview, and if its different then the main it will open that page in the safari app.

-(void)checkCurrentUrl
{
    //stores the current url into string.
    NSString *currentURL = _webView.request.URL.absoluteString;
    //if currentURL doesnt match the string then it opens that url and goes back to the original
    if (![currentURL  isEqualToString:@"file:///Users/Jakob/Documents/Trialanderror/projects/WalkingDistances/WalkingDistances/betaMobileApp.html"] ) {
        //opens safari with current url.
    
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:currentURL]];
        
        //Tells the webview to go back a page.
        [_webView goBack];
    }
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    
}


@end
