.class public final Lcom/kingroot/kinguser/bce;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bgd:Landroid/graphics/drawable/Drawable;

.field private static final bge:[Ljava/lang/String;

.field private static final bgf:[Ljava/lang/String;

.field public static bgg:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/16 v4, 0x11

    .line 21
    const/4 v1, 0x0

    sput-object v1, Lcom/kingroot/kinguser/bce;->bgd:Landroid/graphics/drawable/Drawable;

    .line 24
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "SAMSUNG"

    aput-object v2, v1, v0

    const-string v2, "HUAWEI"

    aput-object v2, v1, v5

    const-string v2, "XIAOMI"

    aput-object v2, v1, v7

    const/4 v2, 0x3

    const-string v3, "VIVO"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "LENOVO"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "COOLPAD"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "OPPO"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "ZTE"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "GIONEE"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "MEIZU"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "HTC"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "HISENSE"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "SONY"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "DOOV"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "TCL"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "SEMC"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "BIRD"

    aput-object v3, v1, v2

    sput-object v1, Lcom/kingroot/kinguser/bce;->bge:[Ljava/lang/String;

    .line 27
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "\u4e09\u661f"

    aput-object v2, v1, v0

    const-string v2, "\u534e\u4e3a"

    aput-object v2, v1, v5

    const-string v2, "\u5c0f\u7c73"

    aput-object v2, v1, v7

    const/4 v2, 0x3

    const-string v3, "VIVO"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "\u8054\u60f3"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u9177\u6d3e"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "OPPO"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u4e2d\u5174"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u91d1\u7acb"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u9b45\u65cf"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "HTC"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u6d77\u4fe1"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "\u7d22\u5c3c"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "\u6735\u552f"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "TCL"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "\u7d22\u5c3c\u7231\u7acb\u4fe1"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "BIRD"

    aput-object v3, v1, v2

    sput-object v1, Lcom/kingroot/kinguser/bce;->bgf:[Ljava/lang/String;

    .line 36
    sput v6, Lcom/kingroot/kinguser/bce;->bgg:I

    .line 40
    :try_start_0
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 42
    :goto_0
    sget-object v2, Lcom/kingroot/kinguser/bce;->bge:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 43
    sget-object v2, Lcom/kingroot/kinguser/bce;->bge:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    sput v0, Lcom/kingroot/kinguser/bce;->bgg:I

    .line 49
    :cond_0
    sget v0, Lcom/kingroot/kinguser/bce;->bgg:I

    if-ne v0, v6, :cond_1

    .line 50
    const-string v0, "HONOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    const/4 v0, 0x1

    sput v0, Lcom/kingroot/kinguser/bce;->bgg:I

    .line 59
    :cond_1
    :goto_1
    return-void

    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_3
    const/16 v0, 0x11

    sput v0, Lcom/kingroot/kinguser/bce;->bgg:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    sput v4, Lcom/kingroot/kinguser/bce;->bgg:I

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(F)I
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/zi;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 202
    div-float v0, p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static Xk()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    const-string v1, ""

    .line 112
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    :try_start_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 114
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 115
    const-string v2, " "

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 116
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 121
    :cond_0
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 119
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 118
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(FII)I
    .locals 6

    .prologue
    const/high16 v3, 0xff0000

    const v4, 0xff00

    .line 187
    and-int v0, p1, v3

    shr-int/lit8 v0, v0, 0x10

    .line 188
    and-int v1, p1, v4

    shr-int/lit8 v1, v1, 0x8

    .line 189
    and-int/lit16 v2, p1, 0xff

    shr-int/lit8 v2, v2, 0x0

    .line 190
    and-int/2addr v3, p2

    shr-int/lit8 v3, v3, 0x10

    .line 191
    and-int/2addr v4, p2

    shr-int/lit8 v4, v4, 0x8

    .line 192
    and-int/lit16 v5, p2, 0xff

    shr-int/lit8 v5, v5, 0x0

    .line 193
    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, p0

    float-to-int v3, v3

    add-int/2addr v0, v3

    .line 194
    sub-int v3, v4, v1

    int-to-float v3, v3

    mul-float/2addr v3, p0

    float-to-int v3, v3

    add-int/2addr v1, v3

    .line 195
    sub-int v3, v5, v2

    int-to-float v3, v3

    mul-float/2addr v3, p0

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 196
    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static bn(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 62
    sget-object v0, Lcom/kingroot/kinguser/bce;->bgd:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 63
    const-class v1, Lcom/kingroot/kinguser/bce;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bce;->bgd:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02019b

    sget v3, Lcom/kingroot/kinguser/bce;->bgg:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bce;->bgd:Landroid/graphics/drawable/Drawable;

    .line 68
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bce;->bgd:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static kv(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0201ac

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 85
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/kingroot/kinguser/bce;->bge:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 86
    sget-object v3, Lcom/kingroot/kinguser/bce;->bge:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    :goto_2
    if-ne v0, v1, :cond_1

    .line 93
    const-string v0, "HONOR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    const/4 v0, 0x1

    .line 100
    :cond_1
    :goto_3
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f02019b

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    :cond_3
    const/16 v0, 0x11

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_2
.end method
