//
//  FMXColumnMap.m
//  FMDBx
//
//  Copyright (c) 2014 KohkiMakimoto. All rights reserved.
//

#import "FMXColumnMap.h"
#import "FMXHelpers.h"

@implementation FMXColumnMap

- (id)initWithName:(NSString *)name type:(FMXColumnMapType)type {
    return [self initWithName:name propertyName:FMXLowerCamelCaseFromSnakeCase(name) type:type];
}

- (id)initWithName:(NSString *)name propertyName:(NSString *)propertyName type:(FMXColumnMapType)type
{
    self = [super init];
    if (self) {
        self.name = name;
        self.propertyName = propertyName;
        self.type = type;
        self.increments = NO;
    }
    return self;
}

@end
