.class Lcom/kingroot/kinguser/bew$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bew;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blJ:Lcom/kingroot/kinguser/bew;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bew;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/kingroot/kinguser/bew$1;->blJ:Lcom/kingroot/kinguser/bew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x186c4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/kingroot/kinguser/bew$1;->blJ:Lcom/kingroot/kinguser/bew;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bew;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/activitys/LogActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 41
    iget-object v1, p0, Lcom/kingroot/kinguser/bew$1;->blJ:Lcom/kingroot/kinguser/bew;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bew;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method
