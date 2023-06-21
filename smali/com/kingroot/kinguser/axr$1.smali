.class Lcom/kingroot/kinguser/axr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bex$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axr;->oO()Lcom/kingroot/kinguser/yp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbr:Lcom/kingroot/kinguser/axr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axr;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/kingroot/kinguser/axr$1;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public UE()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->et(I)V

    .line 96
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->cc(Z)V

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$1;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->b(Lcom/kingroot/kinguser/axr;)Lcom/kingroot/kinguser/auk$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axr$1;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v1}, Lcom/kingroot/kinguser/axr;->a(Lcom/kingroot/kinguser/axr;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auk$a;->cU(Z)V

    .line 98
    return-void
.end method
