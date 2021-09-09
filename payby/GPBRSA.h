//
//  UPApiUrl.h
//  UAEPay
//
//  Created by yaoxh on 2019/9/11.
//  Copyright © 2019 yaoxiaohui. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString *const privateKey = @"MIIEpAIBAAKCAQEAq9KVwPAF+DuJXeRgHj4Q70iLuYEa/iAlY9ah1IIhr1h/H6dWPEC/kOTMauOC+xtmeMoCnrYGxFAG+L5j10d9bXbgMXET1eFeEjVrsLUnM1MokqGdS7nrnZjcvlnJhfNCSsbel3wCOvj4OVTaJwk0VOK5Q2tWslP+fqYSG+TjIuIO7kdzHP2BKmIaCUt8yzcVyuKizE5es+8as+qZm/TRCy23mAJOLRppuHKjf7Hb6X/eLo0FCQ85u5TD3veBxTVe4gEoU/v/mHHB1DACFDOh2z4Qm/g0sLrZgb4AGzIBtn4u59q4okPCzfNEiP+TfHR6EbmYsojYWdy0qnWHUpSBnwIDAQABAoIBADe/y/cd6dHw/1EHmGg3mycIUs2NpkRuCbOrIDbjQiqyfAy5LrG+EGni0rCbwRPYgBcQ9GiqhueLT7fFjn97IqcxuuxP1C/BP9SIoLhlDqMIiFGLPo4jdN9dicH5P/nGQ+wfOnnMMq0PuvpfHaksw14HcjT9ztNtjVVqbNXAHjJivlOJWrrkXmTUKm4TLmVPsDZVUfd8WEZjOoxeDBRMAXJ9vQNwoS9B1RL523ihWsI8sifPEvmiGijZajqXO23lBGzg+/Fmi1b7xkgJ8EKV3i8Wlp4sHrdaFwZMQE/fCzQlkShzHxmBdqVi1cng/WuKRKdaJ68k9pApgpDl/kG0GIECgYEA3BhSD3fC9T6zKn55AoJwf73PK66ofAQ5AMfW8kA2rxaakSDxfsnHhyDtCotxIF6VC2QczUUwF3dn+UipBJqJyphg2NnR2M8DOdB+tuaSZiUCgYEAx9pL5jHbRwrbokWyvKNVQWpu3NxeO0Luh4gAGMlxNKh/UNQh5e01DApgTW1nKQxhkwG0qrP4ex2lMrltW6M+fDy05iSzIGVikWJBv4QoDy7cuB/HY+S9IUD+VuJl09I4DTGhtIF5867YZwdujGuNQm2cX2vr5tMVWo68prjWc3MCgYEAyDGK+qzJdT8pwp41PZYd8+NXPHlqoRtKKi6bkc/crZeW0ikv4E5zPgAje3EF/Djkd6hrsX3cU8VWHm/1v45NKIsWP6ORIY3O5/7tuUrLCWYpJXcaAU6/SGwnkC7ToEjHswvFsuSa4M1oknOH4Tsb2F6PwM8ns9hgK8c8ausBAM0CgYBJIEsdU6jUedibq70W4PzVDsi577hbHsaAuPawGyVdCzpqrPQqWX1LhpBuRFW241zgmYMt4uRMyDAmO0sUeMroUp4uh8czV2WVpMpB9W1jANaqWJZwqsW5YTqvN+/ibc0sprhwf9/LlnKAYGvG3aO2Zr0M/UQ4FYx+sjO9HWz6mQKBgQCvsIA537U/S/MIqS+7+sYZwSFwiUAD7xyd/l5+W9jTq8Semdo4vskLai7BeVU1uyvYEjomDShe+huGJ7LJXAhDbdwZALxcwpKYZhKT0/oNEj7//XYWcjNGz9LP0BCe9xOgmCg/BbKn1VVKrXLcaI76xTkISdAkULA/DAZUf65NaQ==";
//生产
//static NSString *const pubKeyString = @"MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoY221tbXlKE6rseAquXzxSzu4FHcMKDAj+XsEKCmfCZ/n6FEnWd3HWJpLADk7gTSLFTfqZc9/VLxm7zF7P+li1k3OXHO1h773Gi0m6EKWmxCcPNAp1UCwu4Qy+ESHWBt9ACwcij0MeVxJaS473rr+rk3JM9zNabeY9XOp7G92OOdip/sPBNgoCQvjnfrU9mhE42KqVm0RTAUkX22Wny1gauDDuUUCKNF/V6jlSSh0KOT3mRuu5I6s5fuIYt5xjBbei/CvWUwCCYO8Ism8NHNI/bxrRZwt35sg4tirxWxPrk2o4eOTn2Q1mnWtmYe+IG36ysKYHihHgidhN7Tc5J2ZQIDAQAB";


@interface GPBRSA : NSObject

// return base64 encoded string
+ (NSString *)encryptString:(NSString *)str publicKey:(NSString *)pubKey;
// return raw data
+ (NSData *)encryptData:(NSData *)data publicKey:(NSString *)pubKey;
// return base64 encoded string
+ (NSString *)encryptString:(NSString *)str privateKey:(NSString *)privKey;
// return raw data
+ (NSData *)encryptData:(NSData *)data privateKey:(NSString *)privKey;

// decrypt base64 encoded string, convert result to string(not base64 encoded)
+ (NSString *)decryptString:(NSString *)str publicKey:(NSString *)pubKey;
+ (NSData *)decryptData:(NSData *)data publicKey:(NSString *)pubKey;
+ (NSString *)decryptString:(NSString *)str privateKey:(NSString *)privKey;
+ (NSData *)decryptData:(NSData *)data privateKey:(NSString *)privKey;

@end
