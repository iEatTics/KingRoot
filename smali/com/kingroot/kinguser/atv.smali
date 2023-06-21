.class public Lcom/kingroot/kinguser/atv;
.super Lcom/kingroot/kinguser/acq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/atv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/acq",
        "<",
        "Landroid/graphics/Bitmap;",
        "Landroid/widget/ImageView;",
        "Lcom/kingroot/kinguser/atv$a;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile aQn:Lcom/kingroot/kinguser/atv;


# instance fields
.field private aQo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/atv$a;",
            ">;"
        }
    .end annotation
.end field

.field private aQp:Lcom/kingroot/kinguser/ati$a;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 52
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-static {}, Lcom/kingroot/kinguser/atv;->PB()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/kingroot/kinguser/acq;-><init>(IZI)V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/atv;->aQo:Ljava/util/Map;

    .line 66
    new-instance v0, Lcom/kingroot/kinguser/atv$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/atv$1;-><init>(Lcom/kingroot/kinguser/atv;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atv;->mHandler:Landroid/os/Handler;

    .line 304
    new-instance v0, Lcom/kingroot/kinguser/atv$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/atv$2;-><init>(Lcom/kingroot/kinguser/atv;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atv;->aQp:Lcom/kingroot/kinguser/ati$a;

    .line 53
    return-void
.end method

.method public static PA()Lcom/kingroot/kinguser/atv;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/kingroot/kinguser/atv;->aQn:Lcom/kingroot/kinguser/atv;

    if-nez v0, :cond_1

    .line 57
    const-class v1, Lcom/kingroot/kinguser/atv;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/atv;->aQn:Lcom/kingroot/kinguser/atv;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/kingroot/kinguser/atv;

    invoke-direct {v0}, Lcom/kingroot/kinguser/atv;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/atv;->aQn:Lcom/kingroot/kinguser/atv;

    .line 61
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/atv;->aQn:Lcom/kingroot/kinguser/atv;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static PB()I
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    check-cast v0, Landroid/app/ActivityManager;

    .line 93
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 95
    const/high16 v1, 0x100000

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private a(Lcom/kingroot/kinguser/atv$a;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 151
    if-nez p1, :cond_0

    move-object v0, v2

    .line 210
    :goto_0
    return-object v0

    .line 154
    :cond_0
    iget v1, p1, Lcom/kingroot/kinguser/atv$a;->aQv:F

    float-to-int v4, v1

    .line 155
    iget v1, p1, Lcom/kingroot/kinguser/atv$a;->aQv:F

    float-to-int v5, v1

    .line 159
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 160
    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, v6, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 161
    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 162
    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 166
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 170
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 171
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v7, 0x0

    invoke-static {v1, v7, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 174
    const/4 v1, 0x0

    iput-boolean v1, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 179
    iget v1, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v1, v5, :cond_3

    iget v1, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v1, v4, :cond_3

    .line 201
    :cond_1
    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 204
    :cond_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 208
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 184
    :cond_3
    :try_start_2
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 185
    iget v8, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 186
    int-to-float v0, v8

    iget v1, p1, Lcom/kingroot/kinguser/atv$a;->aQv:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 187
    int-to-float v1, v7

    iget v9, p1, Lcom/kingroot/kinguser/atv$a;->aQu:F

    div-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    .line 189
    if-ge v0, v1, :cond_4

    .line 190
    :goto_1
    mul-int v1, v7, v8

    int-to-float v1, v1

    .line 193
    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 195
    :goto_2
    mul-int v5, v0, v0

    int-to-float v5, v5

    div-float v5, v1, v5

    cmpl-float v5, v5, v4

    if-lez v5, :cond_1

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    .line 189
    goto :goto_1

    .line 205
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 208
    :goto_3
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    move-object v0, v2

    .line 210
    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_4
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 205
    :catch_1
    move-exception v0

    move-object v0, v3

    goto :goto_3
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atv;Lcom/kingroot/kinguser/atv$a;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/atv;->a(Lcom/kingroot/kinguser/atv$a;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atv;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/atv;->aQo:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/atv;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/atv;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/atv$a;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v3, p1, Lcom/kingroot/kinguser/atv$a;->ok:Ljava/lang/String;

    .line 217
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 282
    :goto_0
    return-object v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atv;->aQo:Ljava/util/Map;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/kingroot/kinguser/aah;->cO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".cache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 224
    const-string v0, ""

    .line 225
    invoke-static {}, Lcom/kingroot/kinguser/bgr;->iZ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/ru;->iX()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "KingUser"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "gameboxPic"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 252
    :try_start_0
    const-string v2, ""

    .line 253
    invoke-static {}, Lcom/kingroot/kinguser/bgr;->iZ()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/ru;->iX()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "KingUser"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "gameboxPic"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 261
    :goto_2
    new-instance v5, Lcom/kingroot/kinguser/ati$b;

    invoke-direct {v5}, Lcom/kingroot/kinguser/ati$b;-><init>()V

    .line 262
    iput-object v3, v5, Lcom/kingroot/kinguser/ati$b;->url:Ljava/lang/String;

    .line 263
    iput-object v4, v5, Lcom/kingroot/kinguser/ati$b;->aNU:Ljava/lang/String;

    .line 264
    iput-object v2, v5, Lcom/kingroot/kinguser/ati$b;->savePath:Ljava/lang/String;

    .line 266
    invoke-static {}, Lcom/kingroot/kinguser/ati;->Pb()Lcom/kingroot/kinguser/ati;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/atv;->aQp:Lcom/kingroot/kinguser/ati$a;

    invoke-virtual {v2, v5, v3}, Lcom/kingroot/kinguser/ati;->a(Lcom/kingroot/kinguser/ati$b;Lcom/kingroot/kinguser/ati$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 268
    goto/16 :goto_0

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "gameboxPic"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 257
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "gameboxPic"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_2

    .line 270
    :catch_0
    move-exception v1

    .line 278
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/atv;->a(Lcom/kingroot/kinguser/atv$a;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/atv;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 288
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 289
    return-void
.end method

.method public e(Landroid/graphics/Bitmap;)I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 293
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0

    .line 296
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    check-cast p1, Lcom/kingroot/kinguser/atv$a;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/atv;->a(Lcom/kingroot/kinguser/atv$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic m(Ljava/lang/Object;)I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 43
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/atv;->e(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
