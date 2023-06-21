.class public Lcom/kingroot/kinguser/bgv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bge:[Ljava/lang/String;

.field private static final bgf:[Ljava/lang/String;

.field public static bgg:I

.field public static bpf:Ljava/lang/String;

.field public static bpg:I

.field public static bph:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x11

    const/4 v3, 0x3

    .line 12
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ONEPLUS"

    aput-object v1, v0, v5

    const-string v1, "Smartisan"

    aput-object v1, v0, v6

    const-string v1, "HTC"

    aput-object v1, v0, v7

    const-string v1, "HUAWEI"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "GIONEE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "COOLPAD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Le"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "LG"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "MEIZU"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MOTO"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "NUBIA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "OPPO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SAMSUNG"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SONY"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "VIVO"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "XIAOMI"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ZTE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/bgv;->bge:[Ljava/lang/String;

    .line 14
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\u4e00\u52a0"

    aput-object v1, v0, v5

    const-string v1, "\u9524\u5b50"

    aput-object v1, v0, v6

    const-string v1, "HTC"

    aput-object v1, v0, v7

    const-string v1, "\u534e\u4e3a"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "\u91d1\u7acb"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u9177\u6d3e"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e50\u89c6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "LG"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u9b45\u65cf"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u6469\u6258\u7f57\u62c9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u52aa\u6bd4\u4e9a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "OPPO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u4e09\u661f"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u7d22\u5c3c"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "VIVO"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u5c0f\u7c73"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u4e2d\u5174"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/bgv;->bgf:[Ljava/lang/String;

    .line 21
    const/4 v0, -0x1

    sput v0, Lcom/kingroot/kinguser/bgv;->bgg:I

    .line 23
    sput v4, Lcom/kingroot/kinguser/bgv;->bpg:I

    .line 24
    sput v3, Lcom/kingroot/kinguser/bgv;->bph:I

    .line 28
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bgv;->ls(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/bgv;->bgg:I

    .line 29
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bgv;->lr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bgv;->bpf:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static lr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/bgv;->ls(Ljava/lang/String;)I

    move-result v1

    .line 70
    if-ltz v1, :cond_0

    sget-object v2, Lcom/kingroot/kinguser/bgv;->bgf:[Ljava/lang/String;

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 73
    sget-object v0, Lcom/kingroot/kinguser/bgv;->bgf:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static ls(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    sget v0, Lcom/kingroot/kinguser/bgv;->bpg:I

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 105
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/kingroot/kinguser/bgv;->bge:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 106
    sget-object v3, Lcom/kingroot/kinguser/bgv;->bge:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    :goto_2
    if-ne v0, v1, :cond_0

    .line 113
    const-string v0, "HONOR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    sget v0, Lcom/kingroot/kinguser/bgv;->bph:I

    goto :goto_0

    .line 105
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_3
    sget v0, Lcom/kingroot/kinguser/bgv;->bpg:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method
