//
//  ViewController.m
//  TestEmoji
//
//  Created by 9sky on 12-4-25.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textView;


- (void)printString:(const char *)string{
   int i = 0;
    while (string && string[i]) {
        printf("%d = %02x\n",i,string[i]);
        ++i;
    } 
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    if ([text isEqualToString:@"\U0001F603"]) {
        NSLog(@"Equal");
    }
    NSLog(@"%@",text);
    return YES;
}


- (IBAction)buttonPrintClick:(id)sender {
    NSString *content = textView.text;
    NSLog(@"%@",content);
    NSLog(@"NSASCIIStringEncoding ");
    const char *string = [content cStringUsingEncoding:NSUnicodeStringEncoding];
    [self printString:string];
    
  //  NSLog(@"UTF8String ");
  //  [self printString:[content UTF8String]];
}
- (IBAction)buttonUnicode60Click:(id)sender {
    NSString *emoji[] = {
      // @" \u2196",
       // @"\uE237 ",
        @"\U0001F603",
        @"\uE057",//U0001F603
   //     [NSString stringWithFormat:@"%C%C",0xd83d, 0xde03],
        [NSString stringWithFormat:@"%C%C",0x0031, 0x20E3],
        [NSString stringWithFormat:@"%C%C",0x0032, 0x20E3],
        [NSString stringWithFormat:@"%C%C",0x0033, 0x20E3],
        [NSString stringWithFormat:@"%C%C",0x0034, 0x20E3],
        [NSString stringWithFormat:@"%C%C",0x0035, 0x20E3],
        [NSString stringWithFormat:@"%C%C",0x0036, 0x20E3],
        [NSString stringWithFormat:@"%C%C",0x0037, 0x20E3],
        [NSString stringWithFormat:@"%C%C",0x0038, 0x20E3],
        [NSString stringWithFormat:@"%C%C",0x0039, 0x20E3],
        [NSString stringWithFormat:@"%C%C",0x0030, 0x20E3],
        [NSString stringWithFormat:@"%C%C",0x0023, 0x20E3],
    };
    NSInteger num = sizeof(emoji)/sizeof(NSString *);
    NSMutableString *string = [NSMutableString stringWithCapacity:num];
    for (int i = 0; i < num; ++i) {
        [string appendString:emoji[i]];
    }
   // textView.text =  string;
    NSString *em = @"\U0001F603";
    NSString *encode = [em stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *decode = [encode stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding]; 
    textView.text = decode;
}

- (IBAction)buttonAddClick:(id)sender {
    NSString *emoji[] = {
        //符号
        @"\uE21c",@"\uE21d",@"\uE21e",@"\uE21f",@"\uE220",@"\uE221",@"\uE222",
        @"\uE223",@"\uE224",@"\uE225",@"\uE210",@"\uE232",@"\uE233",@"\uE235",
        @"\uE234",@"\uE236",@"\uE237",@"\uE238",@"\uE239",@"\uE23b",@"\uE23a",
        @"\uE23d",@"\uE23c",@"\uE24d",@"\uE212",@"\uE24c",@"\uE213",@"\uE214",
        @"\uE507",@"\uE203",@"\uE20b",@"\uE22a",@"\uE22b",@"\uE226",@"\uE227",
        @"\uE22c",@"\uE22d",@"\uE215",@"\uE216",@"\uE217",@"\uE218",@"\uE228",
        @"\uE151",@"\uE138",@"\uE139",@"\uE13a",@"\uE208",@"\uE14f",@"\uE20a",
        @"\uE434",@"\uE309",@"\uE315",@"\uE30d",@"\uE207",@"\uE229",@"\uE206",
        @"\uE205",@"\uE204",@"\uE12e",@"\uE250",@"\uE251",@"\uE14a",@"\uE149",
        @"\uE23f",@"\uE240",@"\uE241",@"\uE242",@"\uE243",@"\uE244",@"\uE245",
        @"\uE246",@"\uE247",@"\uE248",@"\uE249",@"\uE24a",@"\uE24b",@"\uE23e",
        @"\uE532",@"\uE533",@"\uE534",@"\uE535",@"\uE21a",@"\uE219",@"\uE21b",
        @"\uE02f",@"\uE024",@"\uE025",@"\uE026",@"\uE027",@"\uE028",@"\uE029",
        @"\uE02a",@"\uE02b",@"\uE02c",@"\uE02d",@"\uE02e",@"\uE332",@"\uE333",
        @"\uE24e",@"\uE24f",@"\uE537",
        
        //笑脸
        @"\uE415",@"\uE056",@"\uE057",@"\uE414",@"\uE405",@"\uE106",@"\uE418",@"\uE417",
        @"\uE40d",@"\uE40a",@"\uE404",@"\uE105",@"\uE409",@"\uE40e",@"\uE402",@"\uE108",
        @"\uE403",@"\uE058",@"\uE407",@"\uE401",@"\uE40f",@"\uE40b",@"\uE406",@"\uE413",
        @"\uE411",@"\uE412",@"\uE410",@"\uE107",@"\uE059",@"\uE416",@"\uE408",@"\uE40c",
        @"\uE11a",@"\uE10c",@"\uE32c",@"\uE32a",@"\uE32d",@"\uE328",@"\uE32b",@"\uE022",
        @"\uE023",@"\uE327",@"\uE329",@"\uE32e",@"\uE32f",@"\uE335",@"\uE334",@"\uE021",
        @"\uE336",@"\uE13c",@"\uE337",@"\uE020",@"\uE330",@"\uE331",@"\uE326",@"\uE03e",
        @"\uE11d",@"\uE05a",@"\uE00e",@"\uE421",@"\uE420",@"\uE00d",@"\uE010",@"\uE011",
        @"\uE41e",@"\uE012",@"\uE422",@"\uE22e",@"\uE22f",@"\uE231",@"\uE230",@"\uE427",
        @"\uE41d",@"\uE00f",@"\uE41f",@"\uE14c",@"\uE201",@"\uE115",@"\uE428",@"\uE51f",
        @"\uE429",@"\uE424",@"\uE423",@"\uE253",@"\uE426",@"\uE111",@"\uE425",@"\uE31e",
        @"\uE31f",@"\uE31d",@"\uE001",@"\uE002",@"\uE005",@"\uE004",@"\uE51a",@"\uE519",
        @"\uE518",@"\uE515",@"\uE516",@"\uE517",@"\uE51b",@"\uE152",@"\uE04e",@"\uE51c",
        @"\uE51e",@"\uE11c",@"\uE536",@"\uE003",@"\uE41c",@"\uE41b",@"\uE419",@"\uE41a"};
    
    NSInteger num = sizeof(emoji)/sizeof(NSString *);
    NSMutableString *string = [NSMutableString stringWithCapacity:num];
    for (int i = 0; i < num; ++i) {
            [string appendString:emoji[i]];
    }
    textView.text =  string;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [textView release];
    [super dealloc];
}
@end
