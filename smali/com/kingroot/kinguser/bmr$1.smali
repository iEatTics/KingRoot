.class Lcom/kingroot/kinguser/bmr$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bmr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# instance fields
.field private bCs:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bmr$1;->bCs:Ljava/util/Properties;

    .line 72
    invoke-static {}, Lcom/kingroot/kinguser/bmr;->afZ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmr$1;->mk(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bmr$1;->bCs:Ljava/util/Properties;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/kingroot/kinguser/bmr$1;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bmr$1;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/bmr$1;->bCs:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static mk(Ljava/lang/String;)Ljava/util/Properties;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 112
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/kingroot/kinguser/blt$a;->H(Ljava/lang/String;Z)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 113
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->mp(Ljava/lang/String;)[B

    move-result-object v1

    .line 114
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 115
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 116
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-object v0

    .line 117
    :catch_0
    move-exception v1

    goto :goto_0
.end method
