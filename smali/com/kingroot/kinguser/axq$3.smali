.class Lcom/kingroot/kinguser/axq$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbg:Lcom/kingroot/kinguser/axq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axq;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lcom/kingroot/kinguser/axq$3;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 819
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$3;->bbg:Lcom/kingroot/kinguser/axq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 821
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x188b4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 823
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 824
    const-class v2, Lcom/kingroot/kinguser/activitys/MainActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 825
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 826
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 827
    return-void
.end method
