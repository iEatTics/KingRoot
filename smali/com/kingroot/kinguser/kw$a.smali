.class Lcom/kingroot/kinguser/kw$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/kw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public ut:I

.field public uu:Ljava/lang/String;

.field public uv:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aU(Ljava/lang/String;)Lcom/kingroot/kinguser/kw$a;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    const-string v2, "\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 39
    new-instance v3, Lcom/kingroot/kinguser/kw$a;

    invoke-direct {v3}, Lcom/kingroot/kinguser/kw$a;-><init>()V

    .line 41
    array-length v4, v2

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    .line 42
    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/kingroot/kinguser/kw$a;->ut:I

    .line 43
    aget-object v4, v2, v0

    iput-object v4, v3, Lcom/kingroot/kinguser/kw$a;->uu:Ljava/lang/String;

    .line 44
    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    iput-boolean v0, v3, Lcom/kingroot/kinguser/kw$a;->uv:Z

    .line 47
    :cond_0
    return-object v3

    :cond_1
    move v0, v1

    .line 44
    goto :goto_0
.end method
