.class public Lcom/kingroot/kinguser/cef;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static bXX:I

.field public static bXY:Ljava/lang/String;

.field public static bXZ:I

.field public static bYa:B

.field public static bYb:Z

.field public static bYc:Z

.field public static bYd:B

.field public static bYe:Ljava/lang/String;

.field public static bYf:B

.field public static bYg:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 37
    sput v2, Lcom/kingroot/kinguser/cef;->bXX:I

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/cef;->bXY:Ljava/lang/String;

    .line 39
    const/16 v0, 0x50

    sput v0, Lcom/kingroot/kinguser/cef;->bXZ:I

    .line 40
    sput-byte v1, Lcom/kingroot/kinguser/cef;->bYa:B

    .line 41
    sput-boolean v1, Lcom/kingroot/kinguser/cef;->bYb:Z

    .line 42
    sput-boolean v1, Lcom/kingroot/kinguser/cef;->bYc:Z

    .line 49
    sput-byte v2, Lcom/kingroot/kinguser/cef;->bYd:B

    .line 68
    const-string v0, "unknown"

    sput-object v0, Lcom/kingroot/kinguser/cef;->bYe:Ljava/lang/String;

    .line 80
    const/16 v0, 0x9

    sput-byte v0, Lcom/kingroot/kinguser/cef;->bYf:B

    .line 101
    const/16 v0, 0x11

    sput v0, Lcom/kingroot/kinguser/cef;->bYg:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/NetworkInfo;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 332
    .line 334
    if-nez p1, :cond_0

    .line 367
    :goto_0
    return v1

    .line 338
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v0, v2, :cond_1

    :goto_1
    move v1, v0

    .line 367
    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 341
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 342
    if-eqz v0, :cond_2

    .line 343
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 359
    const/16 v0, 0x11

    goto :goto_1

    .line 344
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_1

    .line 345
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_1

    .line 346
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_1

    .line 347
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_1

    .line 348
    :pswitch_4
    const/4 v0, 0x6

    goto :goto_1

    .line 349
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_1

    .line 350
    :pswitch_6
    const/16 v0, 0x8

    goto :goto_1

    .line 351
    :pswitch_7
    const/16 v0, 0x9

    goto :goto_1

    .line 352
    :pswitch_8
    const/16 v0, 0xa

    goto :goto_1

    .line 353
    :pswitch_9
    const/16 v0, 0xb

    goto :goto_1

    .line 363
    :catch_0
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, v1

    goto :goto_1

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static cr(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 104
    sget-boolean v0, Lcom/kingroot/kinguser/cef;->bYc:Z

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 107
    :cond_0
    const-class v1, Lcom/kingroot/kinguser/cef;

    monitor-enter v1

    .line 108
    :try_start_0
    sget-boolean v0, Lcom/kingroot/kinguser/cef;->bYc:Z

    if-eqz v0, :cond_1

    .line 109
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 111
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/kingroot/kinguser/cef;->init(Landroid/content/Context;)V

    .line 112
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/cef;->bYc:Z

    .line 113
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 134
    .line 136
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ceb;->akU()Lcom/kingroot/kinguser/cga;

    move-result-object v1

    invoke-interface {v1}, Lcom/kingroot/kinguser/cga;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 145
    :goto_0
    const/4 v1, -0x1

    .line 146
    const/4 v3, 0x0

    :try_start_1
    sput v3, Lcom/kingroot/kinguser/cef;->bXX:I

    .line 147
    const/4 v3, 0x4

    sput-byte v3, Lcom/kingroot/kinguser/cef;->bYd:B

    .line 150
    if-eqz v2, :cond_0

    .line 152
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 156
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 157
    if-nez v0, :cond_2

    .line 158
    const/4 v3, 0x0

    sput v3, Lcom/kingroot/kinguser/cef;->bXX:I

    .line 166
    :cond_0
    :goto_1
    if-ne v1, v4, :cond_3

    .line 168
    const/4 v0, 0x4

    sput v0, Lcom/kingroot/kinguser/cef;->bXX:I

    .line 169
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/cef;->bYb:Z

    .line 170
    const/4 v0, 0x3

    sput-byte v0, Lcom/kingroot/kinguser/cef;->bYd:B

    .line 171
    const-string v0, "unknown"

    sput-object v0, Lcom/kingroot/kinguser/cef;->bYe:Ljava/lang/String;

    .line 172
    const/16 v0, 0x9

    sput-byte v0, Lcom/kingroot/kinguser/cef;->bYf:B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    :cond_1
    :goto_2
    invoke-static {p0, v2}, Lcom/kingroot/kinguser/cef;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/cef;->bYg:I

    .line 265
    return-void

    :catch_0
    move-exception v1

    move-object v2, v0

    goto :goto_0

    .line 160
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 177
    :cond_3
    invoke-static {v0}, Lcom/kingroot/kinguser/cef;->nK(Ljava/lang/String;)V

    .line 180
    if-eqz v0, :cond_c

    .line 182
    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 189
    :cond_4
    const/4 v1, 0x1

    sput-byte v1, Lcom/kingroot/kinguser/cef;->bYd:B

    .line 190
    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 191
    const/4 v0, 0x2

    sput-byte v0, Lcom/kingroot/kinguser/cef;->bYd:B

    .line 193
    :cond_5
    const/4 v0, 0x2

    sput v0, Lcom/kingroot/kinguser/cef;->bXX:I

    .line 217
    :goto_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/cef;->bYb:Z

    .line 218
    sget v0, Lcom/kingroot/kinguser/cef;->bXX:I

    invoke-static {v0}, Lcom/kingroot/kinguser/cef;->kX(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/cef;->bXY:Ljava/lang/String;

    .line 221
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/cef;->bXZ:I

    .line 223
    sget-object v0, Lcom/kingroot/kinguser/cef;->bXY:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 224
    sget-object v0, Lcom/kingroot/kinguser/cef;->bXY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/cef;->bXY:Ljava/lang/String;

    .line 227
    :cond_6
    sget-object v0, Lcom/kingroot/kinguser/cef;->bXY:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, ""

    sget-object v1, Lcom/kingroot/kinguser/cef;->bXY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 229
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/cef;->bYb:Z

    .line 230
    const/4 v0, 0x2

    sput v0, Lcom/kingroot/kinguser/cef;->bXX:I

    .line 233
    const-string v0, "10.0.0.200"

    sget-object v1, Lcom/kingroot/kinguser/cef;->bXY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 235
    const/4 v0, 0x1

    sput-byte v0, Lcom/kingroot/kinguser/cef;->bYa:B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 256
    :catch_1
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 195
    :cond_7
    :try_start_3
    const-string v1, "cmnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "uninet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "3gnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ctnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 200
    :cond_8
    const/4 v1, 0x1

    sput-byte v1, Lcom/kingroot/kinguser/cef;->bYd:B

    .line 201
    const-string v1, "3gnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "ctnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 203
    :cond_9
    const/4 v0, 0x2

    sput-byte v0, Lcom/kingroot/kinguser/cef;->bYd:B

    .line 205
    :cond_a
    const/4 v0, 0x1

    sput v0, Lcom/kingroot/kinguser/cef;->bXX:I

    goto/16 :goto_3

    .line 207
    :cond_b
    const-string v1, "#777"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 209
    const/4 v0, 0x2

    sput-byte v0, Lcom/kingroot/kinguser/cef;->bYd:B

    .line 210
    :cond_c
    const/4 v0, 0x0

    sput v0, Lcom/kingroot/kinguser/cef;->bXX:I

    goto/16 :goto_3

    .line 239
    :cond_d
    const/4 v0, 0x0

    sput-byte v0, Lcom/kingroot/kinguser/cef;->bYa:B

    goto/16 :goto_2

    .line 244
    :cond_e
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/cef;->bYb:Z

    .line 245
    const/4 v0, 0x1

    sput v0, Lcom/kingroot/kinguser/cef;->bXX:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method

.method private static kX(I)Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static nK(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 297
    if-nez p0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    const-string v0, "cmwap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    const-string v0, "cmwap"

    sput-object v0, Lcom/kingroot/kinguser/cef;->bYe:Ljava/lang/String;

    .line 303
    const/4 v0, 0x0

    sput-byte v0, Lcom/kingroot/kinguser/cef;->bYf:B

    goto :goto_0

    .line 304
    :cond_2
    const-string v0, "cmnet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 305
    const-string v0, "cmnet"

    sput-object v0, Lcom/kingroot/kinguser/cef;->bYe:Ljava/lang/String;

    .line 306
    const/4 v0, 0x1

    sput-byte v0, Lcom/kingroot/kinguser/cef;->bYf:B

    goto :goto_0

    .line 307
    :cond_3
    const-string v0, "3gwap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 308
    const-string v0, "3gwap"

    sput-object v0, Lcom/kingroot/kinguser/cef;->bYe:Ljava/lang/String;

    .line 309
    const/4 v0, 0x2

    sput-byte v0, Lcom/kingroot/kinguser/cef;->bYf:B

    goto :goto_0

    .line 310
    :cond_4
    const-string v0, "3gnet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 311
    const-string v0, "3gnet"

    sput-object v0, Lcom/kingroot/kinguser/cef;->bYe:Ljava/lang/String;

    .line 312
    const/4 v0, 0x3

    sput-byte v0, Lcom/kingroot/kinguser/cef;->bYf:B

    goto :goto_0

    .line 313
    :cond_5
    const-string v0, "uniwap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 314
    const-string v0, "uniwap"

    sput-object v0, Lcom/kingroot/kinguser/cef;->bYe:Ljava/lang/String;

    .line 315
    const/4 v0, 0x4

    sput-byte v0, Lcom/kingroot/kinguser/cef;->bYf:B

    goto :goto_0

    .line 316
    :cond_6
    const-string v0, "uninet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 317
    const-string v0, "uninet"

    sput-object v0, Lcom/kingroot/kinguser/cef;->bYe:Ljava/lang/String;

    .line 318
    const/4 v0, 0x5

    sput-byte v0, Lcom/kingroot/kinguser/cef;->bYf:B

    goto :goto_0

    .line 319
    :cond_7
    const-string v0, "ctwap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 320
    const-string v0, "ctwap"

    sput-object v0, Lcom/kingroot/kinguser/cef;->bYe:Ljava/lang/String;

    .line 321
    const/4 v0, 0x6

    sput-byte v0, Lcom/kingroot/kinguser/cef;->bYf:B

    goto :goto_0

    .line 322
    :cond_8
    const-string v0, "ctnet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 323
    const-string v0, "ctnet"

    sput-object v0, Lcom/kingroot/kinguser/cef;->bYe:Ljava/lang/String;

    .line 324
    const/4 v0, 0x7

    sput-byte v0, Lcom/kingroot/kinguser/cef;->bYf:B

    goto :goto_0

    .line 325
    :cond_9
    const-string v0, "#777"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "#777"

    sput-object v0, Lcom/kingroot/kinguser/cef;->bYe:Ljava/lang/String;

    .line 327
    const/16 v0, 0x8

    sput-byte v0, Lcom/kingroot/kinguser/cef;->bYf:B

    goto/16 :goto_0
.end method
