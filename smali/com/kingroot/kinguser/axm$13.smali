.class Lcom/kingroot/kinguser/axm$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bic$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm;->Uw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm;)V
    .locals 0

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$13;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 1231
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/aks;->bm(Z)V

    .line 1233
    invoke-static {}, Lcom/kingroot/kinguser/aij;->xP()V

    .line 1235
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$13;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->i(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/aui$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aui$a;->Qd()V

    .line 1236
    return-void
.end method
