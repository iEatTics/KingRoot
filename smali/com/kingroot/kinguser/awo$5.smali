.class final Lcom/kingroot/kinguser/awo$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cau;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 277
    const-string v0, "key_s_guid"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {}, Lcom/kingroot/kinguser/zy;->pI()Lcom/kingroot/kinguser/zy;

    move-result-object v0

    const-string v1, "K3"

    invoke-virtual {v0, v1, p2}, Lcom/kingroot/kinguser/zy;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/aks;->aj(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dE(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    const-string v0, "key_s_guid"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-static {}, Lcom/kingroot/kinguser/zy;->pI()Lcom/kingroot/kinguser/zy;

    move-result-object v0

    const-string v1, "K3"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zy;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/aks;->hf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
