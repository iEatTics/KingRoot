.class public Lcom/kingroot/kinguser/bbk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bbk$a;
    }
.end annotation


# static fields
.field private static bff:I

.field private static bfg:Ljava/lang/String;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bbk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/kingroot/kinguser/bbk$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bbk$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bbk;->sInstance:Lcom/kingroot/kinguser/cce;

    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/kingroot/kinguser/bbk;->bff:I

    .line 51
    const-string v0, "http://mp.kingroot.net/qrcode?desc=%s&sceneType=fp&app=3"

    sput-object v0, Lcom/kingroot/kinguser/bbk;->bfg:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bbk$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/kingroot/kinguser/bbk;-><init>()V

    return-void
.end method

.method public static Wo()Lcom/kingroot/kinguser/bbk;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/kingroot/kinguser/bbk;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bbk;

    return-object v0
.end method

.method public static aK(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 158
    :try_start_0
    sget-object v1, Lcom/kingroot/kinguser/bbk;->bfg:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|100101"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 159
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic bF(I)I
    .locals 0

    .prologue
    .line 26
    sput p0, Lcom/kingroot/kinguser/bbk;->bff:I

    return p0
.end method


# virtual methods
.method public Wp()Z
    .locals 2

    .prologue
    .line 143
    sget v0, Lcom/kingroot/kinguser/bbk;->bff:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Wq()Z
    .locals 2

    .prologue
    .line 152
    sget v0, Lcom/kingroot/kinguser/bbk;->bff:I

    if-eqz v0, :cond_0

    sget v0, Lcom/kingroot/kinguser/bbk;->bff:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bk(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbk;->Wq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/kingroot/kinguser/bbk$a;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/bbk$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbk$a;->ny()Z

    .line 69
    :cond_0
    return-void
.end method

.method public bl(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbk;->Wp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "wechat_qrcode"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    :goto_0
    return-object v0

    .line 83
    :cond_1
    const/4 v1, -0x1

    sput v1, Lcom/kingroot/kinguser/bbk;->bff:I

    goto :goto_0
.end method
