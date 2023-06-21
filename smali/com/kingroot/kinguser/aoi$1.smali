.class Lcom/kingroot/kinguser/aoi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aoi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aFF:Lcom/kingroot/kinguser/aoi;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aoi;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/kingroot/kinguser/aoi$1;->aFF:Lcom/kingroot/kinguser/aoi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi$1;->aFF:Lcom/kingroot/kinguser/aoi;

    iget-object v0, v0, Lcom/kingroot/kinguser/aoi;->aEz:Lcom/kingroot/kinguser/aoa;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aoa;->Jz()V

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi$1;->aFF:Lcom/kingroot/kinguser/aoi;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoi;->a(Lcom/kingroot/kinguser/aoi;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi$1;->aFF:Lcom/kingroot/kinguser/aoi;

    iget-object v0, v0, Lcom/kingroot/kinguser/aoi;->aEz:Lcom/kingroot/kinguser/aoa;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aoa;->hC(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi$1;->aFF:Lcom/kingroot/kinguser/aoi;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoi;->a(Lcom/kingroot/kinguser/aoi;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
