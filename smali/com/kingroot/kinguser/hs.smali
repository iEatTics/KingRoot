.class Lcom/kingroot/kinguser/hs;
.super Lcom/kingroot/kinguser/mg;
.source "SourceFile"


# instance fields
.field final synthetic qP:Lcom/kingroot/kinguser/hb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/hb;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/kingroot/kinguser/hs;->qP:Lcom/kingroot/kinguser/hb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/mg;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 483
    new-instance v0, Lcom/kingroot/kinguser/ht;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ht;-><init>(Lcom/kingroot/kinguser/hs;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ic;->a(Lcom/kingroot/kinguser/ic$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    return-void
.end method
