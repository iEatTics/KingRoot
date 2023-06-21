.class Lcom/kingroot/kinguser/cff$2$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cff$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic caB:Lcom/kingroot/kinguser/cff$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cff$2;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/kingroot/kinguser/cff$2$4;->caB:Lcom/kingroot/kinguser/cff$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$4;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->o(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$4;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->o(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cer;->eI(Z)V

    .line 599
    :cond_0
    return-void
.end method
