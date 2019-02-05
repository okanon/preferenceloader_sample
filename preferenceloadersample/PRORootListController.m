#include "PRORootListController.h"
#import <BluetoothManager/BluetoothManager.h>
#import <RKDropdownAlert/RKDropdownAlert.h>


@implementation PRORootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

- (void)openTwitter {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/@cxx_flags"]];
}

- (void)bluetoothON {
	BluetoothManager *bm = [BluetoothManager sharedInstance];
	[bm setEnabled:YES];

	[RKDropdownAlert title:@"BluetoothManager" message:@"Bluetoothをオンにしました" backgroundColor:[UIColor greenColor] textColor:[UIColor whiteColor] time:3];
}

- (void)bluetoothOFF {
	BluetoothManager *bm = [BluetoothManager sharedInstance];
	[bm setEnabled:NO];

	[RKDropdownAlert title:@"BluetoothManager" message:@"Bluetoothをオフにしました" backgroundColor:[UIColor greenColor] textColor:[UIColor whiteColor] time:3];
}


@end
