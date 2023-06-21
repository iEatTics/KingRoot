.class public final Lcom/kingroot/kinguser/uk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Iu:Ljava/lang/String;

.field private static Iv:Ljava/lang/String;

.field private static final Iw:J

.field private static Ix:J

.field private static Iy:Ljava/lang/Runnable;

.field private static Iz:Lcom/kingroot/kinguser/wo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/uk;->Iu:Ljava/lang/String;

    .line 93
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/uk;->Iv:Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ih()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3c

    :goto_0
    sput-wide v0, Lcom/kingroot/kinguser/uk;->Iw:J

    .line 96
    sget-wide v0, Lcom/kingroot/kinguser/uk;->Iw:J

    sput-wide v0, Lcom/kingroot/kinguser/uk;->Ix:J

    .line 138
    new-instance v0, Lcom/kingroot/kinguser/uk$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/uk$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/uk;->Iz:Lcom/kingroot/kinguser/wo;

    return-void

    .line 95
    :cond_0
    const-wide/16 v0, 0x6270

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {p3}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    sput-object v0, Lcom/kingroot/kinguser/uk;->Iy:Ljava/lang/Runnable;

    .line 112
    sput-object p1, Lcom/kingroot/kinguser/uk;->Iv:Ljava/lang/String;

    .line 113
    sput-object p2, Lcom/kingroot/kinguser/uk;->Iu:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v1, Lcom/kingroot/kinguser/uk;->Iz:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/wo;->I(Ljava/util/List;)Z

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/kingroot/kinguser/uk;->Iu:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/kingroot/kinguser/uk;->Iv:Ljava/lang/String;

    return-object v0
.end method

.method public static kB()Ljava/lang/Runnable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 135
    sget-object v0, Lcom/kingroot/kinguser/uk;->Iy:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic kC()J
    .locals 2

    .prologue
    .line 86
    sget-wide v0, Lcom/kingroot/kinguser/uk;->Ix:J

    return-wide v0
.end method
