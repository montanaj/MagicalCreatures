//
//  CMJViewController.m
//  MagicalCreatures
//
//  Created by Claire Jencks on 3/18/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import "CMJViewController.h"
#import "MagicalCreature.h"

@interface CMJViewController () <UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>


@property NSMutableArray *creatures;



@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation CMJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //instantiate 3 MagicalCreatures and assign a name to each creature (these are objects created in the Magical Creature class (see left sidebar)
    
    MagicalCreature *minotaur = [MagicalCreature new];
    minotaur.name = @"Simian";
    
    MagicalCreature *teradactyl = [MagicalCreature new];
    teradactyl.name = @"Brandon";
    
    MagicalCreature *chihuawolf = [MagicalCreature new];
    chihuawolf.name = @"Maxamillian";
    
    
    //instantiate the array with the magical creatures in it
    //the instance of the creature variable property within the CMJviewcontroller class, just like if you said self.anything it would be refering to that instance of the variable)
    self.creatures = [NSMutableArray arrayWithObjects:minotaur, teradactyl, chihuawolf, nil];
    
                
                 
}
//implementing these protocols: UITableViewDelegate and UITableViewDataSource
-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath

MagicalCreature* magicalCreature = [creatures objectAtIndex:indexPath.row];

UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"magicalCreaturesID"];
cell.textLabel.text = magicalCreature.name;
return cell;


//implementing these protocols: UITableViewDelegate and UITableViewDataSource
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

 creature.name











@end
