.class Lcom/kingroot/kinguser/axm$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm;->cP(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic baj:Z

.field final synthetic this$0:Lcom/kingroot/kinguser/axm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm;Z)V
    .locals 0

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$15;->this$0:Lcom/kingroot/kinguser/axm;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/axm$15;->baj:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$15;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->z(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/yp;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bet;

    iget-boolean v1, p0, Lcom/kingroot/kinguser/axm$15;->baj:Z

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bet;->dK(Z)V

    .line 1342
    return-void
.end method
