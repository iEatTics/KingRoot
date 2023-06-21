.class public Lcom/kingroot/kinguser/ast;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aNA:I

.field private static final aNB:I

.field private static final aNC:I

.field private static final aNx:I

.field private static final aNy:I

.field private static final aNz:I

.field static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ast;->mContext:Landroid/content/Context;

    .line 46
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/ast;->aNx:I

    .line 47
    sget v0, Lcom/kingroot/kinguser/ast;->aNx:I

    sput v0, Lcom/kingroot/kinguser/ast;->aNy:I

    .line 48
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/ast;->aNz:I

    .line 49
    sget v0, Lcom/kingroot/kinguser/ast;->aNz:I

    sput v0, Lcom/kingroot/kinguser/ast;->aNA:I

    .line 50
    const/high16 v0, 0x40900000    # 4.5f

    invoke-static {v0}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/ast;->aNB:I

    .line 51
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/ast;->aNC:I

    return-void
.end method

.method private static Or()[Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 194
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Rect;

    move v0, v1

    .line 195
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 196
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v0

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    sget v3, Lcom/kingroot/kinguser/ast;->aNB:I

    sget v4, Lcom/kingroot/kinguser/ast;->aNB:I

    invoke-direct {v0, v3, v4, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v0, v2, v1

    .line 201
    const/4 v0, 0x1

    new-instance v1, Landroid/graphics/Rect;

    sget v3, Lcom/kingroot/kinguser/ast;->aNB:I

    sget v4, Lcom/kingroot/kinguser/ast;->aNz:I

    add-int/2addr v3, v4

    sget v4, Lcom/kingroot/kinguser/ast;->aNC:I

    add-int/2addr v3, v4

    sget v4, Lcom/kingroot/kinguser/ast;->aNB:I

    invoke-direct {v1, v3, v4, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    .line 202
    const/4 v0, 0x2

    new-instance v1, Landroid/graphics/Rect;

    sget v3, Lcom/kingroot/kinguser/ast;->aNB:I

    sget v4, Lcom/kingroot/kinguser/ast;->aNB:I

    sget v5, Lcom/kingroot/kinguser/ast;->aNz:I

    add-int/2addr v4, v5

    sget v5, Lcom/kingroot/kinguser/ast;->aNC:I

    add-int/2addr v4, v5

    invoke-direct {v1, v3, v4, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    .line 203
    const/4 v0, 0x3

    new-instance v1, Landroid/graphics/Rect;

    sget v3, Lcom/kingroot/kinguser/ast;->aNB:I

    sget v4, Lcom/kingroot/kinguser/ast;->aNz:I

    add-int/2addr v3, v4

    sget v4, Lcom/kingroot/kinguser/ast;->aNC:I

    add-int/2addr v3, v4

    sget v4, Lcom/kingroot/kinguser/ast;->aNB:I

    sget v5, Lcom/kingroot/kinguser/ast;->aNz:I

    add-int/2addr v4, v5

    sget v5, Lcom/kingroot/kinguser/ast;->aNC:I

    add-int/2addr v4, v5

    invoke-direct {v1, v3, v4, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v2, v0

    .line 205
    return-object v2
.end method

.method public static bd(Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 22
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OH()Ljava/util/List;

    move-result-object v5

    .line 63
    const/4 v4, 0x0

    .line 64
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 66
    :cond_0
    const/4 v4, 0x1

    .line 69
    :cond_1
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_7

    :cond_2
    if-eqz p0, :cond_7

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_7

    .line 71
    const/4 v4, 0x0

    .line 74
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v5

    .line 76
    const v6, 0x7f020136

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 77
    const v7, 0x7f020137

    invoke-static {v5, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 78
    const v8, 0x7f020138

    invoke-static {v5, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 82
    sget v5, Lcom/kingroot/kinguser/ast;->aNx:I

    sget v9, Lcom/kingroot/kinguser/ast;->aNy:I

    const/4 v10, 0x1

    invoke-static {v7, v5, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 83
    sget v5, Lcom/kingroot/kinguser/ast;->aNx:I

    sget v10, Lcom/kingroot/kinguser/ast;->aNy:I

    const/4 v11, 0x1

    invoke-static {v8, v5, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 84
    sget v5, Lcom/kingroot/kinguser/ast;->aNx:I

    sget v11, Lcom/kingroot/kinguser/ast;->aNy:I

    const/4 v12, 0x1

    invoke-static {v6, v5, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 87
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 88
    invoke-virtual {v12}, Landroid/graphics/Canvas;->save()I

    .line 89
    invoke-static {}, Lcom/kingroot/kinguser/ast;->Or()[Landroid/graphics/Rect;

    move-result-object v13

    .line 91
    const/4 v5, 0x0

    .line 92
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 93
    new-instance v15, Landroid/graphics/Paint;

    const/16 v16, 0x3

    invoke-direct/range {v15 .. v16}, Landroid/graphics/Paint;-><init>(I)V

    .line 94
    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 95
    if-eqz v4, :cond_5

    .line 96
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v10, v4, v5, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 116
    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v9, v4, v5, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 117
    invoke-virtual {v12}, Landroid/graphics/Canvas;->restore()V

    .line 119
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v4

    const/16 v5, 0xe

    if-lt v4, v5, :cond_4

    .line 120
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_4
    :goto_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 124
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 128
    return-object v11

    .line 98
    :cond_5
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 101
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v5, v0, :cond_3

    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/zh;->dv(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 106
    if-eqz v4, :cond_6

    .line 107
    invoke-static {v4}, Lcom/kingroot/kinguser/acs;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 108
    aget-object v17, v13, v5

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    aget-object v18, v13, v5

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    aget-object v19, v13, v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sget v20, Lcom/kingroot/kinguser/ast;->aNz:I

    add-int v19, v19, v20

    aget-object v20, v13, v5

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sget v21, Lcom/kingroot/kinguser/ast;->aNA:I

    add-int v20, v20, v21

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 109
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v12, v4, v0, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 110
    add-int/lit8 v4, v5, 0x1

    :goto_3
    move v5, v4

    .line 112
    goto :goto_2

    .line 122
    :catch_0
    move-exception v4

    goto :goto_1

    :cond_6
    move v4, v5

    goto :goto_3

    :cond_7
    move-object/from16 p0, v5

    goto/16 :goto_0
.end method

.method public static r(Ljava/util/ArrayList;)Landroid/graphics/Bitmap;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 133
    const/4 v4, 0x0

    .line 134
    invoke-static/range {p0 .. p0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    const/4 v4, 0x1

    .line 137
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v5

    .line 138
    const v6, 0x7f020136

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 139
    const v7, 0x7f020137

    invoke-static {v5, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 140
    const v8, 0x7f020138

    invoke-static {v5, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 144
    sget v5, Lcom/kingroot/kinguser/ast;->aNx:I

    sget v9, Lcom/kingroot/kinguser/ast;->aNy:I

    const/4 v10, 0x1

    invoke-static {v7, v5, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 145
    sget v5, Lcom/kingroot/kinguser/ast;->aNx:I

    sget v10, Lcom/kingroot/kinguser/ast;->aNy:I

    const/4 v11, 0x1

    invoke-static {v8, v5, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 146
    sget v5, Lcom/kingroot/kinguser/ast;->aNx:I

    sget v11, Lcom/kingroot/kinguser/ast;->aNy:I

    const/4 v12, 0x1

    invoke-static {v6, v5, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 149
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 150
    invoke-virtual {v12}, Landroid/graphics/Canvas;->save()I

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/ast;->Or()[Landroid/graphics/Rect;

    move-result-object v13

    .line 153
    const/4 v5, 0x0

    .line 154
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 155
    new-instance v15, Landroid/graphics/Paint;

    const/16 v16, 0x3

    invoke-direct/range {v15 .. v16}, Landroid/graphics/Paint;-><init>(I)V

    .line 156
    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 157
    if-eqz v4, :cond_3

    .line 158
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v10, v4, v5, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 174
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v9, v4, v5, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 175
    invoke-virtual {v12}, Landroid/graphics/Canvas;->restore()V

    .line 177
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v4

    const/16 v5, 0xe

    if-lt v4, v5, :cond_2

    .line 178
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_2
    :goto_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 183
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 184
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 185
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 187
    return-object v11

    .line 160
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 162
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v5, v0, :cond_1

    .line 165
    if-eqz v4, :cond_4

    .line 166
    aget-object v17, v13, v5

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    aget-object v18, v13, v5

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    aget-object v19, v13, v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sget v20, Lcom/kingroot/kinguser/ast;->aNz:I

    add-int v19, v19, v20

    aget-object v20, v13, v5

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sget v21, Lcom/kingroot/kinguser/ast;->aNA:I

    add-int v20, v20, v21

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 167
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v12, v4, v0, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 168
    add-int/lit8 v4, v5, 0x1

    :goto_2
    move v5, v4

    .line 170
    goto :goto_1

    .line 180
    :catch_0
    move-exception v4

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_2
.end method
