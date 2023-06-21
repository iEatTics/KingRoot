.class public Lcom/kingroot/kinguser/avi;
.super Lcom/kingroot/kinguser/avb;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/kingroot/kinguser/avb;-><init>()V

    return-void
.end method


# virtual methods
.method public j(Lcom/kingroot/kinguser/abc;)I
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 58
    .line 59
    iget-object v3, p0, Lcom/kingroot/kinguser/avi;->aTk:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kinguser/avi;->aTk:Ljava/lang/String;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 67
    array-length v4, v3

    if-ne v4, v6, :cond_0

    .line 70
    const-string v4, "s1"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 72
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/aii;->xO()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 78
    if-ne v3, v0, :cond_2

    move v2, v0

    .line 83
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/akr;->BL()Lcom/kingroot/kinguser/akr;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/akr;->aV(Z)V

    .line 86
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/ahl;->xo()Z

    move-result v3

    .line 87
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 90
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/adm;->sB()V

    .line 91
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/bed;

    sget-object v4, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v5, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v6, 0x0

    new-instance v7, Lcom/kingroot/kinguser/avi$1;

    invoke-direct {v7, p0}, Lcom/kingroot/kinguser/avi$1;-><init>(Lcom/kingroot/kinguser/avi;)V

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    :cond_3
    :goto_1
    move v1, v0

    .line 331
    goto :goto_0

    .line 112
    :cond_4
    const-string v4, "s2"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 114
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 115
    if-ne v3, v0, :cond_28

    move v3, v0

    .line 120
    :goto_2
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/kingroot/kinguser/aks;->bE(Z)V

    .line 122
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v4

    if-nez v3, :cond_5

    move v2, v0

    :cond_5
    invoke-virtual {v4, v2}, Lcom/kingroot/kinguser/aks;->cg(Z)V

    goto :goto_1

    .line 333
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 124
    :cond_6
    const-string v4, "s3"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 126
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 127
    if-ne v3, v0, :cond_7

    move v2, v0

    .line 132
    :cond_7
    if-eqz v2, :cond_8

    .line 133
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/aks;->eB(I)V

    goto :goto_1

    .line 135
    :cond_8
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/aks;->eB(I)V

    goto :goto_1

    .line 139
    :cond_9
    const-string v4, "s6"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 141
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 142
    if-ne v3, v0, :cond_a

    move v2, v0

    .line 147
    :cond_a
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/aks;->bW(Z)V

    goto :goto_1

    .line 149
    :cond_b
    const-string v4, "s8"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v0, v1

    .line 157
    goto :goto_1

    .line 158
    :cond_c
    const-string v4, "s9"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 160
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 161
    if-ne v3, v0, :cond_d

    move v2, v0

    .line 166
    :cond_d
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/aks;->ce(Z)V

    goto/16 :goto_1

    .line 168
    :cond_e
    const-string v4, "s10"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 170
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 171
    if-ne v3, v0, :cond_f

    move v2, v0

    .line 176
    :cond_f
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/aks;->cd(Z)V

    goto/16 :goto_1

    .line 178
    :cond_10
    const-string v4, "s11"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 180
    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 181
    if-ne v2, v0, :cond_11

    .line 186
    invoke-static {}, Lcom/kingroot/kinguser/akh;->Au()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 187
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/kingroot/kinguser/akh;->aT(Z)V

    .line 190
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v2

    const v3, 0x188b2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    goto/16 :goto_1

    :cond_11
    move v0, v1

    .line 200
    goto/16 :goto_1

    .line 202
    :cond_12
    const-string v4, "s12"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 204
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 205
    if-ne v3, v0, :cond_13

    move v2, v0

    .line 210
    :cond_13
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/aks;->ch(Z)V

    goto/16 :goto_1

    .line 212
    :cond_14
    const-string v4, "s13"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 214
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 215
    if-ne v3, v0, :cond_15

    move v2, v0

    .line 219
    :cond_15
    invoke-static {}, Lcom/kingroot/kinguser/akr;->BL()Lcom/kingroot/kinguser/akr;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/akr;->bb(Z)V

    goto/16 :goto_1

    .line 221
    :cond_16
    const-string v4, "s14"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 223
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 224
    if-ne v3, v0, :cond_17

    move v2, v0

    .line 228
    :cond_17
    if-eqz v2, :cond_18

    .line 229
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/aks;->FO()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_18

    .line 230
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/aks;->FM()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    :cond_18
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v3

    new-instance v4, Lcom/kingroot/kinguser/bed;

    sget-object v5, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v6, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v7, 0x0

    new-instance v8, Lcom/kingroot/kinguser/avi$2;

    invoke-direct {v8, p0, v2}, Lcom/kingroot/kinguser/avi$2;-><init>(Lcom/kingroot/kinguser/avi;Z)V

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto/16 :goto_1

    .line 249
    :cond_19
    const-string v4, "s15"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 251
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 252
    if-ne v3, v0, :cond_1a

    move v2, v0

    .line 256
    :cond_1a
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/aks;->cs(Z)V

    .line 258
    if-eqz v2, :cond_3

    .line 259
    invoke-static {}, Lcom/kingroot/kinguser/afz;->vG()Lcom/kingroot/kinguser/afz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/afz;->clearAll()V

    goto/16 :goto_1

    .line 263
    :cond_1b
    const-string v4, "s17"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 265
    const/4 v2, 0x1

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 266
    invoke-static {}, Lcom/kingroot/kinguser/bfm;->aah()Lcom/kingroot/kinguser/bfi;

    move-result-object v3

    .line 268
    if-nez v2, :cond_1c

    .line 270
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Lcom/kingroot/kinguser/bfi;->dN(Z)V

    goto/16 :goto_1

    .line 271
    :cond_1c
    if-ne v2, v0, :cond_1d

    .line 273
    const/4 v2, 0x2

    invoke-interface {v3, v2}, Lcom/kingroot/kinguser/bfi;->iw(I)V

    .line 274
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Lcom/kingroot/kinguser/bfi;->dN(Z)V

    goto/16 :goto_1

    .line 275
    :cond_1d
    if-ne v2, v6, :cond_1e

    .line 277
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Lcom/kingroot/kinguser/bfi;->iw(I)V

    .line 278
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Lcom/kingroot/kinguser/bfi;->dN(Z)V

    goto/16 :goto_1

    .line 281
    :cond_1e
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Lcom/kingroot/kinguser/bfi;->dN(Z)V

    goto/16 :goto_1

    .line 285
    :cond_1f
    const-string v4, "s18"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 287
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 288
    if-ne v3, v0, :cond_20

    move v2, v0

    .line 293
    :cond_20
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/bfw;->dS(Z)V

    .line 294
    invoke-static {}, Lcom/kingroot/kinguser/bfp;->aay()Lcom/kingroot/kinguser/bfp;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/kingroot/kinguser/bfp;->a(ZLcom/kingroot/kinguser/urlcheck/aidl/ICallback;)V

    goto/16 :goto_1

    .line 296
    :cond_21
    const-string v4, "s19"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 298
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 299
    if-ne v3, v0, :cond_22

    move v2, v0

    .line 303
    :cond_22
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/bfw;->dW(Z)V

    goto/16 :goto_1

    .line 306
    :cond_23
    const-string v4, "s20"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 308
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 309
    if-ne v3, v0, :cond_24

    move v2, v0

    .line 313
    :cond_24
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/aks;->cu(Z)V

    .line 314
    invoke-static {v2}, Lcom/kingroot/kinguser/ags;->aF(Z)V

    goto/16 :goto_1

    .line 317
    :cond_25
    const-string v4, "s21"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 319
    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 320
    if-ne v3, v0, :cond_26

    move v2, v0

    .line 324
    :cond_26
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/aks;->bG(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_27
    move v0, v1

    .line 328
    goto/16 :goto_1

    :cond_28
    move v3, v2

    goto/16 :goto_2
.end method
