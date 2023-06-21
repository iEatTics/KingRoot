.class public Lcom/kingroot/kinguser/bgl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bgl$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final boO:Z

.field private static boP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bgl$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/kingroot/kinguser/aiq;->ase:Ljava/lang/String;

    sput-object v0, Lcom/kingroot/kinguser/bgl;->TAG:Ljava/lang/String;

    .line 63
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "arm64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/kingroot/kinguser/bgl;->boO:Z

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bgl;->boP:Ljava/util/List;

    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;IZ)V
    .locals 3

    .prologue
    .line 128
    invoke-static {p1}, Lcom/kingroot/kinguser/bgl;->iI(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    sget-object v1, Lcom/kingroot/kinguser/bgl;->boP:Ljava/util/List;

    new-instance v2, Lcom/kingroot/kinguser/bgl$a;

    invoke-direct {v2, p0, v0, p2}, Lcom/kingroot/kinguser/bgl$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    return-void
.end method

.method private static abE()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 86
    sget-object v0, Lcom/kingroot/kinguser/bgl;->boP:Ljava/util/List;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bgl;->boP:Ljava/util/List;

    .line 92
    :goto_0
    const v0, 0x7f0700ae

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bgl;->ak(II)V

    .line 93
    const v0, 0x7f0700ac

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bgl;->ak(II)V

    .line 94
    const v0, 0x7f0700a4

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bgl;->ak(II)V

    .line 95
    const v0, 0x7f0700aa

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bgl;->ak(II)V

    .line 96
    const v0, 0x7f0700a7

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bgl;->ak(II)V

    .line 98
    const v0, 0x7f0700a8

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bgl;->ak(II)V

    .line 99
    const v0, 0x7f0700af

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bgl;->ak(II)V

    .line 101
    const v0, 0x7f0700b0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bgl;->ak(II)V

    .line 102
    const v0, 0x7f0700a5

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bgl;->ak(II)V

    .line 103
    const v0, 0x7f0700a9

    const/4 v1, 0x4

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bgl;->d(IIZ)V

    .line 105
    const v0, 0x7f0700ab

    const/16 v1, 0xc

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bgl;->d(IIZ)V

    .line 106
    const v0, 0x7f0700ad

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bgl;->ak(II)V

    .line 108
    const v0, 0x7f0700a6

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bgl;->ak(II)V

    .line 110
    const-string v0, "GUID"

    const/16 v1, 0xf

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bgl;->a(Ljava/lang/String;IZ)V

    .line 111
    return-void

    .line 89
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bgl;->boP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public static abF()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x2

    .line 211
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 212
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :try_start_1
    const-string v2, ""

    .line 215
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 216
    const-string v3, "model name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Hardware"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 218
    const-string v3, ":\\s+"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 219
    array-length v3, v2

    if-lt v3, v5, :cond_0

    .line 220
    const/4 v3, 0x1

    aget-object v0, v2, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 226
    if-eqz v1, :cond_2

    .line 228
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 233
    :cond_2
    :goto_0
    return-object v0

    .line 226
    :cond_3
    if-eqz v1, :cond_2

    .line 228
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    goto :goto_0

    .line 224
    :catch_1
    move-exception v1

    move-object v1, v0

    .line 226
    :goto_1
    if-eqz v1, :cond_2

    .line 228
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 229
    :catch_2
    move-exception v1

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    if-eqz v1, :cond_4

    .line 228
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 230
    :cond_4
    :goto_3
    throw v0

    .line 229
    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_3

    .line 226
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 224
    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method private static abG()Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 238
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 239
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 240
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 241
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static abH()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/high16 v7, 0x44800000    # 1024.0f

    .line 247
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qo()J

    move-result-wide v0

    .line 248
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qq()J

    move-result-wide v2

    .line 249
    cmp-long v4, v0, v8

    if-eqz v4, :cond_0

    cmp-long v4, v2, v8

    if-nez v4, :cond_1

    .line 250
    :cond_0
    const-string v0, ""

    .line 252
    :goto_0
    return-object v0

    :cond_1
    const-string v4, "%.2fMB/%.2fMB"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    long-to-float v2, v2

    div-float/2addr v2, v7

    div-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    long-to-float v0, v0

    div-float/2addr v0, v7

    div-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static abI()Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/high16 v6, 0x44800000    # 1024.0f

    .line 257
    new-instance v0, Lcom/kingroot/kinguser/aav$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aav$a;-><init>()V

    .line 258
    invoke-static {v0}, Lcom/kingroot/kinguser/aav;->b(Lcom/kingroot/kinguser/aav$a;)V

    .line 259
    iget-wide v2, v0, Lcom/kingroot/kinguser/aav$a;->Yv:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/kingroot/kinguser/aav$a;->Yw:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 260
    :cond_0
    const-string v0, ""

    .line 262
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "%.2fGB/%.2fGB"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, v0, Lcom/kingroot/kinguser/aav$a;->Yv:J

    long-to-float v4, v4

    div-float/2addr v4, v6

    div-float/2addr v4, v6

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, v0, Lcom/kingroot/kinguser/aav$a;->Yw:J

    long-to-float v0, v4

    div-float/2addr v0, v6

    div-float/2addr v0, v6

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static abJ()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 268
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v2, "nfc"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 269
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 270
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 270
    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    move v0, v1

    .line 272
    goto :goto_0
.end method

.method private static abK()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 278
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 279
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 280
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static abL()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 326
    const v2, 0x7f0700aa

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/bgl;->c(Ljava/util/List;Ljava/lang/String;I)V

    .line 327
    const v2, 0x7f0700a7

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/bgl;->c(Ljava/util/List;Ljava/lang/String;I)V

    .line 328
    const v2, 0x7f0700af

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/bgl;->c(Ljava/util/List;Ljava/lang/String;I)V

    .line 329
    const v2, 0x7f0700a9

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bgl;->c(Ljava/util/List;Ljava/lang/String;I)V

    .line 330
    const-string v1, "GUID"

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bgl;->c(Ljava/util/List;Ljava/lang/String;I)V

    .line 331
    return-object v0
.end method

.method private static ak(II)V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/kingroot/kinguser/bgl;->d(IIZ)V

    .line 115
    return-void
.end method

.method private static c(Ljava/util/List;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p2}, Lcom/kingroot/kinguser/bgl;->iI(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_0
    return-void
.end method

.method private static d(IIZ)V
    .locals 3

    .prologue
    .line 117
    invoke-static {p1}, Lcom/kingroot/kinguser/bgl;->iI(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    sget-object v1, Lcom/kingroot/kinguser/bgl;->boP:Ljava/util/List;

    new-instance v2, Lcom/kingroot/kinguser/bgl$a;

    invoke-direct {v2, p0, v0, p2}, Lcom/kingroot/kinguser/bgl$a;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    return-void
.end method

.method public static declared-synchronized ea(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bgl$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    const-class v1, Lcom/kingroot/kinguser/bgl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bgl;->boP:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    .line 73
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bgl;->abE()V

    .line 75
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/kingroot/kinguser/bgl;->boP:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getBatteryCapacity()D
    .locals 6

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 296
    const-string v1, "com.android.internal.os.PowerProfile"

    .line 299
    :try_start_0
    const-string v1, "com.android.internal.os.PowerProfile"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 305
    :goto_0
    :try_start_1
    const-string v1, "com.android.internal.os.PowerProfile"

    .line 306
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAveragePower"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 307
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "battery.capacity"

    aput-object v4, v2, v3

    .line 308
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 305
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    .line 312
    :goto_1
    return-wide v0

    .line 309
    :catch_0
    move-exception v0

    .line 312
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 301
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static iI(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    packed-switch p0, :pswitch_data_0

    .line 205
    :goto_0
    const-string v0, ""

    :cond_0
    :goto_1
    return-object v0

    .line 145
    :pswitch_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto :goto_1

    .line 148
    :pswitch_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_1

    .line 151
    :pswitch_2
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto :goto_1

    .line 154
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/bgl;->getBatteryCapacity()D

    move-result-wide v0

    double-to-int v0, v0

    .line 155
    if-nez v0, :cond_1

    .line 156
    const-string v0, ""

    goto :goto_1

    .line 158
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mAh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 161
    :pswitch_4
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aay;->ak(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string v1, "000000000000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "000000000000001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 166
    :pswitch_5
    invoke-static {}, Lcom/kingroot/kinguser/bgl;->abG()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 169
    :pswitch_6
    const-string v0, "cat /proc/version"

    invoke-static {v0}, Lcom/kingroot/kinguser/bgl;->lo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_3

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 173
    :cond_3
    const-string v0, ""

    goto :goto_1

    .line 176
    :pswitch_7
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    goto :goto_1

    .line 179
    :pswitch_8
    invoke-static {}, Lcom/kingroot/kinguser/bgl;->abF()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 182
    :pswitch_9
    invoke-static {}, Lcom/kingroot/kinguser/bgl;->abH()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 185
    :pswitch_a
    invoke-static {}, Lcom/kingroot/kinguser/bgl;->abI()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 188
    :pswitch_b
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aav;->ah(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 191
    :pswitch_c
    invoke-static {}, Lcom/kingroot/kinguser/bgl;->abJ()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700b1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700b3

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 194
    :pswitch_d
    invoke-static {}, Lcom/kingroot/kinguser/bgl;->abK()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "4.0"

    goto/16 :goto_1

    :cond_5
    const-string v0, ""

    goto/16 :goto_1

    .line 197
    :pswitch_e
    invoke-static {}, Lcom/kingroot/kinguser/ux;->kT()Lcom/kingroot/kinguser/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ux;->getSharkGuid()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 202
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method static synthetic iJ(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-static {p0}, Lcom/kingroot/kinguser/bgl;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static lo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    const-string v0, "sh"

    invoke-static {v0, p0}, Lcom/kingroot/kinguser/abj;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 288
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 290
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
