.class public Lcom/kingroot/kinguser/cgr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static aio()Z
    .locals 2

    .prologue
    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    invoke-static {}, Lcom/kingroot/kinguser/cgr;->aio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 202
    :cond_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static aiq()I
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Lcom/kingroot/kinguser/cgr;->aio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    :try_start_0
    const-string v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 227
    :goto_0
    return v0

    .line 221
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0

    .line 225
    :cond_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public static amN()Z
    .locals 1

    .prologue
    .line 257
    invoke-static {}, Lcom/kingroot/kinguser/cgr;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 258
    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 263
    :goto_0
    return v0

    .line 262
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public static anb()Lshark/a;
    .locals 3

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 135
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ceb;->akU()Lcom/kingroot/kinguser/cga;

    move-result-object v1

    invoke-interface {v1}, Lcom/kingroot/kinguser/cga;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 139
    :goto_0
    if-nez v0, :cond_0

    .line 140
    sget-object v0, Lshark/a;->bXc:Lshark/a;

    .line 152
    :goto_1
    return-object v0

    .line 142
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 143
    sget-object v0, Lshark/a;->bXd:Lshark/a;

    goto :goto_1

    .line 144
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_3

    .line 145
    invoke-static {}, Lcom/kingroot/kinguser/cgr;->aip()Ljava/lang/String;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/kingroot/kinguser/cgr;->aiq()I

    move-result v0

    if-lez v0, :cond_2

    .line 147
    sget-object v0, Lshark/a;->bXe:Lshark/a;

    goto :goto_1

    .line 149
    :cond_2
    sget-object v0, Lshark/a;->bXf:Lshark/a;

    goto :goto_1

    .line 152
    :cond_3
    sget-object v0, Lshark/a;->bXf:Lshark/a;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static cw(Landroid/content/Context;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 278
    sget-boolean v1, Lcom/kingroot/kinguser/cef;->bYc:Z

    if-nez v1, :cond_0

    .line 279
    sput-boolean v0, Lcom/kingroot/kinguser/cef;->bYc:Z

    .line 280
    invoke-static {p0}, Lcom/kingroot/kinguser/cef;->cr(Landroid/content/Context;)V

    .line 283
    :cond_0
    sget v1, Lcom/kingroot/kinguser/cef;->bYg:I

    .line 284
    packed-switch v1, :pswitch_data_0

    .line 302
    :goto_0
    :pswitch_0
    return v0

    .line 285
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 286
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 287
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 288
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 289
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 290
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 291
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 292
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 293
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 294
    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    .line 295
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 296
    :pswitch_c
    const/16 v0, 0xc

    goto :goto_0

    .line 297
    :pswitch_d
    const/16 v0, 0xd

    goto :goto_0

    .line 298
    :pswitch_e
    const/16 v0, 0xe

    goto :goto_0

    .line 299
    :pswitch_f
    const/16 v0, 0xf

    goto :goto_0

    .line 300
    :pswitch_10
    const/16 v0, 0x10

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
    .end packed-switch
.end method

.method public static getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 269
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ceb;->akU()Lcom/kingroot/kinguser/cga;

    move-result-object v1

    invoke-interface {v1}, Lcom/kingroot/kinguser/cga;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
