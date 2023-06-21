.class Lcom/kingroot/kinguser/awx$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/awx;->cN(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aVY:Lcom/kingroot/kinguser/awx;

.field final synthetic aWd:Z


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awx;Z)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/kingroot/kinguser/awx$5;->aVY:Lcom/kingroot/kinguser/awx;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/awx$5;->aWd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/kingroot/kinguser/awx$5;->aVY:Lcom/kingroot/kinguser/awx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/awx;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f028c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/kingroot/kinguser/awx$5;->aWd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 236
    return-void

    .line 235
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
