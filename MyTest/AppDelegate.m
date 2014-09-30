//
//  AppDelegate.m
//  MyTest
//
//  Created by 雷郴湘 on 14-9-17.
//  Copyright (c) 2014年 Mealk. All rights reserved.
//

#import "AppDelegate.h"
#import "player.h"
#import "PlayersViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    _players = [NSMutableArray arrayWithCapacity:20];
    
    Player * player = [[Player alloc] init];
    player.name = @"Bill Evans";
    player.game = @"player.game";
    player.rating = 4;
    [_players addObject:player];

    player = [[Player alloc] init];
    player.name = @"Oscar Peterson";
    player.game = @"Spin the Bottle";
    player.rating = 5;
    [_players addObject:player];
    
    player = [[Player alloc] init];
    player.name = @"Dave Brubeck";
    player.game = @"Texas Hold’em Poker";
    player.rating = 2;
    [_players addObject:player];
    
    UINavigationController * navigationController = (UINavigationController *)self.window.rootViewController;
    PlayersViewController * playersviewController = [navigationController viewControllers][0];
    playersviewController.Players = _players;
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
