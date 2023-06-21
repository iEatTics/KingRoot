.class Lcom/kingroot/kinguser/ano$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ano;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aCG:Lcom/kingroot/kinguser/ano;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ano;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/kingroot/kinguser/ano$1;->aCG:Lcom/kingroot/kinguser/ano;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/ano$1;->aCG:Lcom/kingroot/kinguser/ano;

    invoke-static {v0}, Lcom/kingroot/kinguser/ano;->b(Lcom/kingroot/kinguser/ano;)Lcom/kingroot/kinguser/anx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->JR()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/akl;->aB(J)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ano$1;->aCG:Lcom/kingroot/kinguser/ano;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ano;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/AppDownloadManagerActivity;->aK(Landroid/content/Context;)V

    .line 49
    return-void
.end method
