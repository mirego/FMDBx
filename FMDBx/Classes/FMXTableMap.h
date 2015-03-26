//
//  FMXTableMap.h
//  FMDBx
//
//  Copyright (c) 2014 KohkiMakimoto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMXColumnMap.h"

@interface FMXTableMap : NSObject

@property (strong, nonatomic) NSString *database;
@property (strong, nonatomic) NSString *tableName;
@property (strong, nonatomic) NSMutableDictionary *columns;
@property (strong, nonatomic) NSString *primaryKeyName;

- (void)hasIntColumn:(NSString *)name;

- (void)hasIntColumn:(NSString *)name withPropertyName:(NSString *)propertyName;

- (void)hasIntColumn:(NSString *)name withPrimaryKey:(BOOL)key;

- (void)hasIntColumn:(NSString *)name withPropertyName:(NSString *)propertyName primaryKey:(BOOL)key;

- (void)hasIntIncrementsColumn:(NSString *)name;

- (void)hasIntIncrementsColumn:(NSString *)name withPropertyName:(NSString *)propertyName;

- (void)hasLongColumn:(NSString *)name;

- (void)hasLongColumn:(NSString *)name withPropertyName:(NSString *)propertyName;

- (void)hasLongColumn:(NSString *)name withPrimaryKey:(BOOL)key;

- (void)hasLongColumn:(NSString *)name withPropertyName:(NSString *)propertyName primaryKey:(BOOL)key;

- (void)hasLongIncrementsColumn:(NSString *)name;

- (void)hasLongIncrementsColumn:(NSString *)name withPropertyName:(NSString *)propertyName;

- (void)hasLongLongIntColumn:(NSString *)name;

- (void)hasLongLongIntColumn:(NSString *)name withPropertyName:(NSString *)propertyName;

- (void)hasLongLongIntColumn:(NSString *)name withPrimaryKey:(BOOL)key;

- (void)hasLongLongIntColumn:(NSString *)name withPropertyName:(NSString *)propertyName primaryKey:(BOOL)key;

- (void)hasLongLongIntIncrementsColumn:(NSString *)name;

- (void)hasLongLongIntIncrementsColumn:(NSString *)name withPropertyName:(NSString *)propertyName;


- (void)hasUnsignedLongLongIntColumn:(NSString *)name;

- (void)hasUnsignedLongLongIntColumn:(NSString *)name withPropertyName:(NSString *)propertyName;

- (void)hasUnsignedLongLongIntColumn:(NSString *)name withPrimaryKey:(BOOL)key;

- (void)hasUnsignedLongLongIntColumn:(NSString *)name withPropertyName:(NSString *)propertyName primaryKey:(BOOL)key;

- (void)hasUnsignedLongLongIntIncrementsColumn:(NSString *)name;

- (void)hasUnsignedLongLongIntIncrementsColumn:(NSString *)name withPropertyName:(NSString *)propertyName;



- (void)hasBoolColumn:(NSString *)name;

- (void)hasBoolColumn:(NSString *)name withPropertyName:(NSString *)propertyName;

- (void)hasDoubleColumn:(NSString *)name;

- (void)hasDoubleColumn:(NSString *)name withPropertyName:(NSString *)propertyName;

- (void)hasStringColumn:(NSString *)name;

- (void)hasStringColumn:(NSString *)name withPropertyName:(NSString *)propertyName;

- (void)hasDateColumn:(NSString *)name;

- (void)hasDateColumn:(NSString *)name withPropertyName:(NSString *)propertyName;

- (void)hasDataColumn:(NSString *)name;

- (void)hasDataColumn:(NSString *)name withPropertyName:(NSString *)propertyName;

- (FMXColumnMap *)columnForPrimaryKey;

@end
