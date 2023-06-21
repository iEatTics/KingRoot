.class Lcom/kingroot/kinguser/axc$14$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axc$14$1;->dt(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXD:Lcom/kingroot/kinguser/axc$14$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axc$14$1;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/kingroot/kinguser/axc$14$1$1;->aXD:Lcom/kingroot/kinguser/axc$14$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 694
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0703a7

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 696
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aho;->aO(Landroid/content/Context;)V

    .line 697
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bS(Z)V

    .line 698
    return-void
.end method
