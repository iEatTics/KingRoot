.class public Lcom/kingroot/kinguser/bvt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "WupSessionHelperImpl"

    sput-object v0, Lcom/kingroot/kinguser/bvt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)Lcom/kingroot/kinguser/bvp;
    .locals 3

    .prologue
    .line 34
    invoke-static {p1}, Lcom/kingroot/kinguser/bvr;->kJ(I)Lcom/kingroot/kinguser/bvs;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/kingroot/kinguser/bvp;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bvp;-><init>()V

    .line 36
    iget-object v2, v0, Lcom/kingroot/kinguser/bvs;->bQE:Ljava/lang/String;

    iput-object v2, v1, Lcom/kingroot/kinguser/bvp;->bQE:Ljava/lang/String;

    .line 37
    iget-object v0, v0, Lcom/kingroot/kinguser/bvs;->bQF:Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/kinguser/bvp;->bQF:Ljava/lang/String;

    .line 38
    iput p1, v1, Lcom/kingroot/kinguser/bvp;->bQD:I

    .line 39
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 40
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iput-object v0, v1, Lcom/kingroot/kinguser/bvp;->bQG:Ljava/util/HashMap;

    .line 42
    return-object v1
.end method

.method public a(Lcom/qq/jce/wup/UniPacket;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    if-nez p2, :cond_0

    .line 21
    const-string p2, ""

    .line 25
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    .line 27
    :catch_0
    move-exception v0

    .line 30
    const/4 v0, 0x0

    goto :goto_0
.end method
