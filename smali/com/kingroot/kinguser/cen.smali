.class public Lcom/kingroot/kinguser/cen;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final X(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 330
    if-nez p0, :cond_1

    .line 362
    :cond_0
    :goto_0
    return p1

    .line 334
    :cond_1
    const-string v0, "socket failed: EACCES (Permission denied)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    const p1, -0x55730

    goto :goto_0

    .line 336
    :cond_2
    const-string v0, "Permission denied"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    const p1, -0x57e40

    goto :goto_0

    .line 338
    :cond_3
    const-string v0, "isConnected failed: EHOSTUNREACH (No route to host)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    const p1, -0x5a550

    goto :goto_0

    .line 340
    :cond_4
    const-string v0, "No route to host"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 341
    const p1, -0x5cc60

    goto :goto_0

    .line 342
    :cond_5
    const-string v0, "socket failed: ECONNRESET (Connection reset by peer)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 343
    const p1, -0x5f370

    goto :goto_0

    .line 344
    :cond_6
    const-string v0, "setsockopt failed: ENOPROTOOPT (Protocol not available)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 345
    const p1, -0x61a80

    goto :goto_0

    .line 346
    :cond_7
    const-string v0, "Protocol not available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 347
    const p1, -0x64190

    goto :goto_0

    .line 348
    :cond_8
    const-string v0, "Permission denied (missing INTERNET permission?)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 349
    const p1, -0x68fb0

    goto :goto_0

    .line 350
    :cond_9
    const-string v0, "failed: ENETUNREACH (Network is unreachable)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 351
    const p1, -0x6ddd0

    goto :goto_0

    .line 352
    :cond_a
    const-string v0, "failed: ENOTSOCK (Socket operation on non-socket)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 353
    const p1, -0x704e0

    goto :goto_0

    .line 354
    :cond_b
    const-string v0, "isConnected failed: ECONNREFUSED (Connection refused)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 355
    const p1, -0x72bf0

    goto/16 :goto_0

    .line 356
    :cond_c
    const-string v0, "isConnected failed: ECONNRESET (Connection reset by peer)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 357
    const p1, -0x75300

    goto/16 :goto_0

    .line 358
    :cond_d
    const-string v0, "connect failed: errno "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const p1, -0x77a10

    goto/16 :goto_0
.end method

.method public static final kG(I)I
    .locals 1

    .prologue
    .line 34
    rem-int/lit8 v0, p0, 0x64

    return v0
.end method

.method public static final kH(I)I
    .locals 2

    .prologue
    .line 43
    rem-int/lit16 v0, p0, 0x2710

    invoke-static {p0}, Lcom/kingroot/kinguser/cen;->kG(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static final kI(I)I
    .locals 2

    .prologue
    .line 52
    const v0, 0xf4240

    rem-int v0, p0, v0

    invoke-static {p0}, Lcom/kingroot/kinguser/cen;->kH(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0}, Lcom/kingroot/kinguser/cen;->kG(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static kY(I)I
    .locals 2

    .prologue
    .line 209
    if-nez p0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return p0

    .line 216
    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/cen;->kG(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-static {p0}, Lcom/kingroot/kinguser/cen;->kI(I)I

    move-result v0

    .line 229
    sparse-switch v0, :sswitch_data_0

    move v0, p0

    .line 282
    :goto_1
    if-ne v0, p0, :cond_2

    .line 283
    invoke-static {p0}, Lcom/kingroot/kinguser/cen;->kH(I)I

    move-result v1

    .line 287
    sparse-switch v1, :sswitch_data_1

    :cond_2
    move p0, v0

    goto :goto_0

    .line 230
    :sswitch_0
    add-int/lit8 v0, p0, -0x2

    goto :goto_1

    .line 232
    :sswitch_1
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 235
    :sswitch_2
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 236
    :sswitch_3
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 237
    :sswitch_4
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 238
    :sswitch_5
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 239
    :sswitch_6
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 240
    :sswitch_7
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 241
    :sswitch_8
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 242
    :sswitch_9
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 243
    :sswitch_a
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 244
    :sswitch_b
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 245
    :sswitch_c
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 246
    :sswitch_d
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 247
    :sswitch_e
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 248
    :sswitch_f
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 249
    :sswitch_10
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 250
    :sswitch_11
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 251
    :sswitch_12
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 253
    :sswitch_13
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 254
    :sswitch_14
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 255
    :sswitch_15
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 256
    :sswitch_16
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 257
    :sswitch_17
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 258
    :sswitch_18
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 259
    :sswitch_19
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 260
    :sswitch_1a
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 261
    :sswitch_1b
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 262
    :sswitch_1c
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 263
    :sswitch_1d
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 264
    :sswitch_1e
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 265
    :sswitch_1f
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 266
    :sswitch_20
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 267
    :sswitch_21
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 268
    :sswitch_22
    add-int/lit8 v0, p0, -0x3

    goto :goto_1

    .line 270
    :sswitch_23
    add-int/lit8 v0, p0, -0xf

    goto :goto_1

    .line 271
    :sswitch_24
    add-int/lit8 v0, p0, -0x10

    goto :goto_1

    .line 272
    :sswitch_25
    add-int/lit8 v0, p0, -0x10

    goto :goto_1

    .line 274
    :sswitch_26
    add-int/lit8 v0, p0, -0x6

    goto :goto_1

    .line 275
    :sswitch_27
    add-int/lit8 v0, p0, -0x4

    goto/16 :goto_1

    .line 276
    :sswitch_28
    add-int/lit8 v0, p0, -0x4

    goto/16 :goto_1

    .line 277
    :sswitch_29
    add-int/lit8 v0, p0, -0x7

    goto/16 :goto_1

    .line 278
    :sswitch_2a
    add-int/lit8 v0, p0, -0x5

    goto/16 :goto_1

    .line 279
    :sswitch_2b
    add-int/lit8 v0, p0, -0x5

    goto/16 :goto_1

    .line 288
    :sswitch_2c
    add-int/lit8 p0, p0, -0x5

    goto/16 :goto_0

    .line 289
    :sswitch_2d
    add-int/lit8 p0, p0, -0x5

    goto/16 :goto_0

    .line 290
    :sswitch_2e
    add-int/lit8 p0, p0, -0x3

    goto/16 :goto_0

    .line 292
    :sswitch_2f
    add-int/lit8 p0, p0, -0x5

    goto/16 :goto_0

    .line 293
    :sswitch_30
    add-int/lit8 p0, p0, -0xd

    goto/16 :goto_0

    .line 294
    :sswitch_31
    add-int/lit8 p0, p0, -0xd

    goto/16 :goto_0

    .line 295
    :sswitch_32
    add-int/lit8 p0, p0, -0xe

    goto/16 :goto_0

    .line 296
    :sswitch_33
    add-int/lit8 p0, p0, -0x9

    goto/16 :goto_0

    .line 297
    :sswitch_34
    add-int/lit8 p0, p0, -0x3

    goto/16 :goto_0

    .line 298
    :sswitch_35
    add-int/lit8 p0, p0, -0x5

    goto/16 :goto_0

    .line 229
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a120 -> :sswitch_22
        -0x77a10 -> :sswitch_21
        -0x75300 -> :sswitch_20
        -0x72bf0 -> :sswitch_1f
        -0x704e0 -> :sswitch_1e
        -0x6ddd0 -> :sswitch_1d
        -0x6b6c0 -> :sswitch_1c
        -0x68fb0 -> :sswitch_1b
        -0x668a0 -> :sswitch_1a
        -0x64190 -> :sswitch_19
        -0x61a80 -> :sswitch_18
        -0x5f370 -> :sswitch_17
        -0x5cc60 -> :sswitch_16
        -0x5a550 -> :sswitch_15
        -0x57e40 -> :sswitch_14
        -0x55730 -> :sswitch_13
        -0x53020 -> :sswitch_f
        -0x50910 -> :sswitch_10
        -0x4e200 -> :sswitch_12
        -0x4baf0 -> :sswitch_11
        -0x493e0 -> :sswitch_25
        -0x46cd0 -> :sswitch_24
        -0x445c0 -> :sswitch_2b
        -0x3d090 -> :sswitch_2a
        -0x38270 -> :sswitch_29
        -0x35b60 -> :sswitch_0
        -0x33450 -> :sswitch_e
        -0x2e630 -> :sswitch_d
        -0x2bf20 -> :sswitch_c
        -0x29810 -> :sswitch_23
        -0x27100 -> :sswitch_26
        -0x249f0 -> :sswitch_b
        -0x222e0 -> :sswitch_a
        -0x1fbd0 -> :sswitch_28
        -0x1d4c0 -> :sswitch_9
        -0x1adb0 -> :sswitch_8
        -0x186a0 -> :sswitch_7
        -0x15f90 -> :sswitch_6
        -0x13880 -> :sswitch_5
        -0x11170 -> :sswitch_4
        -0xea60 -> :sswitch_3
        -0xc350 -> :sswitch_27
        -0x9c40 -> :sswitch_2
        -0x2710 -> :sswitch_1
    .end sparse-switch

    .line 287
    :sswitch_data_1
    .sparse-switch
        -0x5dc -> :sswitch_35
        -0x578 -> :sswitch_34
        -0x514 -> :sswitch_33
        -0x4b0 -> :sswitch_32
        -0x44c -> :sswitch_31
        -0x3e8 -> :sswitch_30
        -0x384 -> :sswitch_2f
        -0x320 -> :sswitch_2e
        -0x190 -> :sswitch_2d
        -0x12c -> :sswitch_2c
    .end sparse-switch
.end method

.method public static kZ(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 372
    if-nez p0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v0

    .line 376
    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/cen;->kG(I)I

    move-result v1

    .line 377
    const/16 v2, -0x11

    if-eq v1, v2, :cond_0

    const/16 v2, -0x12

    if-eq v1, v2, :cond_0

    const/4 v2, -0x7

    if-eq v1, v2, :cond_0

    const/16 v2, -0x13

    if-eq v1, v2, :cond_0

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    .line 385
    invoke-static {p0}, Lcom/kingroot/kinguser/cen;->kI(I)I

    move-result v1

    .line 386
    const v2, -0x35b60

    if-eq v1, v2, :cond_0

    const v2, -0x38270

    if-eq v1, v2, :cond_0

    const v2, -0x27100

    if-eq v1, v2, :cond_0

    const v2, -0x83d60

    if-eq v1, v2, :cond_0

    .line 393
    const/4 v0, 0x1

    goto :goto_0
.end method
