.class Lcom/kingroot/kinguser/atl$1$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 112
    iput-object p1, p0, Lcom/kingroot/kinguser/atl$1$1$3;->aOk:Lcom/kingroot/kinguser/atl$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/atl$1$1$3;->aOk:Lcom/kingroot/kinguser/atl$1$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1$1;->aOj:Lcom/kingroot/kinguser/atl$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/atl$1;->aOh:Lcom/kingroot/kinguser/atl;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 117
    return-void
.end method
