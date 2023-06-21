.class public Lcom/kingroot/kinguser/sx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Bk:Ljava/lang/String;

.field public GM:I

.field public GN:Z

.field public GO:[Ljava/lang/String;

.field public mId:J

.field public mTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/sx;->mId:J

    .line 27
    const-string v0, "1"

    iput-object v0, p0, Lcom/kingroot/kinguser/sx;->Bk:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/sx;->GN:Z

    .line 29
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(IJ[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 33
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/sx;-><init>(IJ[Ljava/lang/String;Z)V

    .line 34
    return-void
.end method

.method public constructor <init>(IJ[Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 37
    const-wide/16 v1, -0x1

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/sx;-><init>(JIJ[Ljava/lang/String;Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(JIJ[Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/kingroot/kinguser/sx;->mId:J

    .line 27
    const-string v1, "1"

    iput-object v1, p0, Lcom/kingroot/kinguser/sx;->Bk:Ljava/lang/String;

    .line 28
    iput-boolean v0, p0, Lcom/kingroot/kinguser/sx;->GN:Z

    .line 29
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    .line 41
    iput-wide p1, p0, Lcom/kingroot/kinguser/sx;->mId:J

    .line 42
    iput p3, p0, Lcom/kingroot/kinguser/sx;->GM:I

    .line 43
    iput-wide p4, p0, Lcom/kingroot/kinguser/sx;->mTime:J

    .line 44
    iput-boolean p7, p0, Lcom/kingroot/kinguser/sx;->GN:Z

    .line 47
    if-eqz p6, :cond_0

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    array-length v1, p6

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    aget-object v2, p6, v0

    aput-object v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/ContentValues;)Lcom/kingroot/kinguser/sx;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 107
    if-nez p0, :cond_0

    .line 133
    :goto_0
    return-object v6

    .line 113
    :cond_0
    :try_start_0
    const-string v1, "emid"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 114
    const-string v2, "time"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 115
    const-string v4, "independent"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 116
    :goto_1
    const/16 v0, 0xa

    new-array v4, v0, [Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    const-string v7, "data0"

    invoke-virtual {p0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    .line 118
    const/4 v0, 0x1

    const-string v7, "data1"

    invoke-virtual {p0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    .line 119
    const/4 v0, 0x2

    const-string v7, "data2"

    invoke-virtual {p0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    .line 120
    const/4 v0, 0x3

    const-string v7, "data3"

    invoke-virtual {p0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    .line 121
    const/4 v0, 0x4

    const-string v7, "data4"

    invoke-virtual {p0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    .line 122
    const/4 v0, 0x5

    const-string v7, "data5"

    invoke-virtual {p0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    .line 123
    const/4 v0, 0x6

    const-string v7, "data6"

    invoke-virtual {p0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    .line 124
    const/4 v0, 0x7

    const-string v7, "data7"

    invoke-virtual {p0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    .line 125
    const/16 v0, 0x8

    const-string v7, "data8"

    invoke-virtual {p0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    .line 126
    const/16 v0, 0x9

    const-string v7, "data9"

    invoke-virtual {p0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    .line 128
    new-instance v0, Lcom/kingroot/kinguser/sx;

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/sx;-><init>(IJ[Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v6, v0

    .line 133
    goto/16 :goto_0

    :cond_1
    move v5, v0

    .line 115
    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_2
.end method

.method private static a(Landroid/database/Cursor;IZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    if-eqz p2, :cond_0

    .line 290
    invoke-static {v0}, Lcom/kingroot/kinguser/sx;->cP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    :cond_0
    return-object v0
.end method

.method private a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 138
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    if-eqz p4, :cond_2

    .line 143
    invoke-static {p3}, Lcom/kingroot/kinguser/sx;->cO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 146
    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Landroid/database/Cursor;Z)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/sx;",
            ">;",
            "Landroid/database/Cursor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 220
    if-nez p1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    :try_start_0
    const-string v3, "_id"

    .line 229
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 230
    const-string v3, "emid"

    .line 231
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 232
    const-string v3, "time"

    .line 233
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 234
    const-string v3, "independent"

    .line 235
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 236
    const-string v3, "data0"

    .line 237
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 238
    const-string v3, "data1"

    .line 239
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 240
    const-string v3, "data2"

    .line 241
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 242
    const-string v3, "data3"

    .line 243
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 244
    const-string v3, "data4"

    .line 245
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 246
    const-string v3, "data5"

    .line 247
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 248
    const-string v3, "data6"

    .line 249
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 250
    const-string v3, "data7"

    .line 251
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 252
    const-string v3, "data8"

    .line 253
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 254
    const-string v3, "data9"

    .line 255
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    .line 259
    :cond_2
    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 260
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 261
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 262
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_3

    const/4 v10, 0x1

    .line 264
    :goto_1
    const/16 v3, 0xa

    new-array v9, v3, [Ljava/lang/String;

    .line 265
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v15, v1}, Lcom/kingroot/kinguser/sx;->a(Landroid/database/Cursor;IZ)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v3

    .line 266
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/sx;->a(Landroid/database/Cursor;IZ)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v3

    .line 267
    const/4 v3, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/sx;->a(Landroid/database/Cursor;IZ)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v3

    .line 268
    const/4 v3, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/sx;->a(Landroid/database/Cursor;IZ)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v3

    .line 269
    const/4 v3, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/sx;->a(Landroid/database/Cursor;IZ)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v3

    .line 270
    const/4 v3, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/sx;->a(Landroid/database/Cursor;IZ)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v3

    .line 271
    const/4 v3, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/sx;->a(Landroid/database/Cursor;IZ)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v3

    .line 272
    const/4 v3, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/sx;->a(Landroid/database/Cursor;IZ)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v3

    .line 273
    const/16 v3, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/sx;->a(Landroid/database/Cursor;IZ)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v3

    .line 274
    const/16 v3, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/sx;->a(Landroid/database/Cursor;IZ)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v9, v3

    .line 276
    new-instance v3, Lcom/kingroot/kinguser/sx;

    invoke-direct/range {v3 .. v10}, Lcom/kingroot/kinguser/sx;-><init>(JIJ[Ljava/lang/String;Z)V

    .line 278
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    :goto_2
    :try_start_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 262
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 282
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 279
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public static cO(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    const-string v0, ""

    .line 319
    :cond_0
    :goto_0
    return-object v0

    .line 306
    :cond_1
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aae$b;->Xv:Lcom/kingroot/kinguser/aae$b;

    invoke-static {v0}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$b;)Lcom/kingroot/kinguser/aag;

    move-result-object v0

    .line 307
    const-string v1, "a2"

    .line 308
    invoke-static {v1}, Lcom/kingroot/kinguser/zq;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-interface {v0, v1, p0}, Lcom/kingroot/kinguser/aag;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 319
    const-string v0, ""

    goto :goto_0
.end method

.method public static cP(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    const-string v0, ""

    .line 346
    :cond_0
    :goto_0
    return-object v0

    .line 332
    :cond_1
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aae$b;->Xv:Lcom/kingroot/kinguser/aae$b;

    .line 333
    invoke-static {v0}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$b;)Lcom/kingroot/kinguser/aag;

    move-result-object v0

    .line 334
    const-string v1, "a2"

    .line 335
    invoke-static {v1}, Lcom/kingroot/kinguser/zq;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-interface {v0, v1, p0}, Lcom/kingroot/kinguser/aag;->O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 346
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public L(Z)Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 87
    const-string v0, "emid"

    iget v4, p0, Lcom/kingroot/kinguser/sx;->GM:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v0, "time"

    iget-wide v4, p0, Lcom/kingroot/kinguser/sx;->mTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 89
    const-string v4, "independent"

    iget-boolean v0, p0, Lcom/kingroot/kinguser/sx;->GN:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    const-string v0, "desc"

    iget-object v4, p0, Lcom/kingroot/kinguser/sx;->Bk:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v4, p1}, Lcom/kingroot/kinguser/sx;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 92
    const-string v0, "data0"

    iget-object v4, p0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-direct {p0, v3, v0, v2, p1}, Lcom/kingroot/kinguser/sx;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    const-string v0, "data1"

    iget-object v2, p0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-direct {p0, v3, v0, v1, p1}, Lcom/kingroot/kinguser/sx;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    const-string v0, "data2"

    iget-object v1, p0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {p0, v3, v0, v1, p1}, Lcom/kingroot/kinguser/sx;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    const-string v0, "data3"

    iget-object v1, p0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {p0, v3, v0, v1, p1}, Lcom/kingroot/kinguser/sx;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    const-string v0, "data4"

    iget-object v1, p0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {p0, v3, v0, v1, p1}, Lcom/kingroot/kinguser/sx;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    const-string v0, "data5"

    iget-object v1, p0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {p0, v3, v0, v1, p1}, Lcom/kingroot/kinguser/sx;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    const-string v0, "data6"

    iget-object v1, p0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-direct {p0, v3, v0, v1, p1}, Lcom/kingroot/kinguser/sx;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    const-string v0, "data7"

    iget-object v1, p0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-direct {p0, v3, v0, v1, p1}, Lcom/kingroot/kinguser/sx;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    const-string v0, "data8"

    iget-object v1, p0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-direct {p0, v3, v0, v1, p1}, Lcom/kingroot/kinguser/sx;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    const-string v0, "data9"

    iget-object v1, p0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-direct {p0, v3, v0, v1, p1}, Lcom/kingroot/kinguser/sx;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    return-object v3

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0
.end method
