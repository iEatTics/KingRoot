.class public Lcom/kingroot/kinguser/og;
.super Lcom/kingroot/kinguser/cfj;
.source "SourceFile"


# static fields
.field private static final xY:Lcom/kingroot/kinguser/ccd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/ccd",
            "<",
            "Lcom/kingroot/kinguser/og;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/kingroot/kinguser/oh;

    invoke-direct {v0}, Lcom/kingroot/kinguser/oh;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/og;->xY:Lcom/kingroot/kinguser/ccd;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/kingroot/kinguser/og;->fs()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/cfj;-><init>(J)V

    .line 43
    return-void
.end method

.method public static fr()Lcom/kingroot/kinguser/og;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/kingroot/kinguser/og;->xY:Lcom/kingroot/kinguser/ccd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ccd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/og;

    return-object v0
.end method

.method private static fs()J
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 109
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akT()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 116
    :goto_0
    const-wide v2, 0x100000000L

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/cdx;->p(IJ)J

    move-result-wide v0

    .line 117
    return-wide v0

    .line 111
    :cond_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akT()I

    move-result v0

    if-ne v1, v0, :cond_1

    move v0, v1

    .line 112
    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/kingroot/kinguser/cas;Lcom/kingroot/kinguser/cdy;Lcom/kingroot/kinguser/cau;ZZLjava/lang/String;Lcom/kingroot/kinguser/cgj;Lcom/kingroot/kinguser/car;)V
    .locals 3
    .param p9    # Lcom/kingroot/kinguser/car;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-static {}, Lcom/kingroot/kinguser/ol;->fZ()Lcom/kingroot/kinguser/ol;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ol;->E(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/ol;->a(Lcom/kingroot/kinguser/cas;)V

    .line 69
    invoke-virtual {v0, p4}, Lcom/kingroot/kinguser/ol;->a(Lcom/kingroot/kinguser/cau;)V

    .line 72
    new-instance v0, Lcom/kingroot/kinguser/cea;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cea;-><init>()V

    .line 73
    iput-boolean v1, v0, Lcom/kingroot/kinguser/cea;->bXK:Z

    .line 74
    iput-boolean v1, v0, Lcom/kingroot/kinguser/cea;->bXL:Z

    .line 75
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v1, v2, p3, v0}, Ltmsdk/common/TMSDKContext;->a(Landroid/content/Context;Ljava/lang/Class;ILcom/kingroot/kinguser/cdy;Lcom/kingroot/kinguser/cea;)V

    .line 76
    if-eqz p8, :cond_0

    .line 77
    invoke-static {p8}, Ltmsdk/common/tcc/TccCryptor;->a(Lcom/kingroot/kinguser/cgj;)V

    .line 80
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/oj;->fH()Lcom/kingroot/kinguser/oj;

    move-result-object v0

    .line 81
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p9}, Lcom/kingroot/kinguser/oj;->a(ZLcom/kingroot/kinguser/car;)V

    .line 82
    invoke-static {v0, p5, p6, p7}, Lcom/kingroot/kinguser/og;->a(Lcom/kingroot/kinguser/ceu;ZZLjava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/kingroot/kinguser/og;->fr()Lcom/kingroot/kinguser/og;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/cfd;->a(Lcom/kingroot/kinguser/cfi;)V

    .line 85
    return-void
.end method

.method public p(Z)V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/kingroot/kinguser/og;->amd()V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-static {}, Lcom/kingroot/kinguser/og;->fr()Lcom/kingroot/kinguser/og;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/og;->amb()V

    .line 98
    :cond_0
    return-void
.end method
