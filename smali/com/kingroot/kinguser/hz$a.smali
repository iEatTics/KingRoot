.class public Lcom/kingroot/kinguser/hz$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private rf:Ljava/lang/String;

.field private rg:Ljava/lang/String;

.field private rh:Ljava/lang/String;

.field private ri:Z

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/hz$a;->ri:Z

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ia;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/kingroot/kinguser/hz$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/hz$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/hz$a;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/hz$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/hz$a;->rf:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/hz$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/hz$a;->rg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/hz$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/hz$a;->rh:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/hz$a;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/kingroot/kinguser/hz$a;->ri:Z

    return v0
.end method


# virtual methods
.method public ar(Ljava/lang/String;)Lcom/kingroot/kinguser/hz$a;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/kingroot/kinguser/hz$a;->rg:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public as(Ljava/lang/String;)Lcom/kingroot/kinguser/hz$a;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/kingroot/kinguser/hz$a;->rh:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public at(Ljava/lang/String;)Lcom/kingroot/kinguser/hz$a;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/kingroot/kinguser/hz$a;->url:Ljava/lang/String;

    .line 68
    return-object p0
.end method

.method public au(Ljava/lang/String;)Lcom/kingroot/kinguser/hz$a;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/kingroot/kinguser/hz$a;->rf:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public bs()Lcom/kingroot/kinguser/hz;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/kingroot/kinguser/hz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/hz;-><init>(Lcom/kingroot/kinguser/hz$a;Lcom/kingroot/kinguser/ia;)V

    return-object v0
.end method
