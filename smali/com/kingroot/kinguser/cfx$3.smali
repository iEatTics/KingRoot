.class Lcom/kingroot/kinguser/cfx$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cfx;->a(Lcom/kingroot/kinguser/cfu;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cdV:Lcom/kingroot/kinguser/cfx;

.field final synthetic cdX:Lcom/kingroot/kinguser/cfm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfx;Lcom/kingroot/kinguser/cfm;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/kingroot/kinguser/cfx$3;->cdV:Lcom/kingroot/kinguser/cfx;

    iput-object p2, p0, Lcom/kingroot/kinguser/cfx$3;->cdX:Lcom/kingroot/kinguser/cfm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx$3;->cdX:Lcom/kingroot/kinguser/cfm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/cfm;->ccT:Z

    .line 616
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx$3;->cdX:Lcom/kingroot/kinguser/cfm;

    const-string v1, "tcp connect"

    invoke-static {v1}, Lcom/kingroot/kinguser/cfd;->nT(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/cfm;->ccU:Z

    .line 617
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx$3;->cdX:Lcom/kingroot/kinguser/cfm;

    const-string v1, "true"

    iput-object v1, v0, Lcom/kingroot/kinguser/cfm;->ccQ:Ljava/lang/String;

    .line 620
    const-class v0, Lcom/kingroot/kinguser/cfh;

    invoke-static {v0}, Lcom/kingroot/kinguser/ced;->j(Ljava/lang/Class;)Lcom/kingroot/kinguser/cec;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cfh;

    .line 621
    if-eqz v0, :cond_0

    .line 622
    iget-object v1, p0, Lcom/kingroot/kinguser/cfx$3;->cdX:Lcom/kingroot/kinguser/cfm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfh;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/cfm;->d(Lcom/kingroot/kinguser/ceu;)V

    .line 624
    :cond_0
    return-void
.end method
