//
//  FMXTableMap.m
//  FMDBx
//
//  Copyright (c) 2014 KohkiMakimoto. All rights reserved.
//

#import "FMXTableMap.h"
#import "FMXColumnMap.h"
#import "FMXHelpers.h"

@implementation FMXTableMap

- (id)init {
    self = [super init];
    if (self) {
        self.columns = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (void)hasIntColumn:(NSString *)name {
    [self hasIntColumn:name withPropertyName:FMXLowerCamelCaseFromSnakeCase(name)];
}

- (void)hasIntColumn:(NSString *)name withPropertyName:(NSString *)propertyName {
    [self.columns setObject:[[FMXColumnMap alloc] initWithName:name propertyName:propertyName type:FMXColumnMapTypeInt] forKey:name];
}

- (void)hasIntColumn:(NSString *)name withPrimaryKey:(BOOL)key {
    [self hasIntColumn:name withPropertyName:FMXLowerCamelCaseFromSnakeCase(name) primaryKey:key];
}

- (void)hasIntColumn:(NSString *)name withPropertyName:(NSString *)propertyName primaryKey:(BOOL)key {
    [self.columns setObject:[[FMXColumnMap alloc] initWithName:name propertyName:propertyName type:FMXColumnMapTypeInt] forKey:name];
    if (key) {
        self.primaryKeyName = name;
    }
}

-(void)hasIntIncrementsColumn:(NSString *)name {
    [self hasIntIncrementsColumn:name withPropertyName:FMXLowerCamelCaseFromSnakeCase(name)];
}

-(void)hasIntIncrementsColumn:(NSString *)name withPropertyName:(NSString *)propertyName {
    FMXColumnMap *column = [[FMXColumnMap alloc] initWithName:name propertyName:propertyName type:FMXColumnMapTypeInt];
    column.increments = YES;
    [self.columns setObject:column forKey:name];
    self.primaryKeyName = name;
}

- (void)hasLongColumn:(NSString *)name {
    [self hasLongColumn:name withPropertyName:FMXLowerCamelCaseFromSnakeCase(name)];
}

- (void)hasLongColumn:(NSString *)name withPropertyName:(NSString *)propertyName {
    [self.columns setObject:[[FMXColumnMap alloc] initWithName:name propertyName:propertyName type:FMXColumnMapTypeLong] forKey:name];
}

-(void)hasLongColumn:(NSString *)name withPrimaryKey:(BOOL)key {
    [self hasLongColumn:name withPropertyName:FMXLowerCamelCaseFromSnakeCase(name) primaryKey:key];
}

-(void)hasLongColumn:(NSString *)name withPropertyName:(NSString *)propertyName primaryKey:(BOOL)key {
    [self.columns setObject:[[FMXColumnMap alloc] initWithName:name propertyName:propertyName type:FMXColumnMapTypeLong] forKey:name];
    if (key) {
        self.primaryKeyName = name;
    }    
}

-(void)hasLongIncrementsColumn:(NSString *)name {
    [self hasLongIncrementsColumn:name withPropertyName:FMXLowerCamelCaseFromSnakeCase(name)];
}

-(void)hasLongIncrementsColumn:(NSString *)name withPropertyName:(NSString *)propertyName {
    FMXColumnMap *column = [[FMXColumnMap alloc] initWithName:name propertyName:propertyName type:FMXColumnMapTypeLong];
    column.increments = YES;
    [self.columns setObject:column forKey:name];
    self.primaryKeyName = name;
}

- (void)hasLongLongIntColumn:(NSString *)name {
    [self hasLongLongIntColumn:name withPropertyName:FMXLowerCamelCaseFromSnakeCase(name)];
}

- (void)hasLongLongIntColumn:(NSString *)name withPropertyName:(NSString *)propertyName {
    [self.columns setObject:[[FMXColumnMap alloc] initWithName:name propertyName:propertyName type:FMXColumnMapTypeLongLongInt] forKey:name];
}

- (void)hasLongLongIntColumn:(NSString *)name withPrimaryKey:(BOOL)key {
    [self hasLongLongIntColumn:name withPropertyName:FMXLowerCamelCaseFromSnakeCase(name) primaryKey:key];
}

- (void)hasLongLongIntColumn:(NSString *)name withPropertyName:(NSString *)propertyName primaryKey:(BOOL)key {
    [self.columns setObject:[[FMXColumnMap alloc] initWithName:name propertyName:propertyName type:FMXColumnMapTypeLongLongInt] forKey:name];
    if (key) {
        self.primaryKeyName = name;
    }
}

- (void)hasLongLongIntIncrementsColumn:(NSString *)name {
    [self hasLongLongIntIncrementsColumn:name withPropertyName:FMXLowerCamelCaseFromSnakeCase(name)];
}

- (void)hasLongLongIntIncrementsColumn:(NSString *)name withPropertyName:(NSString *)propertyName {
    FMXColumnMap *column = [[FMXColumnMap alloc] initWithName:name propertyName:propertyName type:FMXColumnMapTypeLongLongInt];
    column.increments = YES;
    [self.columns setObject:column forKey:name];
    self.primaryKeyName = name;
}

- (void)hasUnsignedLongLongIntColumn:(NSString *)name {
    [self hasUnsignedLongLongIntColumn:name withPropertyName:FMXLowerCamelCaseFromSnakeCase(name)];
}

- (void)hasUnsignedLongLongIntColumn:(NSString *)name withPropertyName:(NSString *)propertyName {
    [self.columns setObject:[[FMXColumnMap alloc] initWithName:name propertyName:propertyName type:FMXColumnMapTypeUnsignedLongLongInt] forKey:name];
}

- (void)hasUnsignedLongLongIntColumn:(NSString *)name withPrimaryKey:(BOOL)key {
    [self hasUnsignedLongLongIntColumn:name withPropertyName:FMXLowerCamelCaseFromSnakeCase(name) primaryKey:key];
}

- (void)hasUnsignedLongLongIntColumn:(NSString *)name withPropertyName:(NSString *)propertyName primaryKey:(BOOL)key {
    [self.columns setObject:[[FMXColumnMap alloc] initWithName:name propertyName:propertyName type:FMXColumnMapTypeUnsignedLongLongInt] forKey:name];
    if (key) {
        self.primaryKeyName = name;
    }
}

- (void)hasUnsignedLongLongIntIncrementsColumn:(NSString *)name {
    [self hasUnsignedLongLongIntIncrementsColumn:name withPropertyName:FMXLowerCamelCaseFromSnakeCase(name)];
}

- (void)hasUnsignedLongLongIntIncrementsColumn:(NSString *)name withPropertyName:(NSString *)propertyName {
    FMXColumnMap *column = [[FMXColumnMap alloc] initWithName:name propertyName:propertyName type:FMXColumnMapTypeUnsignedLongLongInt];
    column.increments = YES;
    [self.columns setObject:column forKey:name];
    self.primaryKeyName = name;
}

- (void)hasBoolColumn:(NSString *)name {
    [self hasBoolColumn:name withPropertyName:FMXLowerCamelCaseFromSnakeCase(name)];
}

- (void)hasBoolColumn:(NSString *)name withPropertyName:(NSString *)propertyName {
    [self.columns setObject:[[FMXColumnMap alloc] initWithName:name propertyName:propertyName type:FMXColumnMapTypeBool] forKey:name];
}

- (void)hasDoubleColumn:(NSString *)name {
    [self hasDoubleColumn:name withPropertyName:FMXLowerCamelCaseFromSnakeCase(name)];
}

- (void)hasDoubleColumn:(NSString *)name withPropertyName:(NSString *)propertyName {
    [self.columns setObject:[[FMXColumnMap alloc] initWithName:name propertyName:propertyName type:FMXColumnMapTypeDouble] forKey:name];
}

- (void)hasStringColumn:(NSString *)name {
    [self hasStringColumn:name withPropertyName:FMXLowerCamelCaseFromSnakeCase(name)];
}

- (void)hasStringColumn:(NSString *)name withPropertyName:(NSString *)propertyName {
    [self.columns setObject:[[FMXColumnMap alloc] initWithName:name propertyName:propertyName type:FMXColumnMapTypeString] forKey:name];
}

- (void)hasDateColumn:(NSString *)name {
    [self hasDateColumn:name withPropertyName:FMXLowerCamelCaseFromSnakeCase(name)];
}

- (void)hasDateColumn:(NSString *)name withPropertyName:(NSString *)propertyName {
    [self.columns setObject:[[FMXColumnMap alloc] initWithName:name propertyName:propertyName type:FMXColumnMapTypeDate] forKey:name];
}

- (void)hasDataColumn:(NSString *)name {
    [self hasDataColumn:name withPropertyName:FMXLowerCamelCaseFromSnakeCase(name)];
}

- (void)hasDataColumn:(NSString *)name withPropertyName:(NSString *)propertyName {
    [self.columns setObject:[[FMXColumnMap alloc] initWithName:name propertyName:propertyName type:FMXColumnMapTypeData] forKey:name];
}

- (FMXColumnMap *)columnForPrimaryKey {
    return [self.columns objectForKey:self.primaryKeyName];
}

@end
