//
//  menuTableViewCell.m
//  tableViewTest
//
//  Created by Jakob Hartman on 3/20/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import "menuTableViewCell.h"

@implementation menuTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
