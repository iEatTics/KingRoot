.class Lcom/kingroot/kinguser/ahd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ahd;->wC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ahd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ahd;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/kingroot/kinguser/ahd$3;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 420
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd$3;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahd;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 421
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->cu(Z)V

    .line 422
    invoke-static {v1}, Lcom/kingroot/kinguser/ags;->aF(Z)V

    .line 423
    return-void
.end method
