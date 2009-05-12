#import "YouTubeTestController.h"

@implementation YouTubeTestController

- (void)dealloc {
  [youTubeView release];
  [super dealloc];
}

- (void)loadView {
  self.view = [[[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame] autorelease];
  self.view.backgroundColor = [UIColor redColor];
    
  youTubeView = [[TTYouTubeView alloc] initWithURL:@"http://www.youtube.com/watch?v=g8thp78oXsg"];
  youTubeView.center = CGPointMake(self.view.width/2, 150);
  [self.view addSubview:youTubeView];
  
  UILabel* label = [[[UILabel alloc] initWithFrame:CGRectZero] autorelease];
  label.text = @"TTYouTubeView does not work in the iPhone Simulator";
  label.frame = CGRectMake(10, 10, 300, 30);
  label.backgroundColor = [UIColor redColor];
  label.textColor = [UIColor whiteColor];
  label.font = [UIFont boldSystemFontOfSize:11];
  label.textAlignment = UITextAlignmentCenter;
  [self.view addSubview:label];
}

///////////////////////////////////////////////////////////////////////////////////////////////////

@end
