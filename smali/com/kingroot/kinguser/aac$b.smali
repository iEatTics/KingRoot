.class Lcom/kingroot/kinguser/aac$b;
.super Lcom/kingroot/kinguser/aac$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final Xd:[I

.field private static final Xe:[I


# instance fields
.field private final Xf:[I

.field private state:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 183
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingroot/kinguser/aac$b;->Xd:[I

    .line 206
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/kingroot/kinguser/aac$b;->Xe:[I

    return-void

    .line 183
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 206
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-direct {p0}, Lcom/kingroot/kinguser/aac$a;-><init>()V

    .line 244
    iput-object p2, p0, Lcom/kingroot/kinguser/aac$b;->Xc:[B

    .line 246
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/aac$b;->Xd:[I

    :goto_0
    iput-object v0, p0, Lcom/kingroot/kinguser/aac$b;->Xf:[I

    .line 247
    iput v1, p0, Lcom/kingroot/kinguser/aac$b;->state:I

    .line 248
    iput v1, p0, Lcom/kingroot/kinguser/aac$b;->value:I

    .line 249
    return-void

    .line 246
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/aac$b;->Xe:[I

    goto :goto_0
.end method


# virtual methods
.method public a([BIIZ)Z
    .locals 10

    .prologue
    .line 266
    iget v0, p0, Lcom/kingroot/kinguser/aac$b;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 439
    :goto_0
    return v0

    .line 269
    :cond_0
    add-int v4, p3, p2

    .line 276
    iget v3, p0, Lcom/kingroot/kinguser/aac$b;->state:I

    .line 277
    iget v1, p0, Lcom/kingroot/kinguser/aac$b;->value:I

    .line 278
    const/4 v0, 0x0

    .line 279
    iget-object v5, p0, Lcom/kingroot/kinguser/aac$b;->Xc:[B

    .line 280
    iget-object v6, p0, Lcom/kingroot/kinguser/aac$b;->Xf:[I

    move v2, p2

    .line 282
    :goto_1
    if-ge v2, v4, :cond_c

    .line 297
    if-nez v3, :cond_2

    .line 298
    :goto_2
    add-int/lit8 v7, v2, 0x4

    if-gt v7, v4, :cond_1

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v6, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr v1, v7

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v1, v7

    add-int/lit8 v7, v2, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    or-int/2addr v1, v7

    if-ltz v1, :cond_1

    .line 303
    add-int/lit8 v7, v0, 0x2

    int-to-byte v8, v1

    aput-byte v8, v5, v7

    .line 304
    add-int/lit8 v7, v0, 0x1

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 305
    shr-int/lit8 v7, v1, 0x10

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    .line 306
    add-int/lit8 v0, v0, 0x3

    .line 307
    add-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 309
    :cond_1
    if-lt v2, v4, :cond_2

    move v2, v1

    .line 395
    :goto_3
    if-nez p4, :cond_b

    .line 398
    iput v3, p0, Lcom/kingroot/kinguser/aac$b;->state:I

    .line 399
    iput v2, p0, Lcom/kingroot/kinguser/aac$b;->value:I

    .line 400
    iput v0, p0, Lcom/kingroot/kinguser/aac$b;->nF:I

    .line 401
    const/4 v0, 0x1

    goto :goto_0

    .line 317
    :cond_2
    add-int/lit8 p2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    .line 319
    packed-switch v3, :pswitch_data_0

    :cond_3
    move v2, v3

    :goto_4
    move v3, v2

    move v2, p2

    .line 393
    goto :goto_1

    .line 321
    :pswitch_0
    if-ltz v2, :cond_4

    .line 323
    add-int/lit8 v1, v3, 0x1

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_4

    .line 324
    :cond_4
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 325
    const/4 v0, 0x6

    iput v0, p0, Lcom/kingroot/kinguser/aac$b;->state:I

    .line 326
    const/4 v0, 0x0

    goto :goto_0

    .line 331
    :pswitch_1
    if-ltz v2, :cond_5

    .line 332
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 333
    add-int/lit8 v2, v3, 0x1

    goto :goto_4

    .line 334
    :cond_5
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 335
    const/4 v0, 0x6

    iput v0, p0, Lcom/kingroot/kinguser/aac$b;->state:I

    .line 336
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 341
    :pswitch_2
    if-ltz v2, :cond_6

    .line 342
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 343
    add-int/lit8 v2, v3, 0x1

    goto :goto_4

    .line 344
    :cond_6
    const/4 v7, -0x2

    if-ne v2, v7, :cond_7

    .line 347
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x4

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 348
    const/4 v0, 0x4

    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_4

    .line 349
    :cond_7
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 350
    const/4 v0, 0x6

    iput v0, p0, Lcom/kingroot/kinguser/aac$b;->state:I

    .line 351
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 356
    :pswitch_3
    if-ltz v2, :cond_8

    .line 358
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 359
    add-int/lit8 v2, v0, 0x2

    int-to-byte v3, v1

    aput-byte v3, v5, v2

    .line 360
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 361
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 362
    add-int/lit8 v0, v0, 0x3

    .line 363
    const/4 v2, 0x0

    goto :goto_4

    .line 364
    :cond_8
    const/4 v7, -0x2

    if-ne v2, v7, :cond_9

    .line 367
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x2

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 368
    shr-int/lit8 v2, v1, 0xa

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 369
    add-int/lit8 v0, v0, 0x2

    .line 370
    const/4 v2, 0x5

    goto :goto_4

    .line 371
    :cond_9
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 372
    const/4 v0, 0x6

    iput v0, p0, Lcom/kingroot/kinguser/aac$b;->state:I

    .line 373
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 378
    :pswitch_4
    const/4 v7, -0x2

    if-ne v2, v7, :cond_a

    .line 379
    add-int/lit8 v2, v3, 0x1

    goto :goto_4

    .line 380
    :cond_a
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 381
    const/4 v0, 0x6

    iput v0, p0, Lcom/kingroot/kinguser/aac$b;->state:I

    .line 382
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 387
    :pswitch_5
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 388
    const/4 v0, 0x6

    iput v0, p0, Lcom/kingroot/kinguser/aac$b;->state:I

    .line 389
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 407
    :cond_b
    packed-switch v3, :pswitch_data_1

    .line 437
    :goto_5
    :pswitch_6
    iput v3, p0, Lcom/kingroot/kinguser/aac$b;->state:I

    .line 438
    iput v0, p0, Lcom/kingroot/kinguser/aac$b;->nF:I

    .line 439
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 414
    :pswitch_7
    const/4 v0, 0x6

    iput v0, p0, Lcom/kingroot/kinguser/aac$b;->state:I

    .line 415
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 419
    :pswitch_8
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    move v0, v1

    .line 420
    goto :goto_5

    .line 424
    :pswitch_9
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v4, v2, 0xa

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    .line 425
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    goto :goto_5

    .line 429
    :pswitch_a
    const/4 v0, 0x6

    iput v0, p0, Lcom/kingroot/kinguser/aac$b;->state:I

    .line 430
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    move v2, v1

    goto/16 :goto_3

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 407
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
