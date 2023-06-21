.class public Lcom/kingroot/kinguser/acr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/acr$b;,
        Lcom/kingroot/kinguser/acr$a;
    }
.end annotation


# instance fields
.field private abe:Lcom/kingroot/kinguser/acq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/acq",
            "<",
            "Ljava/lang/Object;",
            "Landroid/widget/ImageView;",
            "Lcom/kingroot/kinguser/acr$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/acr$a;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/kingroot/kinguser/acr;->sd()Lcom/kingroot/kinguser/acr$a;

    move-result-object p1

    .line 61
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/acr;->a(Lcom/kingroot/kinguser/acr$a;)V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/acr;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/acr;->c(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/acr$b;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 290
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    iget-object v0, p1, Lcom/kingroot/kinguser/acr$b;->abm:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/zh;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    .line 291
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/acr;Lcom/kingroot/kinguser/acr$b;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/acr;->a(Lcom/kingroot/kinguser/acr$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/Object;ILandroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/acr;->a(Landroid/widget/ImageView;Ljava/lang/Object;ILandroid/graphics/drawable/Drawable;II)V

    .line 127
    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/Object;ILandroid/graphics/drawable/Drawable;II)V
    .locals 3

    .prologue
    .line 132
    if-eqz p4, :cond_0

    .line 133
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/acr$b;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/acr$b;-><init>(Lcom/kingroot/kinguser/acr$1;)V

    .line 137
    iput-object p2, v1, Lcom/kingroot/kinguser/acr$b;->abm:Ljava/lang/Object;

    .line 138
    iput p3, v1, Lcom/kingroot/kinguser/acr$b;->mType:I

    .line 139
    iput p6, v1, Lcom/kingroot/kinguser/acr$b;->abo:I

    .line 140
    iput p5, v1, Lcom/kingroot/kinguser/acr$b;->abn:I

    .line 143
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 144
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 149
    :goto_0
    iget-object v2, p0, Lcom/kingroot/kinguser/acr;->abe:Lcom/kingroot/kinguser/acq;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, p1, v0}, Lcom/kingroot/kinguser/acq;->a(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Integer;)V

    .line 150
    return-void

    .line 146
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method private a(Lcom/kingroot/kinguser/acr$a;)V
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lcom/kingroot/kinguser/acr$1;

    iget v1, p1, Lcom/kingroot/kinguser/acr$a;->abi:I

    iget-boolean v2, p1, Lcom/kingroot/kinguser/acr$a;->abh:Z

    iget v3, p1, Lcom/kingroot/kinguser/acr$a;->abg:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/kingroot/kinguser/acr$1;-><init>(Lcom/kingroot/kinguser/acr;IZI)V

    iput-object v0, p0, Lcom/kingroot/kinguser/acr;->abe:Lcom/kingroot/kinguser/acq;

    .line 122
    return-void
.end method

.method private c(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 313
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 314
    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, v4, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 315
    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 316
    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 320
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 324
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 325
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 328
    const/4 v1, 0x0

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 330
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v1, p2, :cond_3

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v1, p3, :cond_3

    .line 347
    :cond_0
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 351
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 355
    if-eqz v3, :cond_2

    .line 357
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 364
    :cond_2
    :goto_0
    return-object v0

    .line 333
    :cond_3
    :try_start_3
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 334
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 335
    int-to-float v0, v6

    int-to-float v1, p3

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 336
    int-to-float v1, v5

    int-to-float v7, p2

    div-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    .line 337
    if-ge v0, v1, :cond_4

    .line 338
    :goto_1
    mul-int v1, v5, v6

    int-to-float v1, v1

    .line 341
    mul-int v5, p2, p3

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 343
    :goto_2
    mul-int v6, v0, v0

    int-to-float v6, v6

    div-float v6, v1, v6

    cmpl-float v6, v6, v5

    if-lez v6, :cond_0

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    .line 337
    goto :goto_1

    .line 352
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 355
    :goto_3
    if-eqz v0, :cond_5

    .line 357
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_4
    move-object v0, v2

    .line 364
    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_5
    if-eqz v3, :cond_6

    .line 357
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 360
    :cond_6
    :goto_6
    throw v0

    .line 358
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_6

    .line 355
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 352
    :catch_4
    move-exception v0

    move-object v0, v3

    goto :goto_3
.end method

.method private sd()Lcom/kingroot/kinguser/acr$a;
    .locals 1

    .prologue
    .line 384
    new-instance v0, Lcom/kingroot/kinguser/acr$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/acr$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 199
    invoke-virtual {v0, p3}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 200
    invoke-virtual {p0, p1, p2, v0}, Lcom/kingroot/kinguser/acr;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 201
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;III)V
    .locals 6

    .prologue
    .line 246
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 247
    invoke-virtual {v0, p3}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    .line 248
    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/acr;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)V

    .line 249
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/kingroot/kinguser/acr;->a(Landroid/widget/ImageView;Ljava/lang/Object;ILandroid/graphics/drawable/Drawable;)V

    .line 188
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)V
    .locals 7

    .prologue
    .line 233
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/acr;->a(Landroid/widget/ImageView;Ljava/lang/Object;ILandroid/graphics/drawable/Drawable;II)V

    .line 235
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 220
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/acr;->a(Ljava/lang/String;Landroid/widget/ImageView;III)V

    .line 221
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/kingroot/kinguser/acr;->abe:Lcom/kingroot/kinguser/acq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/acq;->close()V

    .line 257
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/kingroot/kinguser/acr;->abe:Lcom/kingroot/kinguser/acq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/acq;->pause()V

    .line 272
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/kingroot/kinguser/acr;->abe:Lcom/kingroot/kinguser/acq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/acq;->resume()V

    .line 279
    return-void
.end method
