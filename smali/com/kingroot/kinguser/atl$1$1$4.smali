.class Lcom/kingroot/kinguser/atl$1$1$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atl$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aOk:Lcom/kingroot/kinguser/atl$1$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atl$1$1;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/kingroot/kinguser/atl$1$1$4;->aOk:Lcom/kingroot/kinguser/atl$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1$4;->aOk:Lcom/kingroot/kinguser/atl$1$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-static {v0}, Lcom/kingroot/kinguser/atl;->d(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bht;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bht;->dismiss()V

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1$4;->aOk:Lcom/kingroot/kinguser/atl$1$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 128
    return-void
.end method
