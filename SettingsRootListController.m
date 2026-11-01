#import "SettingsRootListController.h"

@implementation SettingsRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}
	return _specifiers;
}

#pragma mark - Actions

- (void)openNyxianGitHub {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/emexlab/Nyxian"] options:@{} completionHandler:nil];
}

- (void)openThisRepo {
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/g4nbi/Settings"] options:@{} completionHandler:nil];
}

- (void)respring {
	// Simple respring via sbreload if available
	pid_t pid;
	const char* args[] = {"sbreload", NULL};
	posix_spawn(&pid, "/usr/bin/sbreload", NULL, NULL, (char* const*)args, NULL);
}

@end
